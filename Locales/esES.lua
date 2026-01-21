-- Spanish (Europe) localization for sArena Updated 2 by sammers
-- sArena Updated 2 by sammers Localización Española

local locale = GetLocale()
if locale ~= "esES" then return end

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

---------------------------------------
-- Main Categories
---------------------------------------

L["Category_ArenaFrames"] = "Marcos de arena"
L["Category_SpecIcons"] = "Iconos de especialización"
L["Category_Trinkets"] = "Abalorios"
L["Category_Racials"] = "Habilidades raciales"
L["Category_Dispels"] = "Disipaciones"
L["Category_CastBars"] = "Barras de lanzamiento"
L["Category_DiminishingReturns"] = "Rendimientos decrecientes"
L["Category_Widgets"] = "Widgets"
L["Category_TextSettings"] = "Configuración de texto"
L["Category_ClassIcon"] = "Icono de clase"

---------------------------------------
-- Textures
---------------------------------------

L["Textures"] = "Texturas"
L["Texture_General"] = "Textura general"
L["Texture_General_Desc"] = "Consejo: Si has reemplazado las texturas predeterminadas de WoW con las tuyas, selecciona \"Blizzard Raid Bar\"."
L["Texture_Healer"] = "Textura de sanador"
L["Texture_Healer_Desc"] = "Consejo: Solo activo cuando hay apilamiento de clases. Desmarca \"Solo apilamiento de clases\" si quieres que siempre cambie la textura."
L["Texture_ClassStackingOnly"] = "Solo apilamiento de clases"
L["Texture_ClassStackingOnly_Desc"] = "Solo cambiar la textura del sanador cuando hay apilamiento de clases.\n\nPor ejemplo cuando hay un druida Restauración y un Feral en el equipo enemigo."
L["Texture_Background"] = "Textura de fondo"
L["Texture_Background_Desc"] = "Textura para las bases de las barras de salud/energía."
L["Texture_BackgroundColor"] = "Color de fondo"
L["Texture_BackgroundColor_Desc"] = "Color para las bases de las barras de salud/energía."

---------------------------------------
-- Arena Frames Options
---------------------------------------

L["Option_ReplaceClassIcon"] = "Reemplazar icono de clase"
L["Option_ReplaceClassIcon_Desc"] = "Reemplazar el icono de clase con el de especialización y ocultar el pequeño \"botón de icono de spec\""
L["Option_GrowthDirection"] = "Dirección de crecimiento"
L["Option_SpacingBetweenFrames"] = "Espaciado entre marcos de arena"
L["Option_SpacingBetweenFrames_Desc"] = "Espaciado entre cada marco de arena"
L["Option_ClassIconCDFontSize"] = "Tamaño de fuente CD icono de clase"
L["Option_ClassIconCDFontSize_Desc"] = "Solo funciona con cuenta regresiva de Blizzard (no OmniCC)"
L["Option_FontSize"] = "Tamaño de fuente"
L["Option_FontSize_Desc"] = "Solo funciona con cuenta regresiva de Blizzard (no OmniCC)"
L["Option_MirroredFrames"] = "Marcos espejados"
L["Option_PowerBarHeight"] = "Altura de barra de energía"
L["Option_SpecTextOnManabar"] = "Texto de spec en barra de maná"
L["Option_CropIcons"] = "Recortar iconos"
L["Option_PixelBorderSize"] = "Tamaño de borde píxel"
L["Option_PixelBorderOffset"] = "Desplazamiento de borde píxel"
L["Option_DRPixelBorderSize"] = "Tamaño de borde píxel DR"
L["Option_HideNameBackground"] = "Ocultar fondo del nombre"
L["Option_BigHealthbar"] = "Barra de salud grande"
L["Option_TrinketCircleBorder"] = "Borde circular de abalorio"
L["Option_TrinketCircleBorder_Desc"] = "Activar borde circular para iconos de abalorios"
L["Option_DisableOvershields"] = "Desactivar sobreescudos"
L["Option_DisableOvershields_Desc"] = "Desactiva la absorción mostrándose hacia atrás en la barra de salud cuando supera la salud máxima"

---------------------------------------
-- Cast Bars
---------------------------------------

