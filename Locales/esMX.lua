-- Spanish (Latin America) localization for sArena Updated 2 by sammers
-- sArena Updated 2 by sammers Localización Española (Latinoamérica)

local locale = GetLocale()
if locale ~= "esMX" then return end

local L = sArenaMixin.L

---------------------------------------
-- Common Terms
---------------------------------------

L["Yes"] = "Sí"
L["No"] = "No"
L["Enable"] = "Activar"
L["Disable"] = "Desactivar"
L["Reset"] = "Reiniciar"
L["Scale"] = "Escala"
L["Size"] = "Tamaño"
L["Width"] = "Ancho"
L["Height"] = "Alto"
L["Horizontal"] = "Horizontal"
L["Vertical"] = "Vertical"
L["Spacing"] = "Espaciado"
L["Positioning"] = "Posicionamiento"
L["Sizing"] = "Dimensionamiento"
L["Options"] = "Opciones"
L["BorderSize"] = "Tamaño del borde"
L["GrowthDirection"] = "Dirección de crecimiento"
L["AnchorPoint"] = "Punto de anclaje"

---------------------------------------
-- Directions
---------------------------------------

L["Direction_Down"] = "Abajo"
L["Direction_Up"] = "Arriba"
L["Direction_Right"] = "Derecha"
L["Direction_Left"] = "Izquierda"
L["Direction_Center"] = "Centro"
L["Direction_TopLeft"] = "Arriba Izq"
L["Direction_Top"] = "Arriba"
L["Direction_TopRight"] = "Arriba Der"
L["Direction_BottomLeft"] = "Abajo Izq"
L["Direction_Bottom"] = "Abajo"
L["Direction_BottomRight"] = "Abajo Der"

---------------------------------------
-- Font Outlines
---------------------------------------

L["Outline_None"] = "Sin contorno"
L["Outline_Normal"] = "Contorno"
L["Outline_Thick"] = "Contorno grueso"

---------------------------------------
-- Messages
---------------------------------------

L["Message_MustLeaveCombat"] = "Primero debes salir de combate."

---------------------------------------
-- Diminishing Returns Categories
---------------------------------------

L["DR_Stun"] = "Aturdimiento"
L["DR_Incapacitate"] = "Incapacitar"
L["DR_Disorient"] = "Desorientar"
L["DR_Silence"] = "Silencio"
L["DR_Root"] = "Raíz"
L["DR_Knock"] = "Empuje"
L["DR_Disarm"] = "Desarmar"
L["DR_Fear"] = "Miedo"
L["DR_Horror"] = "Horror"
L["DR_Cyclone"] = "Ciclón"
L["DR_MindControl"] = "Control mental"
L["DR_RandomStun"] = "Aturdimiento aleatorio"
L["DR_RandomRoot"] = "Raíz aleatoria"
L["DR_Charge"] = "Cargar"

---------------------------------------
-- Race Names
---------------------------------------

L["Race_Human"] = "Humano"
L["Race_Scourge"] = "No-muerto"
L["Race_Dwarf"] = "Enano"
L["Race_NightElf"] = "Elfo de la noche"
L["Race_Gnome"] = "Gnomo"
L["Race_Draenei"] = "Draenei"
L["Race_Worgen"] = "Huargen"
L["Race_Pandaren"] = "Pandaren"
L["Race_Orc"] = "Orco"
L["Race_Tauren"] = "Tauren"
L["Race_Troll"] = "Trol"
L["Race_BloodElf"] = "Elfo de sangre"
L["Race_Goblin"] = "Goblin"
L["Race_LightforgedDraenei"] = "Draenei forjado por la Luz"
L["Race_HighmountainTauren"] = "Tauren Monte Alto"
L["Race_Nightborne"] = "Nocheterna"
L["Race_MagharOrc"] = "Orco Mag'har"
L["Race_DarkIronDwarf"] = "Enano Hierro Negro"
L["Race_ZandalariTroll"] = "Trol Zandalari"
L["Race_VoidElf"] = "Elfo del Vacío"
L["Race_KulTiran"] = "Ciudadano de Kul Tiras"
L["Race_Mechagnome"] = "Mecagnomo"
L["Race_Vulpera"] = "Vulpera"
L["Race_Dracthyr"] = "Dracthyr"
L["Race_EarthenDwarf"] = "Terráneo"
L["Race_Harronir"] = "Haranir"

-- esMX uses same translations as esES for the rest
-- Falls back to esES/English if not translated

