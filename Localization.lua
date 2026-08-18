local locale = GetLocale and GetLocale() or "enUS"

local strings = {
    enUS = {
        GROUP_PREFIX = "Group ",
        GROUP_SELECTED = "%s selected (%d frames).",
        FRAME_ADDED = "Frame added to “%s”.",
        FRAME_REMOVED = "Frame removed from “%s”.",
        PANEL_TITLE = "ElvUI Frame Groups",
        PROFILE_ACTIVE = "Active ElvUI profile",
        ACTIVE_GROUP = "Active group",
        CHOOSE_GROUP = "Choose a group",
        NEW = "New",
        NAME = "Name",
        SAVE = "Save",
        DELETE = "Delete",
        HELP_TITLE = "Commands and shortcuts",
        HELP_TEXT = "/moveui: open or close this mode\nDropdown: choose the active group\nShift-left-click: add a frame or select its group\nShift-right-click: remove a frame from the group\nDrag a red frame: move its entire group\n/lfg new: create a group  •  /lfg clear: delete the active group\nEscape: close the panel  •  Drag the header: move the panel",
        PROFILE_LABEL = "ElvUI profile: %s",
        LINKED_FRAMES = "%d linked frame(s)",
        CREATE_OR_SELECT = "Create or select a group.",
        MINIMAP_OPEN = "Left-click: open / close ElvUI movers and this panel.",
        MINIMAP_DRAG = "Drag: move this button.",
        NEW_GROUP_CREATED = "New group created: name it, then add frames with Shift-left-click.",
        ACTIVE_GROUP_DELETED = "Active group deleted.",
        NO_ACTIVE_GROUP = "No active group to delete.",
        SLASH_HELP = "/moveui opens ElvUI movers. Shift-left-click adds or selects a group; Shift-right-click removes a frame. /lfg new prepares another group.",
    },
    frFR = {
        GROUP_PREFIX = "Groupe ",
        GROUP_SELECTED = "%s sélectionné (%d cadres).",
        FRAME_ADDED = "Cadre ajouté à « %s ».",
        FRAME_REMOVED = "Cadre retiré de « %s ».",
        PANEL_TITLE = "Groupes de cadres ElvUI",
        PROFILE_ACTIVE = "Profil ElvUI actif",
        ACTIVE_GROUP = "Groupe actif",
        CHOOSE_GROUP = "Choisir un groupe",
        NEW = "Nouveau",
        NAME = "Nom",
        SAVE = "Valider",
        DELETE = "Supprimer",
        HELP_TITLE = "Commandes et raccourcis",
        HELP_TEXT = "/moveui : ouvre ou ferme ce mode\nListe déroulante : choisir le groupe actif\nMaj-clic gauche : ajoute un cadre ou sélectionne son groupe\nMaj-clic droit : retire un cadre du groupe\nGlisser un cadre rouge : déplace tout son groupe\n/lfg new : crée un groupe  •  /lfg clear : supprime le groupe actif\nÉchap : ferme le panneau  •  Glisser l’en-tête : déplace le panneau",
        PROFILE_LABEL = "Profil ElvUI : %s",
        LINKED_FRAMES = "%d cadre(s) lié(s)",
        CREATE_OR_SELECT = "Créez ou sélectionnez un groupe.",
        MINIMAP_OPEN = "Clic gauche : ouvrir / fermer les movers et le panneau.",
        MINIMAP_DRAG = "Glisser : déplacer ce bouton.",
        NEW_GROUP_CREATED = "Nouveau groupe créé : nommez-le puis ajoutez ses cadres avec Maj-clic gauche.",
        ACTIVE_GROUP_DELETED = "Groupe actif supprimé.",
        NO_ACTIVE_GROUP = "Aucun groupe actif à supprimer.",
        SLASH_HELP = "/moveui : ouvre les movers ElvUI. Maj-clic gauche ajoute ou sélectionne un groupe ; Maj-clic droit retire un cadre. /lfg new : prépare un autre groupe.",
    },
}

local fallback = strings.enUS
local selected = strings[locale] or fallback
local L = {}
for key, value in pairs(fallback) do L[key] = value end
for key, value in pairs(selected) do L[key] = value end

_G.LafeeElvUIFrameGroupLocale = L