L["Castbar_Look"] = "Apariencia de barra de lanzamiento"
L["Castbar_UseModern"] = "Usar barras modernas"
L["Castbar_UseModern_Desc"] = "Usar las nuevas barras de lanzamiento modernas de retail."
L["Castbar_KeepDefaultModernTextures"] = "Mantener texturas modernas por defecto"
L["Castbar_KeepDefaultModernTextures_Desc"] = "Mantiene las nuevas texturas modernas para barras de lanzamiento. Ignora la textura establecida."
L["Castbar_Simple"] = "Barra de lanzamiento simple"
L["Castbar_Simple_Desc"] = "Oculta el fondo del texto de la barra y mueve el texto dentro de la barra."
L["Castbar_HideShield"] = "Ocultar escudo en no-interrumpibles"
L["Castbar_HideShield_Desc"] = "Oculta la textura del escudo alrededor del icono de hechizo en lanzamientos no interrumpibles."
L["Castbar_HideSpark"] = "Ocultar chispa de barra"
L["Castbar_HideSpark_Desc"] = "Oculta la chispa que sigue en la barra de lanzamiento"
L["Castbar_HideIcon"] = "Ocultar icono de barra"
L["Castbar_HideIcon_Desc"] = "Oculta el icono de hechizo en la barra de lanzamiento"
L["Castbar_Texture"] = "Textura de barra de lanzamiento"
L["Castbar_UninterruptibleTexture"] = "Textura no interrumpible"
L["Castbar_Colors"] = "Colores de barra de lanzamiento"
L["Castbar_RecolorCastbar"] = "Recolorear barra de lanzamiento"
L["Castbar_RecolorCastbar_Desc"] = "Activar colores personalizados de barra de lanzamiento"
L["Castbar_Cast"] = "Lanzamiento"
L["Castbar_Channeled"] = "Canalizado"
L["Castbar_Uninterruptible"] = "No interrumpible"
L["Castbar_InterruptNotReady"] = "Interrupción no lista"
L["Castbar_EnableNoInterruptColor"] = "Activar color sin interrupción"
L["Castbar_EnableNoInterruptColor_Desc"] = "Activa para colorear las barras de lanzamiento con este color cuando no tienes interrupción lista"
L["Castbar_InterruptNotReadyColor"] = "Color de interrupción no lista"
L["Castbar_Position"] = "Posición de barra de lanzamiento"
L["Castbar_IconPosition"] = "Posición del icono"
L["Castbar_CastbarSize"] = "Tamaño de barra de lanzamiento"
L["Castbar_IconSize"] = "Tamaño del icono"
L["Castbar_IconScale"] = "Escala del icono"

---------------------------------------
-- Diminishing Returns Options
---------------------------------------

L["DR_BrightBorder"] = "Borde DR brillante"
L["DR_BlackBorder"] = "Borde DR negro"
L["DR_BlackBorder_Desc"] = "Hace los bordes DR negros. Combina con la opción Mostrar texto DR"
L["DR_ShowText"] = "Mostrar texto DR"
L["DR_ShowText_Desc"] = "Mostrar texto en iconos DR mostrando el estado actual de DR."
L["DR_DisableBorderGlow"] = "Desactivar brillo de borde DR"
L["DR_ThickPixelBorder"] = "Borde píxel grueso"
L["DR_ThinPixelBorder"] = "Borde píxel fino"
L["DR_DisableBorder"] = "Desactivar borde DR"
L["DR_DisableBorder_Desc"] = "Oculta completamente los bordes DR"
L["DR_BorderSize"] = "Tamaño del borde"
L["DR_SpecificSizeAdjustment"] = "Ajuste de tamaño específico DR"

---------------------------------------
-- Widgets
---------------------------------------

L["Widget_CombatIndicator"] = "Indicador de combate"
L["Widget_CombatIndicator_Enable"] = "Activar indicador de combate"
L["Widget_CombatIndicator_Desc"] = "Muestra un icono de comida cuando el enemigo no está en combate"
L["Widget_TargetIndicator"] = "Indicador de objetivo"
L["Widget_TargetIndicator_Enable"] = "Activar indicador de objetivo"
L["Widget_TargetIndicator_Desc"] = "Muestra un icono en tu objetivo actual"
L["Widget_FocusIndicator"] = "Indicador de foco"
L["Widget_FocusIndicator_Enable"] = "Activar indicador de foco"
L["Widget_FocusIndicator_Desc"] = "Muestra un icono en tu foco actual"
L["Widget_PartyTargetIndicators"] = "Indicadores de objetivo de grupo"
L["Widget_PartyTargetIndicators_Enable"] = "Activar indicadores de objetivo de grupo"
L["Widget_PartyTargetIndicators_Desc"] = "Muestra iconos coloreados por clase en los marcos de arena que atacan tus compañeros de grupo"

