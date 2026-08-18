local ADDON_NAME = ...

local hookedMovers = setmetatable({}, { __mode = "k" })

local function GetEngine()
    local elvUI = _G.ElvUI
    return elvUI and elvUI[1]
end

local function GetProfileName(engine)
    if engine and engine.data and engine.data.GetCurrentProfile then
        local profileName = engine.data:GetCurrentProfile()
        if profileName and profileName ~= "" then
            return profileName
        end
    end
    return "Default"
end

local function GetProfileDatabase(engine)
    local root = _G.LafeeElvUIFrameGroupDB
    if type(root) ~= "table" or type(root.profiles) ~= "table" then
        return nil
    end

    local profile = root.profiles[GetProfileName(engine)]
    if type(profile) ~= "table" then
        return nil
    end

    profile.groups = type(profile.groups) == "table" and profile.groups or {}
    profile.positions = type(profile.positions) == "table" and profile.positions or {}
    return profile
end

local function FindGroupForMover(profile, moverName)
    if not profile or not moverName then
        return nil
    end

    for _, group in pairs(profile.groups or {}) do
        if type(group) == "table" and type(group.movers) == "table" and group.movers[moverName] then
            return group
        end
    end
end

local function GetMoverEntry(engine, moverName)
    if not engine or type(engine.CreatedMovers) ~= "table" then
        return nil, nil
    end

    local holder = engine.CreatedMovers[moverName]
    if type(holder) == "table" and holder.mover then
        return moverName, holder
    end

    local globalMover = _G[moverName]
    for key, candidate in pairs(engine.CreatedMovers) do
        if type(candidate) == "table" and candidate.mover then
            local mover = candidate.mover
            if mover == globalMover or mover.LafeeFrameGroupName == moverName then
                return key, candidate
            end
        end
    end
end

local function SaveMoverToElvUI(engine, moverName)
    if not engine or type(engine.SaveMoverPosition) ~= "function" then
        return false
    end

    local key, holder = GetMoverEntry(engine, moverName)
    if not key or not holder or not holder.mover then
        return false
    end

    return pcall(engine.SaveMoverPosition, engine, key) == true
end

local function PersistGroup(group)
    if not group or type(group.movers) ~= "table" then
        return
    end
    if InCombatLockdown and InCombatLockdown() then
        return
    end

    local engine = GetEngine()
    local profile = GetProfileDatabase(engine)
    if not engine or not profile then
        return
    end

    for moverName in pairs(group.movers) do
        local _, holder = GetMoverEntry(engine, moverName)
        local mover = holder and holder.mover or _G[moverName]
        if mover and mover.GetLeft and mover.GetBottom then
            local left, bottom = mover:GetLeft(), mover:GetBottom()
            if left and bottom then
                profile.positions[moverName] = { left = left, bottom = bottom }
                SaveMoverToElvUI(engine, moverName)
            end
        end
    end
end

local function PersistGroupForMover(mover)
    if not mover then
        return
    end

    local moverName = mover.LafeeFrameGroupName or (mover.GetName and mover:GetName())
    if not moverName then
        return
    end

    -- Lafee Frame Group finishes moving the linked members in its own
    -- OnDragStop hook. Defer persistence by one frame so every member has its
    -- final coordinates before ElvUI serializes the group.
    C_Timer.After(0, function()
        local engine = GetEngine()
        local profile = GetProfileDatabase(engine)
        local group = FindGroupForMover(profile, moverName)
        if group then
            PersistGroup(group)
        end
    end)
end

local function HookMover(mover)
    if not mover or hookedMovers[mover] or type(mover.HookScript) ~= "function" then
        return
    end

    hookedMovers[mover] = true
    mover:HookScript("OnDragStop", PersistGroupForMover)
end

local function HookAllMovers()
    local engine = GetEngine()
    if not engine or type(engine.CreatedMovers) ~= "table" then
        return
    end

    for _, holder in pairs(engine.CreatedMovers) do
        if type(holder) == "table" and holder.mover then
            HookMover(holder.mover)
        end
    end
end

local function QueueHookAllMovers()
    C_Timer.After(0, HookAllMovers)
end

local function InstallHooks()
    local engine = GetEngine()
    if not engine then
        return
    end

    HookAllMovers()

    if type(engine.CreateMover) == "function" and not engine.LafeeFrameGroupPersistenceCreateMoverHook then
        hooksecurefunc(engine, "CreateMover", QueueHookAllMovers)
        engine.LafeeFrameGroupPersistenceCreateMoverHook = true
    end

    if type(engine.ToggleMoveMode) == "function" and not engine.LafeeFrameGroupPersistenceMoveModeHook then
        hooksecurefunc(engine, "ToggleMoveMode", QueueHookAllMovers)
        engine.LafeeFrameGroupPersistenceMoveModeHook = true
    end

    if type(engine.ToggleMovers) == "function" and not engine.LafeeFrameGroupPersistenceMoversHook then
        hooksecurefunc(engine, "ToggleMovers", QueueHookAllMovers)
        engine.LafeeFrameGroupPersistenceMoversHook = true
    end
end

local events = CreateFrame("Frame")
events:RegisterEvent("PLAYER_LOGIN")
events:RegisterEvent("PLAYER_ENTERING_WORLD")
events:SetScript("OnEvent", function()
    InstallHooks()
    QueueHookAllMovers()
end)

InstallHooks()
QueueHookAllMovers()
