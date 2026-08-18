local locale = GetLocale and GetLocale() or "enUS"

local strings = {
    enUS = {
        GROUP_PREFIX="Group ", GROUP_SELECTED="%s selected (%d frames).", FRAME_ADDED="Frame added to “%s”.", FRAME_REMOVED="Frame removed from “%s”.",
        PANEL_TITLE="ElvUI Frame Groups", PROFILE_ACTIVE="Active ElvUI profile", ACTIVE_GROUP="Active group", CHOOSE_GROUP="Choose a group", NEW="New", NAME="Name", SAVE="Save", DELETE="Delete",
        HELP_TITLE="Commands and shortcuts", HELP_TEXT="/moveui: open or close this mode\nDropdown: choose the active group\nShift-left-click: add a frame or select its group\nShift-right-click: remove a frame from the group\nDrag a red frame: move its entire group\n/lfg new: create a group  •  /lfg clear: delete the active group\nEscape: close the panel  •  Drag the header: move the panel",
        PROFILE_LABEL="ElvUI profile: %s", LINKED_FRAMES="%d linked frame(s)", CREATE_OR_SELECT="Create or select a group.",
        MINIMAP_OPEN="Left-click: open / close ElvUI movers and this panel.", MINIMAP_DRAG="Drag: move this button.",
        NEW_GROUP_CREATED="New group created: name it, then add frames with Shift-left-click.", ACTIVE_GROUP_DELETED="Active group deleted.", NO_ACTIVE_GROUP="No active group to delete.",
        SLASH_HELP="/moveui opens ElvUI movers. Shift-left-click adds or selects a group; Shift-right-click removes a frame. /lfg new prepares another group.",
    },
    frFR = {
        GROUP_PREFIX="Groupe ", GROUP_SELECTED="%s sélectionné (%d cadres).", FRAME_ADDED="Cadre ajouté à « %s ».", FRAME_REMOVED="Cadre retiré de « %s ».",
        PANEL_TITLE="Groupes de cadres ElvUI", PROFILE_ACTIVE="Profil ElvUI actif", ACTIVE_GROUP="Groupe actif", CHOOSE_GROUP="Choisir un groupe", NEW="Nouveau", NAME="Nom", SAVE="Valider", DELETE="Supprimer",
        HELP_TITLE="Commandes et raccourcis", HELP_TEXT="/moveui : ouvre ou ferme ce mode\nListe déroulante : choisir le groupe actif\nMaj-clic gauche : ajoute un cadre ou sélectionne son groupe\nMaj-clic droit : retire un cadre du groupe\nGlisser un cadre rouge : déplace tout son groupe\n/lfg new : crée un groupe  •  /lfg clear : supprime le groupe actif\nÉchap : ferme le panneau  •  Glisser l’en-tête : déplace le panneau",
        PROFILE_LABEL="Profil ElvUI : %s", LINKED_FRAMES="%d cadre(s) lié(s)", CREATE_OR_SELECT="Créez ou sélectionnez un groupe.",
        MINIMAP_OPEN="Clic gauche : ouvrir / fermer les cadres de déplacement et le panneau.", MINIMAP_DRAG="Glisser : déplacer ce bouton.",
        NEW_GROUP_CREATED="Nouveau groupe créé : nommez-le puis ajoutez ses cadres avec Maj-clic gauche.", ACTIVE_GROUP_DELETED="Groupe actif supprimé.", NO_ACTIVE_GROUP="Aucun groupe actif à supprimer.",
        SLASH_HELP="/moveui : ouvre les cadres de déplacement ElvUI. Maj-clic gauche ajoute ou sélectionne un groupe ; Maj-clic droit retire un cadre. /lfg new : prépare un autre groupe.",
    },
    deDE = {
        GROUP_PREFIX="Gruppe ", GROUP_SELECTED="%s ausgewählt (%d Fenster).", FRAME_ADDED="Fenster zu „%s“ hinzugefügt.", FRAME_REMOVED="Fenster aus „%s“ entfernt.",
        PANEL_TITLE="ElvUI-Fenstergruppen", PROFILE_ACTIVE="Aktives ElvUI-Profil", ACTIVE_GROUP="Aktive Gruppe", CHOOSE_GROUP="Gruppe auswählen", NEW="Neu", NAME="Name", SAVE="Speichern", DELETE="Löschen",
        HELP_TITLE="Befehle und Tastenkürzel", HELP_TEXT="/moveui: diesen Modus öffnen oder schließen\nAuswahlliste: aktive Gruppe wählen\nUmschalt-Linksklick: Fenster hinzufügen oder Gruppe auswählen\nUmschalt-Rechtsklick: Fenster aus der Gruppe entfernen\nRotes Fenster ziehen: gesamte Gruppe verschieben\n/lfg new: Gruppe erstellen  •  /lfg clear: aktive Gruppe löschen\nEscape: Fenster schließen  •  Kopfzeile ziehen: Fenster verschieben",
        PROFILE_LABEL="ElvUI-Profil: %s", LINKED_FRAMES="%d verknüpfte Fenster", CREATE_OR_SELECT="Erstelle oder wähle eine Gruppe.",
        MINIMAP_OPEN="Linksklick: ElvUI-Verschiebemodus und dieses Fenster öffnen/schließen.", MINIMAP_DRAG="Ziehen: Schaltfläche verschieben.",
        NEW_GROUP_CREATED="Neue Gruppe erstellt: benenne sie und füge mit Umschalt-Linksklick Fenster hinzu.", ACTIVE_GROUP_DELETED="Aktive Gruppe gelöscht.", NO_ACTIVE_GROUP="Keine aktive Gruppe zum Löschen.",
        SLASH_HELP="/moveui öffnet den ElvUI-Verschiebemodus. Umschalt-Linksklick fügt hinzu oder wählt eine Gruppe; Umschalt-Rechtsklick entfernt ein Fenster. /lfg new erstellt eine weitere Gruppe.",
    },
    esES = {
        GROUP_PREFIX="Grupo ", GROUP_SELECTED="%s seleccionado (%d marcos).", FRAME_ADDED="Marco añadido a «%s».", FRAME_REMOVED="Marco eliminado de «%s».",
        PANEL_TITLE="Grupos de marcos de ElvUI", PROFILE_ACTIVE="Perfil de ElvUI activo", ACTIVE_GROUP="Grupo activo", CHOOSE_GROUP="Elegir un grupo", NEW="Nuevo", NAME="Nombre", SAVE="Guardar", DELETE="Eliminar",
        HELP_TITLE="Comandos y atajos", HELP_TEXT="/moveui: abre o cierra este modo\nLista desplegable: elige el grupo activo\nMayús-clic izquierdo: añade un marco o selecciona su grupo\nMayús-clic derecho: elimina un marco del grupo\nArrastrar un marco rojo: mueve todo el grupo\n/lfg new: crea un grupo  •  /lfg clear: elimina el grupo activo\nEscape: cierra el panel  •  Arrastrar el encabezado: mueve el panel",
        PROFILE_LABEL="Perfil de ElvUI: %s", LINKED_FRAMES="%d marco(s) vinculados", CREATE_OR_SELECT="Crea o selecciona un grupo.",
        MINIMAP_OPEN="Clic izquierdo: abrir/cerrar los marcos móviles de ElvUI y este panel.", MINIMAP_DRAG="Arrastrar: mover este botón.",
        NEW_GROUP_CREATED="Nuevo grupo creado: ponle un nombre y añade marcos con Mayús-clic izquierdo.", ACTIVE_GROUP_DELETED="Grupo activo eliminado.", NO_ACTIVE_GROUP="No hay ningún grupo activo que eliminar.",
        SLASH_HELP="/moveui abre los marcos móviles de ElvUI. Mayús-clic izquierdo añade o selecciona un grupo; Mayús-clic derecho elimina un marco. /lfg new prepara otro grupo.",
    },
    itIT = {
        GROUP_PREFIX="Gruppo ", GROUP_SELECTED="%s selezionato (%d riquadri).", FRAME_ADDED="Riquadro aggiunto a «%s».", FRAME_REMOVED="Riquadro rimosso da «%s».",
        PANEL_TITLE="Gruppi di riquadri ElvUI", PROFILE_ACTIVE="Profilo ElvUI attivo", ACTIVE_GROUP="Gruppo attivo", CHOOSE_GROUP="Scegli un gruppo", NEW="Nuovo", NAME="Nome", SAVE="Salva", DELETE="Elimina",
        HELP_TITLE="Comandi e scorciatoie", HELP_TEXT="/moveui: apre o chiude questa modalità\nMenu a discesa: scegli il gruppo attivo\nMaiusc-clic sinistro: aggiungi un riquadro o seleziona il suo gruppo\nMaiusc-clic destro: rimuovi un riquadro dal gruppo\nTrascina un riquadro rosso: sposta tutto il gruppo\n/lfg new: crea un gruppo  •  /lfg clear: elimina il gruppo attivo\nEsc: chiudi il pannello  •  Trascina l’intestazione: sposta il pannello",
        PROFILE_LABEL="Profilo ElvUI: %s", LINKED_FRAMES="%d riquadri collegati", CREATE_OR_SELECT="Crea o seleziona un gruppo.",
        MINIMAP_OPEN="Clic sinistro: apri/chiudi i mover ElvUI e questo pannello.", MINIMAP_DRAG="Trascina: sposta questo pulsante.",
        NEW_GROUP_CREATED="Nuovo gruppo creato: dagli un nome e aggiungi riquadri con Maiusc-clic sinistro.", ACTIVE_GROUP_DELETED="Gruppo attivo eliminato.", NO_ACTIVE_GROUP="Nessun gruppo attivo da eliminare.",
        SLASH_HELP="/moveui apre i mover ElvUI. Maiusc-clic sinistro aggiunge o seleziona un gruppo; Maiusc-clic destro rimuove un riquadro. /lfg new prepara un altro gruppo.",
    },
    ptBR = {
        GROUP_PREFIX="Grupo ", GROUP_SELECTED="%s selecionado (%d quadros).", FRAME_ADDED="Quadro adicionado a “%s”.", FRAME_REMOVED="Quadro removido de “%s”.",
        PANEL_TITLE="Grupos de quadros do ElvUI", PROFILE_ACTIVE="Perfil ativo do ElvUI", ACTIVE_GROUP="Grupo ativo", CHOOSE_GROUP="Escolher um grupo", NEW="Novo", NAME="Nome", SAVE="Salvar", DELETE="Excluir",
        HELP_TITLE="Comandos e atalhos", HELP_TEXT="/moveui: abre ou fecha este modo\nLista: escolha o grupo ativo\nShift-clique esquerdo: adiciona um quadro ou seleciona seu grupo\nShift-clique direito: remove um quadro do grupo\nArraste um quadro vermelho: move o grupo inteiro\n/lfg new: cria um grupo  •  /lfg clear: exclui o grupo ativo\nEsc: fecha o painel  •  Arraste o cabeçalho: move o painel",
        PROFILE_LABEL="Perfil do ElvUI: %s", LINKED_FRAMES="%d quadro(s) vinculados", CREATE_OR_SELECT="Crie ou selecione um grupo.",
        MINIMAP_OPEN="Clique esquerdo: abrir/fechar os movers do ElvUI e este painel.", MINIMAP_DRAG="Arrastar: mover este botão.",
        NEW_GROUP_CREATED="Novo grupo criado: dê um nome e adicione quadros com Shift-clique esquerdo.", ACTIVE_GROUP_DELETED="Grupo ativo excluído.", NO_ACTIVE_GROUP="Nenhum grupo ativo para excluir.",
        SLASH_HELP="/moveui abre os movers do ElvUI. Shift-clique esquerdo adiciona ou seleciona um grupo; Shift-clique direito remove um quadro. /lfg new prepara outro grupo.",
    },
    ruRU = {
        GROUP_PREFIX="Группа ", GROUP_SELECTED="Выбрана %s (%d рамок).", FRAME_ADDED="Рамка добавлена в «%s».", FRAME_REMOVED="Рамка удалена из «%s».",
        PANEL_TITLE="Группы рамок ElvUI", PROFILE_ACTIVE="Активный профиль ElvUI", ACTIVE_GROUP="Активная группа", CHOOSE_GROUP="Выберите группу", NEW="Создать", NAME="Название", SAVE="Сохранить", DELETE="Удалить",
        HELP_TITLE="Команды и сочетания клавиш", HELP_TEXT="/moveui: открыть или закрыть этот режим\nСписок: выбрать активную группу\nShift+ЛКМ: добавить рамку или выбрать её группу\nShift+ПКМ: удалить рамку из группы\nПеретащить красную рамку: переместить всю группу\n/lfg new: создать группу  •  /lfg clear: удалить активную группу\nEsc: закрыть панель  •  Перетащить заголовок: переместить панель",
        PROFILE_LABEL="Профиль ElvUI: %s", LINKED_FRAMES="Связанных рамок: %d", CREATE_OR_SELECT="Создайте или выберите группу.",
        MINIMAP_OPEN="ЛКМ: открыть/закрыть режим перемещения ElvUI и эту панель.", MINIMAP_DRAG="Перетащить: переместить кнопку.",
        NEW_GROUP_CREATED="Новая группа создана: задайте имя и добавьте рамки с Shift+ЛКМ.", ACTIVE_GROUP_DELETED="Активная группа удалена.", NO_ACTIVE_GROUP="Нет активной группы для удаления.",
        SLASH_HELP="/moveui открывает режим перемещения ElvUI. Shift+ЛКМ добавляет или выбирает группу; Shift+ПКМ удаляет рамку. /lfg new создаёт ещё одну группу.",
    },
    koKR = {
        GROUP_PREFIX="그룹 ", GROUP_SELECTED="%s 선택됨 (%d개 프레임).", FRAME_ADDED="“%s”에 프레임을 추가했습니다.", FRAME_REMOVED="“%s”에서 프레임을 제거했습니다.",
        PANEL_TITLE="ElvUI 프레임 그룹", PROFILE_ACTIVE="활성 ElvUI 프로필", ACTIVE_GROUP="활성 그룹", CHOOSE_GROUP="그룹 선택", NEW="새로 만들기", NAME="이름", SAVE="저장", DELETE="삭제",
        HELP_TITLE="명령어 및 단축키", HELP_TEXT="/moveui: 이 모드를 열거나 닫습니다\n드롭다운: 활성 그룹 선택\nShift+왼쪽 클릭: 프레임 추가 또는 그룹 선택\nShift+오른쪽 클릭: 그룹에서 프레임 제거\n빨간 프레임 드래그: 그룹 전체 이동\n/lfg new: 그룹 생성  •  /lfg clear: 활성 그룹 삭제\nEsc: 패널 닫기  •  헤더 드래그: 패널 이동",
        PROFILE_LABEL="ElvUI 프로필: %s", LINKED_FRAMES="연결된 프레임 %d개", CREATE_OR_SELECT="그룹을 만들거나 선택하세요.",
        MINIMAP_OPEN="왼쪽 클릭: ElvUI 이동 모드와 이 패널 열기/닫기.", MINIMAP_DRAG="드래그: 버튼 이동.",
        NEW_GROUP_CREATED="새 그룹을 만들었습니다. 이름을 지정한 뒤 Shift+왼쪽 클릭으로 프레임을 추가하세요.", ACTIVE_GROUP_DELETED="활성 그룹을 삭제했습니다.", NO_ACTIVE_GROUP="삭제할 활성 그룹이 없습니다.",
        SLASH_HELP="/moveui로 ElvUI 이동 모드를 엽니다. Shift+왼쪽 클릭으로 그룹을 추가/선택하고 Shift+오른쪽 클릭으로 프레임을 제거합니다. /lfg new로 새 그룹을 만듭니다.",
    },
    zhCN = {
        GROUP_PREFIX="分组 ", GROUP_SELECTED="已选择%s（%d 个框体）。", FRAME_ADDED="已将框体加入“%s”。", FRAME_REMOVED="已从“%s”移除框体。",
        PANEL_TITLE="ElvUI 框体分组", PROFILE_ACTIVE="当前 ElvUI 配置", ACTIVE_GROUP="当前分组", CHOOSE_GROUP="选择分组", NEW="新建", NAME="名称", SAVE="保存", DELETE="删除",
        HELP_TITLE="命令和快捷键", HELP_TEXT="/moveui：打开或关闭此模式\n下拉列表：选择当前分组\nShift+左键：添加框体或选择其分组\nShift+右键：从分组移除框体\n拖动红色框体：移动整个分组\n/lfg new：新建分组  •  /lfg clear：删除当前分组\nEsc：关闭面板  •  拖动标题：移动面板",
        PROFILE_LABEL="ElvUI 配置：%s", LINKED_FRAMES="已连接 %d 个框体", CREATE_OR_SELECT="新建或选择一个分组。",
        MINIMAP_OPEN="左键：打开/关闭 ElvUI 移动模式和此面板。", MINIMAP_DRAG="拖动：移动此按钮。",
        NEW_GROUP_CREATED="已新建分组：命名后使用 Shift+左键添加框体。", ACTIVE_GROUP_DELETED="当前分组已删除。", NO_ACTIVE_GROUP="没有可删除的当前分组。",
        SLASH_HELP="/moveui 打开 ElvUI 移动模式。Shift+左键添加或选择分组；Shift+右键移除框体。/lfg new 新建另一个分组。",
    },
    zhTW = {
        GROUP_PREFIX="群組 ", GROUP_SELECTED="已選擇%s（%d 個框架）。", FRAME_ADDED="已將框架加入「%s」。", FRAME_REMOVED="已從「%s」移除框架。",
        PANEL_TITLE="ElvUI 框架群組", PROFILE_ACTIVE="目前 ElvUI 設定檔", ACTIVE_GROUP="目前群組", CHOOSE_GROUP="選擇群組", NEW="新增", NAME="名稱", SAVE="儲存", DELETE="刪除",
        HELP_TITLE="指令與快捷鍵", HELP_TEXT="/moveui：開啟或關閉此模式\n下拉選單：選擇目前群組\nShift+左鍵：加入框架或選擇其群組\nShift+右鍵：從群組移除框架\n拖曳紅色框架：移動整個群組\n/lfg new：新增群組  •  /lfg clear：刪除目前群組\nEsc：關閉面板  •  拖曳標題：移動面板",
        PROFILE_LABEL="ElvUI 設定檔：%s", LINKED_FRAMES="已連結 %d 個框架", CREATE_OR_SELECT="新增或選擇一個群組。",
        MINIMAP_OPEN="左鍵：開啟/關閉 ElvUI 移動模式與此面板。", MINIMAP_DRAG="拖曳：移動此按鈕。",
        NEW_GROUP_CREATED="已新增群組：命名後使用 Shift+左鍵加入框架。", ACTIVE_GROUP_DELETED="目前群組已刪除。", NO_ACTIVE_GROUP="沒有可刪除的目前群組。",
        SLASH_HELP="/moveui 開啟 ElvUI 移動模式。Shift+左鍵加入或選擇群組；Shift+右鍵移除框架。/lfg new 新增另一個群組。",
    },
}

strings.esMX = strings.esES
strings.enGB = strings.enUS

local fallback = strings.enUS
local selected = strings[locale] or fallback
local L = {}
for key, value in pairs(fallback) do L[key] = value end
for key, value in pairs(selected) do L[key] = value end

_G.LafeeElvUIFrameGroupLocale = L