---------------------------------------
-- Text Settings
---------------------------------------

L["Text_Fonts"] = "Fuentes"
L["Text_ChangeFont"] = "Cambiar fuente"
L["Text_ChangeFont_Desc"] = "Cambiar las fuentes usadas por sArena"
L["Text_FrameFont"] = "Fuente del marco"
L["Text_FrameFont_Desc"] = "Usada para etiquetas como nombre, valores de salud/energía, texto de lanzamiento, etc."
L["Text_CooldownFont"] = "Fuente de enfriamiento"
L["Text_CooldownFont_Desc"] = "Usada para números de enfriamiento (abalorio, DRs, raciales, etc.)."
L["Text_FontOutline"] = "Contorno de fuente"
L["Text_FontOutline_Desc"] = "Elige el estilo de contorno para todos los elementos de texto."
L["Text_NameText"] = "Texto del nombre"
L["Text_HealthText"] = "Texto de salud"
L["Text_ManaText"] = "Texto de maná"
L["Text_SpecNameText"] = "Texto del nombre de spec"
L["Text_CastbarText"] = "Texto de barra de lanzamiento"
L["Text_DRText"] = "Texto DR"
L["Text_AnchorPoint"] = "Punto de anclaje"

---------------------------------------
-- Status Text
---------------------------------------

L["Status_Health"] = "Salud"
L["Status_Power"] = "Energía"
L["Status_HealthPercent"] = "Salud porcentaje"
L["Status_PowerPercent"] = "Energía porcentaje"
L["Status_HealthAndPower"] = "Salud y energía"
L["Status_HealthAndPowerPercent"] = "Salud y energía porcentaje"

---------------------------------------
-- Additional Options and Messages
---------------------------------------

L["Layout_Settings"] = "Configuración de diseño"
L["Layout_Settings_Desc"] = "Esta configuración solo aplica al diseño seleccionado"
L["Global_Settings"] = "Configuración global"
L["Global_Settings_Desc"] = "Esta configuración aplica a todos los diseños"

L["Text_ShowOnMouseover_Desc"] = "Si está desactivado, el texto solo se muestra al pasar el ratón"
L["Text_FormatLargeNumbers_Desc"] = "Formatear números grandes. 18888 K -> 18.88 M"
L["Text_HidePowerText"] = "Ocultar texto de energía"
L["Text_HidePowerText_Desc"] = "Ocultar texto de maná/ira/energía"

L["DarkMode_Enable"] = "Activar modo oscuro"
L["DarkMode_Enable_Desc"] = "Activar modo oscuro para marcos de arena."
L["DarkMode_Value"] = "Valor de modo oscuro"
L["DarkMode_Value_Desc"] = "Establecer el valor de oscuridad para marcos en modo oscuro (0 = negro, 1 = brillo normal)."
L["DarkMode_Desaturate_Desc"] = "Eliminar todo el color de las texturas en modo oscuro.\n\n|cff888888Este es el comportamiento por defecto pero con algunos diseños puedes preferir mantener algo de color original.|r"

L["ClassColor_Healthbars"] = "Barras de salud color de clase"
L["ClassColor_Healthbars_Desc"] = "Cuando está desactivado, las barras de salud serán verdes"
L["ClassColor_FrameTexture"] = "Textura de marco color de clase"
L["ClassColor_FrameTexture_Desc"] = "Aplicar colores de clase a texturas de marco (bordes)"
L["ClassColor_OnlyClassIcon"] = "Solo icono de clase"
L["ClassColor_OnlyClassIcon_Desc"] = "Solo aplicar color de clase al borde del icono de clase, no a otras texturas"
L["ClassColor_HealerGreen"] = "Colorear sanador verde"
L["ClassColor_HealerGreen_Desc"] = "Cambiar marcos de sanadores a verde brillante en lugar de color de clase"
L["ClassColor_NameText"] = "Texto del nombre color de clase"
L["ClassColor_NameText_Desc"] = "Cuando está activado, los nombres de jugadores se colorearán por clase"

L["Icon_ReplaceHealerWithHealerIcon"] = "Reemplazar sanador con icono de sanador"
L["Icon_ReplaceHealerWithHealerIcon_Desc"] = "Reemplazar el icono de clase/spec del sanador con un icono de sanador."
L["Healthbar_ReverseFill"] = "Relleno inverso de barra de salud"
L["Healthbar_ReverseFill_Desc"] = "Hacer que las barras de salud y energía se llenen de derecha a izquierda"
L["ClassIcon_HideAndShowOnlyAuras"] = "Ocultar icono de clase, mostrar solo auras"
L["ClassIcon_HideAndShowOnlyAuras_Desc"] = "Ocultar el icono de clase y solo mostrar auras cuando están activas."
L["ClassIcon_DontShowAuras"] = "No mostrar auras en icono de clase"
L["ClassIcon_DontShowAuras_Desc"] = "No mostrar ninguna aura en iconos de clase, siempre mostrar icono de clase/spec."

L["Trinket_MinimalistDesign"] = "Diseño minimalista de abalorio"
L["Trinket_MinimalistDesign_Desc"] = "Reemplazar textura de abalorio con color verde sólido cuando está listo y rojo cuando está en enfriamiento."
L["MysteryPlayer_GrayBars"] = "Barras grises de jugador misterioso"
L["MysteryPlayer_GrayBars_Desc"] = "Colorea jugadores misteriosos con barras de estado grises en lugar de sus colores de clase. Jugadores misteriosos son jugadores no vistos, como antes de abrir las puertas y los que están en sigilo."

L["Cooldown_ShowDecimalsThreshold_Desc"] = "Mostrar decimales cuando el tiempo restante está bajo este umbral. Por defecto son 6 segundos."
L["Cooldown_DisableBrightEdge"] = "Desactivar borde brillante en espirales de enfriamiento"
L["Cooldown_DisableBrightEdge_Desc"] = "Desactiva el borde brillante en espirales de enfriamiento para todos los iconos."
L["Cooldown_DisableClassIconSwipe"] = "Desactivar animación de icono de clase"
L["Cooldown_DisableClassIconSwipe_Desc"] = "Desactiva la animación espiral de enfriamiento en el icono de clase."
L["Cooldown_DisableDRSwipe"] = "Desactivar animación DR"
L["Cooldown_DisableDRSwipe_Desc"] = "Desactiva la animación espiral de enfriamiento en iconos DR."
L["Cooldown_DisableTrinketRacialSwipe"] = "Desactivar animación de abalorio y racial"
L["Cooldown_DisableTrinketRacialSwipe_Desc"] = "Desactiva la animación espiral de enfriamiento en iconos de abalorio y racial."
L["Cooldown_ReverseClassIcon"] = "Invertir enfriamiento de icono de clase"
L["Cooldown_ReverseClassIcon_Desc"] = "Invierte la dirección de enfriamiento del icono de clase. Cambia si empiezan vacíos y se llenan, o llenos y se vacían."
L["Cooldown_ReverseDR"] = "Invertir enfriamiento DR"
L["Cooldown_ReverseDR_Desc"] = "Invierte la dirección de la animación de enfriamiento DR."
L["Cooldown_ReverseTrinketRacial"] = "Invertir enfriamiento de abalorio y racial"
L["Cooldown_ReverseTrinketRacial_Desc"] = "Invierte la dirección de enfriamiento de abalorio y racial."

L["Masque_Support"] = "Activar soporte Masque"
L["Masque_Support_Desc"] = "Clic para activar soporte Masque para bordes de iconos.\n\nActualmente requiere desactivar Backdrop en configuración de Masque para una apariencia correcta."
L["Trinket_HideWhenNoTrinket"] = "Ocultar abalorio cuando no está equipado"
L["Trinket_HideWhenNoTrinket_Desc"] = "Ocultar la textura de bandera blanca en el espacio de abalorio (indicando que no hay abalorio equipado). No se mostrará ninguna textura."
L["Trinket_DesaturateOnCD"] = "Desaturar abalorio en CD"
L["Trinket_DesaturateOnCD_Desc"] = "Desaturar el icono del abalorio cuando está en enfriamiento."
L["Dispel_DesaturateOnCD"] = "Desaturar disipación en CD"
L["Dispel_DesaturateOnCD_Desc"] = "Desaturar el icono de disipación cuando está en enfriamiento."

L["DR_ClassSpecific"] = "Categorías DR específicas de clase"
L["DR_ClassSpecific_Desc"] = "Cuando está activado, las categorías DR de abajo se vuelven específicas para tu clase actual.\n\n|cff888888Incluye todas las categorías por defecto, no verás un cambio inmediato, debes cambiar manualmente las que quieras personalizar.|r"
L["DR_SpecSpecific"] = "Categorías DR específicas de especialización"
L["DR_SpecSpecific_Desc"] = "Cuando está activado, las categorías DR de abajo se vuelven específicas para tu especialización actual.\n\n|cff888888Incluye todas las categorías por defecto, no verás un cambio inmediato, debes cambiar manualmente las que quieras personalizar.|r"
L["DR_FixedIcons"] = "Iconos DR fijos"
L["DR_FixedIcons_Desc"] = "Los iconos DR siempre usarán un icono específico para cada categoría DR."
L["DR_ClassSpecificIcons"] = "Iconos DR específicos de clase"
L["DR_ClassSpecificIcons_Desc"] = "Cuando está activado, los iconos de abajo se vuelven específicos para tu clase actual.\n\n|cff888888Incluye todos los iconos por defecto, no verás un cambio inmediato, debes cambiar manualmente los que quieras personalizar.|r"
L["DR_SpecSpecificIcons"] = "Iconos DR específicos de especialización"
L["DR_SpecSpecificIcons_Desc"] = "Cuando está activado, los iconos de abajo se vuelven específicos para tu especialización actual.\n\n|cff888888Incluye todos los iconos por defecto, no verás un cambio inmediato, debes cambiar manualmente los que quieras personalizar.|r"

L["Racial_ShowInTrinketSlot"] = "Mostrar racial en espacio de abalorio cuando no hay abalorio"
L["Racial_ShowInTrinketSlot_Desc"] = "Si el enemigo no tiene abalorio, eliminar el hueco y mostrar su racial en el lugar del abalorio."
L["Human_AlwaysShowTrinket"] = "Siempre mostrar abalorio de Alianza para humanos"
L["Human_AlwaysShowTrinket_Desc"] = "Siempre mostrar la textura de abalorio de Alianza en jugadores humanos, aunque no tengan abalorio equipado."

L["Drag_Hint"] = "Ctrl+Shift+Clic para arrastrar"

L["Option_AddonConflict"] = "Conflicto de addon"
L["Option_Layout"] = "Diseño"
L["Option_Test"] = "Probar"
L["Option_Hide"] = "Ocultar"
L["Option_ArenaFrames"] = "Marcos de arena"
L["Option_StatusText"] = "Texto de estado"
L["Option_AlwaysShow"] = "Mostrar siempre"
L["Option_UsePercentage"] = "Usar porcentaje"
L["Option_FormatNumbers"] = "Formatear números"
L["Option_DarkMode"] = "Modo oscuro"
L["Option_Desaturate"] = "Desaturar"
L["Option_ClassColorNames"] = "Nombres color de clase"
L["Option_ReplaceHealerIcon"] = "Reemplazar icono de sanador"
L["Option_ShowNames"] = "Mostrar nombres"
L["Option_ShowArenaNumber"] = "Mostrar número de arena"
L["Option_ReverseBarsFill"] = "Invertir relleno de barras"
L["Option_HideClassIconShowAurasOnly"] = "Ocultar icono de clase (solo auras)"
L["Option_DisableAurasOnClassIcon"] = "Desactivar auras en icono de clase"
L["Option_ShadowsightTimer"] = "Activar temporizador de Vista de las Sombras"
L["Option_ShadowsightTimer_Desc"] = "Mostrar un temporizador en la parte superior de la pantalla para los buffs de Vista de las Sombras en la arena"
L["Shadowsight_Ready"] = "Vista de las Sombras lista"
L["Shadowsight_SpawnsIn"] = "Vista de las Sombras aparece en %d seg"
L["Option_ColorTrinket"] = "Colorear abalorio"
L["Option_ColorNonVisibleFramesGray"] = "Colorear marcos no visibles en gris"
L["Option_ShowDecimalsOnClassIcon"] = "Mostrar decimales en icono de clase"
L["Option_DecimalThreshold"] = "Umbral de decimales"
L["Option_SwipeAnimations"] = "Animaciones de barrido"
L["Option_DisableCooldownSwipeEdge"] = "Desactivar borde de barrido de enfriamiento"
L["Option_DisableClassIconSwipe"] = "Desactivar barrido de icono de clase"
L["Option_DisableDRSwipeAnimation"] = "Desactivar animación de barrido DR"
L["Option_DisableTrinketRacialSwipe"] = "Desactivar barrido de abalorio y racial"
L["Option_ReverseClassIconSwipe"] = "Invertir barrido de icono de clase"
L["Option_ReverseDRSwipeAnimation"] = "Invertir animación de barrido DR"
L["Option_ReverseTrinketRacialSwipe"] = "Invertir barrido de abalorio y racial"
L["Option_Miscellaneous"] = "Varios"
L["Option_EnableMasqueSupport"] = "Activar soporte Masque"
L["Option_RemoveUnEquippedTrinketTexture"] = "Eliminar textura de abalorio no equipado"
L["Option_DesaturateTrinketCD"] = "Desaturar CD de abalorio"
L["Option_DesaturateDispelCD"] = "Desaturar CD de disipación"
L["Option_DRResetTime"] = "Tiempo de reinicio DR"
L["Option_ShowDecimalsOnDRs"] = "Mostrar decimales en DRs"
L["Option_ColorDRCooldownText"] = "Colorear texto CD de DR por severidad"
L["Option_ColorDRCooldownText_Desc"] = "Colorea el texto de cuenta regresiva de DR según la severidad.\n\n|cff00ff00Verde|r para ½ reducción\n|cffffff00Amarillo|r para ¼ reducción\n|cffff0000Rojo|r para inmune"
L["Option_ColorDRCooldownText_Desc_Midnight"] = "Colorea el texto de cuenta regresiva de DR según la severidad.\n\n|cff00ff00Verde|r para ½ reducción\n|cffff0000Rojo|r para inmune"
L["Option_DRCategories"] = "Categorías DR"
L["Option_PerClass"] = "Por clase"
L["Option_PerSpec"] = "Por especialización"
L["Option_DRIcons"] = "Iconos DR"
L["Option_EnableStaticIcons"] = "Activar iconos estáticos"
L["Option_Categories"] = "Categorías"
L["Option_SwapMissingTrinketWithRacial"] = "Cambiar abalorio faltante por racial"
L["Option_ForceShowTrinketOnHuman"] = "Forzar mostrar abalorio en humano"
L["Option_ReplaceHumanRacialWithTrinket"] = "Reemplazar racial de humano por abalorio"
L["Option_ShowDispels"] = "Mostrar disipaciones"
L["Option_HealerDispels"] = "Disipaciones de sanador"
L["Option_DPSDispels"] = "Disipaciones de DPS"
L["Option_OthersArena"] = "Otro sArena"
L["Option_ImportSettings"] = "Importar configuración"
L["Option_ShareProfile"] = "Compartir perfil"
L["Option_ExportCurrentProfile"] = "Exportar perfil actual"
L["Option_ExportString"] = "Cadena de exportación"
L["Option_PasteProfileString"] = "Pegar cadena de perfil"
L["Option_ImportDescription"] = "Esto importará tu configuración de otro sArena a la nueva versión sArena Updated 2 by sammers.\n\nAsegúrate de que ambos addons estén activados, luego haz clic en el botón de abajo."
L["Message_NoLayoutSettings"] = "El diseño seleccionado no parece tener configuración."
L["Option_ReplaceHumanRacialWithTrinket_Desc"] = "Reemplazar la habilidad racial humana con la textura de abalorio de Alianza en el espacio racial."
L["Option_ShowDispels_Desc"] = "Activar para mostrar enfriamiento de disipación en marcos de arena."
L["Option_OthersArena_Desc"] = "Importar configuración de otro sArena"
L["Option_ImportSettings_Desc"] = "Importar tu configuración de la otra versión de sArena."
L["Option_MidnightPlans_Desc"] = "Planes de World of Warcraft: Midnight"
L["Option_ShareProfile_Desc"] = "Exportar o importar un perfil de sArena"
L["Option_ExportString_Desc"] = "|cff32f795Ctrl+A|r para seleccionar todo, |cff32f795Ctrl+C|r para copiar"
L["Option_PasteProfileString_Desc"] = "|cff32f795Ctrl+V|r para pegar la cadena de perfil copiada"
L["Option_TrinketCircleBorder_Desc"] = "Activar borde circular para iconos de abalorios"
L["Option_DefaultIcon_Desc"] = "Icono por defecto: %s |T%s:24|t"
L["Option_ImportProfile_Desc"] = "Importar configuración de perfil de %s.\n\n%swww.twitch.tv/%s|r"
L["Option_DPSDispelsNote"] = "|cFFFFFF00Nota:|r Las disipaciones de DPS solo aparecen después de haberse usado una vez."
L["Option_DispelsBetaNotice"] = "\n|cFF808080Las disipaciones están en BETA.\nAún necesito confirmar algunos IDs de hechizos, especialmente en Mists of Pandaria.\nLas cosas aún necesitan más pruebas (esperando PTR) y pueden ver cambios.\n¡Si quieres contribuir con info/feedback/IDs de hechizos por favor hazlo!|r"
L["Option_ExportProfileHeader"] = "|cffffff00Exportar perfil:|r"
L["Option_ImportProfileHeader"] = "|cffffff00Importar perfil:|r"
L["Option_StreamerProfilesHeader"] = "|cffffff00Perfiles de streamers:|r"

L["Message_InvalidFormat"] = "Formato inválido."
L["Message_DecompressionError"] = "Error de descompresión: %s"
L["Message_DeserializationError"] = "Error de deserialización o formato inválido."
L["Message_ImportFailed"] = "|cffff4040Importación fallida:|r"
L["Message_ExportFailed"] = "Exportación fallida:"
L["Message_NoProfileFound"] = "No se encontró perfil para el personaje actual."
L["Message_ProfileDataNotFound"] = "Datos de perfil no encontrados."
L["Message_IncorrectDataType"] = "Tipo de dato incorrecto."
L["Message_ProfileOverwrite"] = "Ya tienes el perfil de %s. Reimportarlo sobrescribirá toda tu configuración para este perfil. ¿Estás seguro de que quieres continuar?"
L["ImportExport_DialogTitle"] = "Confirmación de importación de sArena"
L["Message_MidnightWarningTitle"] = "|cffa020f0Advertencia de Beta de Midnight|r"
L["Message_MidnightWarningText"] = "Midnight está en Beta y el Modo de Edición está causando\nerrores en los nuevos DRs.\n\n|cffFFFF00Recarga la UI para arreglar.|r\n\nEsta advertencia será eliminada cuando\nBlizzard arregle el Modo de Edición y los DRs."
L["Button_ReloadUI"] = "Recargar UI"
L["DR_CategoriesPerSpec"] = "Categorías (Por Spec: %s)"
L["DR_CategoriesPerClass"] = "Categorías (Por Clase: %s)"
L["DR_CategoriesGlobal"] = "Categorías (Global)"
L["DR_IconsPerSpec"] = "Configurar iconos DR (Por Spec: %s)"
L["DR_IconsPerClass"] = "Configurar iconos DR (Por Clase: %s)"
L["DR_IconsGlobal"] = "Configurar iconos DR (Global)"
L["Option_ShowDecimalsOnClassIcon_Desc"] = "Mostrar decimales en icono de clase cuando la duración es menor a 6 segundos.\n\nSolo para usuarios sin OmniCC."
L["Option_ShowDecimalsOnDRs_Desc"] = "Mostrar decimales en DRs cuando la duración es menor a 6 segundos.\n\nSolo para usuarios sin OmniCC."
L["Option_StreamerProfiles_Desc"] = "Importar perfiles preconfigurados de streamers populares.\nMantendrás todos tus perfiles actuales incluyendo tu perfil activo \"|cff00ff00%s|r\".\nPara cambiar perfiles de nuevo ve a la pestaña Perfiles."
L["Unknown"] = "Desconocido"
L["Unknown_Spell"] = "Hechizo desconocido"
L["Cooldown_Seconds"] = "Enfriamiento: %d segundos"
L["SelectAll"] = "Seleccionar todo"

---------------------------------------
-- Data Collection
---------------------------------------

L["DataCollection_NotEnabled"] = "La recopilación de datos no está activada. Establece db.collectData = true primero."
L["DataCollection_NoDataYet"] = "Aún no se han recopilado datos de hechizos."
L["DataCollection_ExportTitle"] = "Datos de hechizos recopilados de sArena"
L["DataCollection_ExportComplete"] = "Recopiladas %d entradas totales. Datos mostrados en ventana de exportación."

L["Print_CurrentVersion"] = "Versión actual: %s"
L["Print_MultipleVersionsLoaded"] = "Dos versiones diferentes de sArena están cargadas. Por favor selecciona cómo quieres continuar escribiendo /sarena"

L["Conflict_MultipleVersions"] = "Múltiples versiones de sArena detectadas"
L["Conflict_Warning"] = "|A:services-icon-warning:20:20|a |cffff4444Dos versiones diferentes de sArena están activadas|r |A:services-icon-warning:20:20|a"
L["Conflict_Explanation"] = "|cffffffffDos versiones diferentes de sArena no pueden funcionar correctamente juntas.\nTendrás que usar solo una. Tienes 3 opciones:|r"
L["Conflict_UseOther"] = "|cffffffffUsar otro sArena|r"
L["Conflict_UseOther_Desc"] = "Esto desactivará |cffffffffsArena Updated 2 by sammers y en su lugar usará tu otro sArena y recargará tu UI."
L["Conflict_UseOther_Confirm"] = "Esto desactivará |cffffffffsArena Updated 2 by sammers y usará el otro sArena y recargará tu UI.\n\n¿Continuar?"
L["Conflict_UseReloaded_Import"] = "|cffffffffUsar sArena Updated 2 by sammers: Importar otra configuración"
L["Conflict_UseReloaded_Import_Desc"] = "Esto copiará tu perfil actual y configuración existente del otro sArena, desactivará el otro sArena por compatibilidad, y recargará tu UI para que puedas empezar a usar sArena Updated 2 by sammers"
L["Conflict_UseReloaded_Import_Confirm"] = "Esto copiará tu perfil actual y configuración existente del otro sArena, desactivará el otro sArena por compatibilidad, y recargará tu UI para que puedas empezar a usar sArena Updated 2 by sammers\n\n¿Continuar?"
L["Conflict_UseReloaded_NoImport"] = "|cffffffffUsar sArena Updated 2 by sammers: No importar otra configuración"
L["Conflict_UseReloaded_NoImport_Desc"] = "Esto desactivará el otro sArena por compatibilidad y recargará tu UI para que puedas empezar a usar sArena Updated 2 by sammers sin tu otra configuración."
L["Conflict_UseReloaded_NoImport_Confirm"] = "Esto desactivará el otro sArena por compatibilidad y recargará tu UI para que puedas empezar a usar sArena Updated 2 by sammers sin tu otra configuración.\n\n¿Continuar?"
L["Midnight_UpdateInfo"] = "|cff00ff00ACTUALIZACIÓN: Todo ahora disponible en Midnight.|r\n\nPlaneo continuar desarrollando |cffffffffsArena Updated 2 by sammers para Midnight también.\n\nAlgunas características necesitarán ajustes o eliminaciones pero el addon permanecerá.\nMidnight todavía está en Alpha temprana y no he empezado a preparar aún (14 Oct), pero lo haré pronto.\n\nLos planes pueden cambiar, pero estoy seguro de que |cffffffffsArena Updated 2 by sammers y mis otros addons\n|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates permanecerán para Midnight (con cambios/eliminaciones).\n\nTengo mucho trabajo por delante, y cualquier apoyo es muy apreciado. (|cff00c0ff@bodify|r)\nActualizaré esta sección con más información detallada cuando sepa más en algunas semanas/meses."
L["Midnight_BetaInfo"] = "¡Bienvenido a Midnight! Mis otros addons |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates también están siendo trabajados.\n\nLas cosas cambiarán rápidamente durante el desarrollo aquí, especialmente cuando nueva API esté disponible.\nEsta Beta de Midnight es prematura y muchas cosas todavía faltan en el juego.\nExperimentaré con muchas cosas hasta el lanzamiento de Midnight.\n\nActualmente esto ha cambiado:\n1) Los DRs ahora son manejados por Blizzard, sArena solo ajusta lo permitido.\n 1.1) Configuración de espaciado eliminada.\n 1.2) Tamaño individual eliminado.\n 1.3) Crecer arriba/abajo eliminado.\n 1.4) Los iconos ahora son los iconos extraños de Blizzard, esas configuraciones eliminadas.\n2) Las auras no-CC ya no se muestran, solo CC que Blizzard permite ver.\n3) Absorciones en marcos eliminadas.\n4) El enfriamiento racial no se puede rastrear, pero el racial sigue visible.\n5) Disipaciones eliminadas..\n\nNo todo está completamente definido y pueden aparecer cosas nuevas pero veremos. Mantendré esto actualizado aquí."

