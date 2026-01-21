-- French localization for sArena Updated 2 by sammers
-- sArena Updated 2 by sammers Localisation Française

local locale = GetLocale()
if locale ~= "frFR" then return end

local L = sArenaMixin.L

---------------------------------------
-- Common Terms
---------------------------------------

L["Yes"] = "Oui"
L["No"] = "Non"
L["Enable"] = "Activer"
L["Disable"] = "Désactiver"
L["Reset"] = "Réinitialiser"
L["Scale"] = "Échelle"
L["Size"] = "Taille"
L["Width"] = "Largeur"
L["Height"] = "Hauteur"
L["Horizontal"] = "Horizontal"
L["Vertical"] = "Vertical"
L["Spacing"] = "Espacement"
L["Positioning"] = "Positionnement"
L["Sizing"] = "Dimensionnement"
L["Options"] = "Options"
L["BorderSize"] = "Taille de bordure"
L["GrowthDirection"] = "Direction de croissance"
L["AnchorPoint"] = "Point d'ancrage"

---------------------------------------
-- Directions
---------------------------------------

L["Direction_Down"] = "Bas"
L["Direction_Up"] = "Haut"
L["Direction_Right"] = "Droite"
L["Direction_Left"] = "Gauche"
L["Direction_Center"] = "Centre"
L["Direction_TopLeft"] = "Haut Gauche"
L["Direction_Top"] = "Haut"
L["Direction_TopRight"] = "Haut Droite"
L["Direction_BottomLeft"] = "Bas Gauche"
L["Direction_Bottom"] = "Bas"
L["Direction_BottomRight"] = "Bas Droite"

---------------------------------------
-- Font Outlines
---------------------------------------

L["Outline_None"] = "Sans contour"
L["Outline_Normal"] = "Contour"
L["Outline_Thick"] = "Contour épais"

---------------------------------------
-- Messages
---------------------------------------

L["Message_MustLeaveCombat"] = "Vous devez d'abord quitter le combat."

---------------------------------------
-- Diminishing Returns Categories
---------------------------------------

L["DR_Stun"] = "Étourdissement"
L["DR_Incapacitate"] = "Incapacité"
L["DR_Disorient"] = "Désorientation"
L["DR_Silence"] = "Silence"
L["DR_Root"] = "Immobilisation"
L["DR_Knock"] = "Recul"
L["DR_Disarm"] = "Désarmement"
L["DR_Fear"] = "Peur"
L["DR_Horror"] = "Horreur"
L["DR_Cyclone"] = "Cyclone"
L["DR_MindControl"] = "Contrôle mental"
L["DR_RandomStun"] = "Étourdissement aléatoire"
L["DR_RandomRoot"] = "Immobilisation aléatoire"
L["DR_Charge"] = "Charge"

---------------------------------------
-- Race Names
---------------------------------------

L["Race_Human"] = "Humain"
L["Race_Scourge"] = "Mort-vivant"
L["Race_Dwarf"] = "Nain"
L["Race_NightElf"] = "Elfe de la nuit"
L["Race_Gnome"] = "Gnome"
L["Race_Draenei"] = "Draeneï"
L["Race_Worgen"] = "Worgen"
L["Race_Pandaren"] = "Pandaren"
L["Race_Orc"] = "Orc"
L["Race_Tauren"] = "Tauren"
L["Race_Troll"] = "Troll"
L["Race_BloodElf"] = "Elfe de sang"
L["Race_Goblin"] = "Gobelin"
L["Race_LightforgedDraenei"] = "Draeneï sancteforge"
L["Race_HighmountainTauren"] = "Tauren de Haut-Roc"
L["Race_Nightborne"] = "Sacrenuit"
L["Race_MagharOrc"] = "Orc mag'har"
L["Race_DarkIronDwarf"] = "Nain sombrefer"
L["Race_ZandalariTroll"] = "Troll zandalari"
L["Race_VoidElf"] = "Elfe du Vide"
L["Race_KulTiran"] = "Kultirassien"
L["Race_Mechagnome"] = "Mécagnome"
L["Race_Vulpera"] = "Vulpérin"
L["Race_Dracthyr"] = "Dracthyr"
L["Race_EarthenDwarf"] = "Terrestre"
L["Race_Harronir"] = "Haranir"

---------------------------------------
-- Main Categories
---------------------------------------

L["Category_ArenaFrames"] = "Cadres d'arène"
L["Category_SpecIcons"] = "Icônes de spécialisation"
L["Category_Trinkets"] = "Bijoux"
L["Category_Racials"] = "Capacités raciales"
L["Category_Dispels"] = "Dissipations"
L["Category_CastBars"] = "Barres d'incantation"
L["Category_DiminishingReturns"] = "Rendements décroissants"
L["Category_Widgets"] = "Widgets"
L["Category_TextSettings"] = "Paramètres de texte"
L["Category_ClassIcon"] = "Icône de classe"

---------------------------------------
-- Textures
---------------------------------------

L["Textures"] = "Textures"
L["Texture_General"] = "Texture générale"
L["Texture_General_Desc"] = "Astuce: Si vous avez remplacé les textures WoW par défaut par les vôtres, sélectionnez \"Blizzard Raid Bar\"."
L["Texture_Healer"] = "Texture de soigneur"
L["Texture_Healer_Desc"] = "Astuce: Actif uniquement lors d'un empilement de classes. Décochez \"Empilement de classes uniquement\" si vous voulez toujours changer la texture."
L["Texture_ClassStackingOnly"] = "Empilement de classes uniquement"
L["Texture_ClassStackingOnly_Desc"] = "Changer la texture du soigneur uniquement lors d'un empilement de classes.\n\nPar exemple quand il y a un Druide Restauration et un Féral dans l'équipe ennemie."
L["Texture_Background"] = "Texture de fond"
L["Texture_Background_Desc"] = "Texture pour les arrière-plans des barres de vie/énergie."
L["Texture_BackgroundColor"] = "Couleur de fond"
L["Texture_BackgroundColor_Desc"] = "Couleur pour les arrière-plans des barres de vie/énergie."

---------------------------------------
-- Arena Frames Options
---------------------------------------

L["Option_ReplaceClassIcon"] = "Remplacer l'icône de classe"
L["Option_ReplaceClassIcon_Desc"] = "Remplacer l'icône de classe par l'icône de spécialisation et masquer le petit \"bouton d'icône de spec\""
L["Option_GrowthDirection"] = "Direction de croissance"
L["Option_SpacingBetweenFrames"] = "Espacement entre les cadres d'arène"
L["Option_SpacingBetweenFrames_Desc"] = "Espacement entre chaque cadre d'arène"
L["Option_ClassIconCDFontSize"] = "Taille police CD icône classe"
L["Option_ClassIconCDFontSize_Desc"] = "Fonctionne uniquement avec le décompte Blizzard (pas OmniCC)"
L["Option_FontSize"] = "Taille de police"
L["Option_FontSize_Desc"] = "Fonctionne uniquement avec le décompte Blizzard (pas OmniCC)"
L["Option_MirroredFrames"] = "Cadres miroir"
L["Option_PowerBarHeight"] = "Hauteur de barre d'énergie"
L["Option_SpecTextOnManabar"] = "Texte de spec sur barre de mana"
L["Option_CropIcons"] = "Rogner les icônes"
L["Option_PixelBorderSize"] = "Taille de bordure pixel"
L["Option_PixelBorderOffset"] = "Décalage de bordure pixel"
L["Option_DRPixelBorderSize"] = "Taille de bordure pixel DR"
L["Option_HideNameBackground"] = "Masquer le fond du nom"
L["Option_BigHealthbar"] = "Grande barre de vie"
L["Option_TrinketCircleBorder"] = "Bordure circulaire de bijou"
L["Option_TrinketCircleBorder_Desc"] = "Activer la bordure circulaire pour les icônes de bijoux"
L["Option_DisableOvershields"] = "Désactiver les sur-boucliers"
L["Option_DisableOvershields_Desc"] = "Désactive l'absorption s'affichant en arrière sur la barre de vie quand elle dépasse la vie max"

---------------------------------------
-- Cast Bars
---------------------------------------

L["Castbar_Look"] = "Apparence de la barre d'incantation"
L["Castbar_UseModern"] = "Utiliser les barres modernes"
L["Castbar_UseModern_Desc"] = "Utiliser les nouvelles barres d'incantation modernes retail."
L["Castbar_KeepDefaultModernTextures"] = "Garder les textures modernes par défaut"
L["Castbar_KeepDefaultModernTextures_Desc"] = "Garde les nouvelles textures modernes pour les barres d'incantation. Ignore la texture définie."
L["Castbar_Simple"] = "Barre d'incantation simple"
L["Castbar_Simple_Desc"] = "Masque le fond du texte de la barre et déplace le texte à l'intérieur de la barre."
L["Castbar_HideShield"] = "Masquer le bouclier sur non-interruptible"
L["Castbar_HideShield_Desc"] = "Masque la texture du bouclier autour de l'icône de sort sur les incantations non-interruptibles."
L["Castbar_HideSpark"] = "Masquer l'étincelle de barre"
L["Castbar_HideSpark_Desc"] = "Masque l'étincelle qui suit sur la barre d'incantation"
L["Castbar_HideIcon"] = "Masquer l'icône de barre"
L["Castbar_HideIcon_Desc"] = "Masque l'icône de sort sur la barre d'incantation"
L["Castbar_Texture"] = "Texture de barre d'incantation"
L["Castbar_UninterruptibleTexture"] = "Texture non-interruptible"
L["Castbar_Colors"] = "Couleurs de barre d'incantation"
L["Castbar_RecolorCastbar"] = "Recolorer la barre d'incantation"
L["Castbar_RecolorCastbar_Desc"] = "Activer les couleurs personnalisées de barre d'incantation"
L["Castbar_Cast"] = "Incantation"
L["Castbar_Channeled"] = "Canalisé"
L["Castbar_Uninterruptible"] = "Non-interruptible"
L["Castbar_InterruptNotReady"] = "Interruption non prête"
L["Castbar_EnableNoInterruptColor"] = "Activer couleur sans interruption"
L["Castbar_EnableNoInterruptColor_Desc"] = "Activer pour colorer les barres d'incantation de cette couleur quand vous n'avez pas d'interruption prête"
L["Castbar_InterruptNotReadyColor"] = "Couleur interruption non prête"
L["Castbar_Position"] = "Position de la barre d'incantation"
L["Castbar_IconPosition"] = "Position de l'icône"
L["Castbar_CastbarSize"] = "Taille de la barre d'incantation"
L["Castbar_IconSize"] = "Taille de l'icône"
L["Castbar_IconScale"] = "Échelle de l'icône"

---------------------------------------
-- Diminishing Returns Options
---------------------------------------

L["DR_BrightBorder"] = "Bordure DR lumineuse"
L["DR_BlackBorder"] = "Bordure DR noire"
L["DR_BlackBorder_Desc"] = "Rend les bordures DR noires. Combiner avec l'option Afficher le texte DR"
L["DR_ShowText"] = "Afficher le texte DR"
L["DR_ShowText_Desc"] = "Afficher le texte sur les icônes DR montrant l'état actuel du DR."
L["DR_DisableBorderGlow"] = "Désactiver la lueur de bordure DR"
L["DR_ThickPixelBorder"] = "Bordure pixel épaisse"
L["DR_ThinPixelBorder"] = "Bordure pixel fine"
L["DR_DisableBorder"] = "Désactiver la bordure DR"
L["DR_DisableBorder_Desc"] = "Masque complètement les bordures DR"
L["DR_BorderSize"] = "Taille de bordure"
L["DR_SpecificSizeAdjustment"] = "Ajustement de taille spécifique DR"

---------------------------------------
-- Widgets
---------------------------------------

L["Widget_CombatIndicator"] = "Indicateur de combat"
L["Widget_CombatIndicator_Enable"] = "Activer l'indicateur de combat"
L["Widget_CombatIndicator_Desc"] = "Affiche une icône de nourriture quand l'ennemi n'est pas en combat"
L["Widget_TargetIndicator"] = "Indicateur de cible"
L["Widget_TargetIndicator_Enable"] = "Activer l'indicateur de cible"
L["Widget_TargetIndicator_Desc"] = "Affiche une icône sur votre cible actuelle"
L["Widget_FocusIndicator"] = "Indicateur de focus"
L["Widget_FocusIndicator_Enable"] = "Activer l'indicateur de focus"
L["Widget_FocusIndicator_Desc"] = "Affiche une icône sur votre focus actuel"
L["Widget_PartyTargetIndicators"] = "Indicateurs de cible de groupe"
L["Widget_PartyTargetIndicators_Enable"] = "Activer les indicateurs de cible de groupe"
L["Widget_PartyTargetIndicators_Desc"] = "Affiche des icônes colorées par classe sur les cadres d'arène que vos membres de groupe ciblent"

---------------------------------------
-- Text Settings
---------------------------------------

L["Text_Fonts"] = "Polices"
L["Text_ChangeFont"] = "Changer la police"
L["Text_ChangeFont_Desc"] = "Changer les polices utilisées par sArena"
L["Text_FrameFont"] = "Police du cadre"
L["Text_FrameFont_Desc"] = "Utilisée pour les étiquettes comme le nom, les valeurs de vie/énergie, le texte d'incantation, etc."
L["Text_CooldownFont"] = "Police de temps de recharge"
L["Text_CooldownFont_Desc"] = "Utilisée pour les nombres de temps de recharge (bijou, DRs, raciaux, etc.)."
L["Text_FontOutline"] = "Contour de police"
L["Text_FontOutline_Desc"] = "Choisir le style de contour pour tous les éléments de texte."
L["Text_NameText"] = "Texte du nom"
L["Text_HealthText"] = "Texte de vie"
L["Text_ManaText"] = "Texte de mana"
L["Text_SpecNameText"] = "Texte du nom de spec"
L["Text_CastbarText"] = "Texte de barre d'incantation"
L["Text_DRText"] = "Texte DR"
L["Text_AnchorPoint"] = "Point d'ancrage"

---------------------------------------
-- Status Text
---------------------------------------

L["Status_Health"] = "Vie"
L["Status_Power"] = "Énergie"
L["Status_HealthPercent"] = "Vie pourcentage"
L["Status_PowerPercent"] = "Énergie pourcentage"
L["Status_HealthAndPower"] = "Vie et énergie"
L["Status_HealthAndPowerPercent"] = "Vie et énergie pourcentage"

---------------------------------------
-- Additional Options and Messages
---------------------------------------

L["Layout_Settings"] = "Paramètres de disposition"
L["Layout_Settings_Desc"] = "Ces paramètres s'appliquent uniquement à la disposition sélectionnée"
L["Global_Settings"] = "Paramètres globaux"
L["Global_Settings_Desc"] = "Ces paramètres s'appliquent à toutes les dispositions"

L["Text_ShowOnMouseover_Desc"] = "Si désactivé, le texte ne s'affiche qu'au survol"
L["Text_FormatLargeNumbers_Desc"] = "Formater les grands nombres. 18888 K -> 18.88 M"
L["Text_HidePowerText"] = "Masquer le texte d'énergie"
L["Text_HidePowerText_Desc"] = "Masquer le texte de mana/rage/énergie"

L["DarkMode_Enable"] = "Activer le mode sombre"
L["DarkMode_Enable_Desc"] = "Activer le mode sombre pour les cadres d'arène."
L["DarkMode_Value"] = "Valeur du mode sombre"
L["DarkMode_Value_Desc"] = "Définir la valeur d'obscurité pour les cadres en mode sombre (0 = noir, 1 = luminosité normale)."
L["DarkMode_Desaturate_Desc"] = "Supprimer toutes les couleurs des textures en mode sombre.\n\n|cff888888C'est le comportement par défaut mais avec certaines dispositions vous préférerez peut-être garder un peu de couleur originale.|r"

L["ClassColor_Healthbars"] = "Barres de vie couleur de classe"
L["ClassColor_Healthbars_Desc"] = "Quand désactivé, les barres de vie seront vertes"
L["ClassColor_FrameTexture"] = "Texture de cadre couleur de classe"
L["ClassColor_FrameTexture_Desc"] = "Appliquer les couleurs de classe aux textures de cadre (bordures)"
L["ClassColor_OnlyClassIcon"] = "Icône de classe uniquement"
L["ClassColor_OnlyClassIcon_Desc"] = "Appliquer la couleur de classe uniquement à la bordure de l'icône de classe, pas aux autres textures"
L["ClassColor_HealerGreen"] = "Colorer le soigneur en vert"
L["ClassColor_HealerGreen_Desc"] = "Changer les cadres de soigneurs en vert vif au lieu de la couleur de classe"
L["ClassColor_NameText"] = "Texte du nom couleur de classe"
L["ClassColor_NameText_Desc"] = "Quand activé, les noms de joueurs seront colorés par classe"

L["Icon_ReplaceHealerWithHealerIcon"] = "Remplacer soigneur par icône de soigneur"
L["Icon_ReplaceHealerWithHealerIcon_Desc"] = "Remplacer l'icône de classe/spec du soigneur par une icône de soigneur."
L["Healthbar_ReverseFill"] = "Remplissage inverse de barre de vie"
L["Healthbar_ReverseFill_Desc"] = "Faire remplir les barres de vie et d'énergie de droite à gauche"
L["ClassIcon_HideAndShowOnlyAuras"] = "Masquer l'icône de classe, afficher seulement les auras"
L["ClassIcon_HideAndShowOnlyAuras_Desc"] = "Masquer l'icône de classe et afficher seulement les auras quand elles sont actives."
L["ClassIcon_DontShowAuras"] = "Ne pas afficher les auras sur l'icône de classe"
L["ClassIcon_DontShowAuras_Desc"] = "Ne pas afficher d'auras sur les icônes de classe, toujours afficher l'icône de classe/spec."

L["Trinket_MinimalistDesign"] = "Design minimaliste de bijou"
L["Trinket_MinimalistDesign_Desc"] = "Remplacer la texture du bijou par une couleur verte unie quand prêt et rouge en temps de recharge."
L["MysteryPlayer_GrayBars"] = "Barres grises joueur mystère"
L["MysteryPlayer_GrayBars_Desc"] = "Colore les joueurs mystères avec des barres de statut grises au lieu de leurs couleurs de classe. Les joueurs mystères sont les joueurs non vus, comme avant l'ouverture des portes et ceux en camouflage."

L["Cooldown_ShowDecimalsThreshold_Desc"] = "Afficher les décimales quand le temps restant est sous ce seuil. Par défaut 6 secondes."
L["Cooldown_DisableBrightEdge"] = "Désactiver le bord lumineux sur les spirales de temps de recharge"
L["Cooldown_DisableBrightEdge_Desc"] = "Désactive le bord lumineux sur les spirales de temps de recharge pour toutes les icônes."
L["Cooldown_DisableClassIconSwipe"] = "Désactiver l'animation de l'icône de classe"
L["Cooldown_DisableClassIconSwipe_Desc"] = "Désactive l'animation spirale de temps de recharge sur l'icône de classe."
L["Cooldown_DisableDRSwipe"] = "Désactiver l'animation DR"
L["Cooldown_DisableDRSwipe_Desc"] = "Désactive l'animation spirale de temps de recharge sur les icônes DR."
L["Cooldown_DisableTrinketRacialSwipe"] = "Désactiver l'animation bijou et raciale"
L["Cooldown_DisableTrinketRacialSwipe_Desc"] = "Désactive l'animation spirale de temps de recharge sur les icônes de bijou et raciale."
L["Cooldown_ReverseClassIcon"] = "Inverser le temps de recharge de l'icône de classe"
L["Cooldown_ReverseClassIcon_Desc"] = "Inverse la direction du temps de recharge de l'icône de classe. Change si elles commencent vides et se remplissent, ou pleines et se vident."
L["Cooldown_ReverseDR"] = "Inverser le temps de recharge DR"
L["Cooldown_ReverseDR_Desc"] = "Inverse la direction de l'animation de temps de recharge DR."
L["Cooldown_ReverseTrinketRacial"] = "Inverser le temps de recharge bijou et raciale"
L["Cooldown_ReverseTrinketRacial_Desc"] = "Inverse la direction du temps de recharge du bijou et de la raciale."

L["Masque_Support"] = "Activer le support Masque"
L["Masque_Support_Desc"] = "Cliquer pour activer le support Masque pour les bordures d'icônes.\n\nActuellement, cela nécessite de désactiver Backdrop dans les paramètres Masque pour un rendu correct."
L["Trinket_HideWhenNoTrinket"] = "Masquer le bijou quand non équipé"
L["Trinket_HideWhenNoTrinket_Desc"] = "Masquer la texture de drapeau blanc dans l'emplacement de bijou (signifiant qu'aucun bijou n'est équipé). Aucune texture ne sera affichée."
L["Trinket_DesaturateOnCD"] = "Désaturer le bijou en TR"
L["Trinket_DesaturateOnCD_Desc"] = "Désaturer l'icône du bijou quand il est en temps de recharge."
L["Dispel_DesaturateOnCD"] = "Désaturer la dissipation en TR"
L["Dispel_DesaturateOnCD_Desc"] = "Désaturer l'icône de dissipation quand elle est en temps de recharge."

L["DR_ClassSpecific"] = "Catégories DR spécifiques à la classe"
L["DR_ClassSpecific_Desc"] = "Quand activé, les catégories DR ci-dessous deviennent spécifiques à votre classe actuelle.\n\n|cff888888Inclut toutes les catégories par défaut, vous ne verrez pas de changement immédiat, vous devez changer manuellement celles que vous voulez personnaliser.|r"
L["DR_SpecSpecific"] = "Catégories DR spécifiques à la spécialisation"
L["DR_SpecSpecific_Desc"] = "Quand activé, les catégories DR ci-dessous deviennent spécifiques à votre spécialisation actuelle.\n\n|cff888888Inclut toutes les catégories par défaut, vous ne verrez pas de changement immédiat, vous devez changer manuellement celles que vous voulez personnaliser.|r"
L["DR_FixedIcons"] = "Icônes DR fixes"
L["DR_FixedIcons_Desc"] = "Les icônes DR utiliseront toujours une icône spécifique pour chaque catégorie DR."
L["DR_ClassSpecificIcons"] = "Icônes DR spécifiques à la classe"
L["DR_ClassSpecificIcons_Desc"] = "Quand activé, les icônes ci-dessous deviennent spécifiques à votre classe actuelle.\n\n|cff888888Inclut toutes les icônes par défaut, vous ne verrez pas de changement immédiat, vous devez changer manuellement celles que vous voulez personnaliser.|r"
L["DR_SpecSpecificIcons"] = "Icônes DR spécifiques à la spécialisation"
L["DR_SpecSpecificIcons_Desc"] = "Quand activé, les icônes ci-dessous deviennent spécifiques à votre spécialisation actuelle.\n\n|cff888888Inclut toutes les icônes par défaut, vous ne verrez pas de changement immédiat, vous devez changer manuellement celles que vous voulez personnaliser.|r"

L["Racial_ShowInTrinketSlot"] = "Afficher la raciale dans l'emplacement de bijou sans bijou"
L["Racial_ShowInTrinketSlot_Desc"] = "Si l'ennemi n'a pas de bijou, supprimer l'écart et afficher sa raciale à la place du bijou."
L["Human_AlwaysShowTrinket"] = "Toujours afficher le bijou Alliance pour les humains"
L["Human_AlwaysShowTrinket_Desc"] = "Toujours afficher la texture de bijou Alliance sur les joueurs humains, même s'ils n'ont pas de bijou équipé."

L["Drag_Hint"] = "Ctrl+Shift+Clic pour glisser"

L["Option_AddonConflict"] = "Conflit d'addon"
L["Option_Layout"] = "Disposition"
L["Option_Test"] = "Test"
L["Option_Hide"] = "Masquer"
L["Option_ArenaFrames"] = "Cadres d'arène"
L["Option_StatusText"] = "Texte de statut"
L["Option_AlwaysShow"] = "Toujours afficher"
L["Option_UsePercentage"] = "Utiliser le pourcentage"
L["Option_FormatNumbers"] = "Formater les nombres"
L["Option_DarkMode"] = "Mode sombre"
L["Option_Desaturate"] = "Désaturer"
L["Option_ClassColorNames"] = "Noms couleur de classe"
L["Option_ReplaceHealerIcon"] = "Remplacer l'icône de soigneur"
L["Option_ShowNames"] = "Afficher les noms"
L["Option_ShowArenaNumber"] = "Afficher le numéro d'arène"
L["Option_ReverseBarsFill"] = "Inverser le remplissage des barres"
L["Option_HideClassIconShowAurasOnly"] = "Masquer l'icône de classe (auras uniquement)"
L["Option_DisableAurasOnClassIcon"] = "Désactiver les auras sur l'icône de classe"
L["Option_ShadowsightTimer"] = "Activer le minuteur de Vision de l'ombre"
L["Option_ShadowsightTimer_Desc"] = "Afficher un minuteur en haut de l'écran pour les buffs Vision de l'ombre en arène"
L["Shadowsight_Ready"] = "Vision de l'ombre prête"
L["Shadowsight_SpawnsIn"] = "Vision de l'ombre apparaît dans %d sec"
L["Option_ColorTrinket"] = "Colorer le bijou"
L["Option_ColorNonVisibleFramesGray"] = "Colorer les cadres non visibles en gris"
L["Option_ShowDecimalsOnClassIcon"] = "Afficher les décimales sur l'icône de classe"
L["Option_DecimalThreshold"] = "Seuil de décimales"
L["Option_SwipeAnimations"] = "Animations de balayage"
L["Option_DisableCooldownSwipeEdge"] = "Désactiver le bord de balayage de temps de recharge"
L["Option_DisableClassIconSwipe"] = "Désactiver le balayage de l'icône de classe"
L["Option_DisableDRSwipeAnimation"] = "Désactiver l'animation de balayage DR"
L["Option_DisableTrinketRacialSwipe"] = "Désactiver le balayage bijou et raciale"
L["Option_ReverseClassIconSwipe"] = "Inverser le balayage de l'icône de classe"
L["Option_ReverseDRSwipeAnimation"] = "Inverser l'animation de balayage DR"
L["Option_ReverseTrinketRacialSwipe"] = "Inverser le balayage bijou et raciale"
L["Option_Miscellaneous"] = "Divers"
L["Option_EnableMasqueSupport"] = "Activer le support Masque"
L["Option_RemoveUnEquippedTrinketTexture"] = "Supprimer la texture de bijou non équipé"
L["Option_DesaturateTrinketCD"] = "Désaturer le TR du bijou"
L["Option_DesaturateDispelCD"] = "Désaturer le TR de dissipation"
L["Option_DRResetTime"] = "Temps de réinitialisation DR"
L["Option_ShowDecimalsOnDRs"] = "Afficher les décimales sur les DRs"
L["Option_ColorDRCooldownText"] = "Colorer le texte TR de DR par sévérité"
L["Option_ColorDRCooldownText_Desc"] = "Colore le texte de décompte DR selon la sévérité.\n\n|cff00ff00Vert|r pour ½ diminution\n|cffffff00Jaune|r pour ¼ diminution\n|cffff0000Rouge|r pour immunisé"
L["Option_ColorDRCooldownText_Desc_Midnight"] = "Colore le texte de décompte DR selon la sévérité.\n\n|cff00ff00Vert|r pour ½ diminution\n|cffff0000Rouge|r pour immunisé"
L["Option_DRCategories"] = "Catégories DR"
L["Option_PerClass"] = "Par classe"
L["Option_PerSpec"] = "Par spécialisation"
L["Option_DRIcons"] = "Icônes DR"
L["Option_EnableStaticIcons"] = "Activer les icônes statiques"
L["Option_Categories"] = "Catégories"
L["Option_SwapMissingTrinketWithRacial"] = "Échanger bijou manquant avec raciale"
L["Option_ForceShowTrinketOnHuman"] = "Forcer l'affichage du bijou sur humain"
L["Option_ReplaceHumanRacialWithTrinket"] = "Remplacer la raciale humaine par le bijou"
L["Option_ShowDispels"] = "Afficher les dissipations"
L["Option_HealerDispels"] = "Dissipations de soigneur"
L["Option_DPSDispels"] = "Dissipations de DPS"
L["Option_OthersArena"] = "Autre sArena"
L["Option_ImportSettings"] = "Importer les paramètres"
L["Option_ShareProfile"] = "Partager le profil"
L["Option_ExportCurrentProfile"] = "Exporter le profil actuel"
L["Option_ExportString"] = "Chaîne d'exportation"
L["Option_PasteProfileString"] = "Coller la chaîne de profil"
L["Option_ImportDescription"] = "Ceci importera vos paramètres d'autre sArena dans la nouvelle version sArena Updated 2 by sammers.\n\nAssurez-vous que les deux addons sont activés, puis cliquez sur le bouton ci-dessous."
L["Message_NoLayoutSettings"] = "La disposition sélectionnée ne semble pas avoir de paramètres."
L["Option_ReplaceHumanRacialWithTrinket_Desc"] = "Remplacer la capacité raciale humaine par la texture de bijou Alliance dans l'emplacement racial."
L["Option_ShowDispels_Desc"] = "Activer pour afficher le temps de recharge de dissipation sur les cadres d'arène."
L["Option_OthersArena_Desc"] = "Importer les paramètres d'un autre sArena"
L["Option_ImportSettings_Desc"] = "Importer vos paramètres de l'autre version sArena."
L["Option_MidnightPlans_Desc"] = "Plans de World of Warcraft: Midnight"
L["Option_ShareProfile_Desc"] = "Exporter ou importer un profil sArena"
L["Option_ExportString_Desc"] = "|cff32f795Ctrl+A|r pour tout sélectionner, |cff32f795Ctrl+C|r pour copier"
L["Option_PasteProfileString_Desc"] = "|cff32f795Ctrl+V|r pour coller la chaîne de profil copiée"
L["Option_TrinketCircleBorder_Desc"] = "Activer la bordure circulaire pour les icônes de bijoux"
L["Option_DefaultIcon_Desc"] = "Icône par défaut: %s |T%s:24|t"
L["Option_ImportProfile_Desc"] = "Importer les paramètres de profil de %s.\n\n%swww.twitch.tv/%s|r"
L["Option_DPSDispelsNote"] = "|cFFFFFF00Note:|r Les dissipations DPS n'apparaissent qu'après avoir été utilisées une fois."
L["Option_DispelsBetaNotice"] = "\n|cFF808080Les dissipations sont en BÊTA.\nBesoin de confirmer certains IDs de sorts, surtout dans Mists of Pandaria.\nLes choses ont encore besoin de plus de tests (attente du PTR) et peuvent changer.\nSi vous voulez contribuer des infos/retours/IDs de sorts, n'hésitez pas!|r"
L["Option_ExportProfileHeader"] = "|cffffff00Exporter le profil:|r"
L["Option_ImportProfileHeader"] = "|cffffff00Importer le profil:|r"
L["Option_StreamerProfilesHeader"] = "|cffffff00Profils de streamers:|r"

L["Message_InvalidFormat"] = "Format invalide."
L["Message_DecompressionError"] = "Erreur de décompression: %s"
L["Message_DeserializationError"] = "Erreur de désérialisation ou format invalide."
L["Message_ImportFailed"] = "|cffff4040Échec de l'importation:|r"
L["Message_ExportFailed"] = "Échec de l'exportation:"
L["Message_NoProfileFound"] = "Aucun profil trouvé pour le personnage actuel."
L["Message_ProfileDataNotFound"] = "Données de profil non trouvées."
L["Message_IncorrectDataType"] = "Type de données incorrect."
L["Message_ProfileOverwrite"] = "Vous avez déjà le profil de %s. Le réimporter écrasera tous vos paramètres pour ce profil. Êtes-vous sûr de vouloir continuer?"
L["ImportExport_DialogTitle"] = "Confirmation d'importation sArena"
L["Message_MidnightWarningTitle"] = "|cffa020f0Avertissement Bêta Midnight|r"
L["Message_MidnightWarningText"] = "Midnight est en Bêta et le Mode Édition cause\ndes erreurs sur les nouveaux DRs.\n\n|cffFFFF00Rechargez l'UI pour corriger.|r\n\nCet avertissement sera supprimé dès que\nBlizzard corrigera le Mode Édition et les DRs."
L["Button_ReloadUI"] = "Recharger l'UI"
L["DR_CategoriesPerSpec"] = "Catégories (Par Spec: %s)"
L["DR_CategoriesPerClass"] = "Catégories (Par Classe: %s)"
L["DR_CategoriesGlobal"] = "Catégories (Global)"
L["DR_IconsPerSpec"] = "Configurer les icônes DR (Par Spec: %s)"
L["DR_IconsPerClass"] = "Configurer les icônes DR (Par Classe: %s)"
L["DR_IconsGlobal"] = "Configurer les icônes DR (Global)"
L["Option_ShowDecimalsOnClassIcon_Desc"] = "Afficher les décimales sur l'icône de classe quand la durée est inférieure à 6 secondes.\n\nUniquement pour les utilisateurs sans OmniCC."
L["Option_ShowDecimalsOnDRs_Desc"] = "Afficher les décimales sur les DRs quand la durée est inférieure à 6 secondes.\n\nUniquement pour les utilisateurs sans OmniCC."
L["Option_StreamerProfiles_Desc"] = "Importer des profils préconfigurés de streamers populaires.\nVous garderez tous vos profils actuels y compris votre profil actif \"|cff00ff00%s|r\".\nPour changer de profil à nouveau, allez dans l'onglet Profils."
L["Unknown"] = "Inconnu"
L["Unknown_Spell"] = "Sort inconnu"
L["Cooldown_Seconds"] = "Temps de recharge: %d secondes"
L["SelectAll"] = "Tout sélectionner"

---------------------------------------
-- Data Collection
---------------------------------------

L["DataCollection_NotEnabled"] = "La collecte de données n'est pas activée. Définissez d'abord db.collectData = true."
L["DataCollection_NoDataYet"] = "Aucune donnée de sort n'a encore été collectée."
L["DataCollection_ExportTitle"] = "Données de sorts collectées par sArena"
L["DataCollection_ExportComplete"] = "%d entrées totales collectées. Données affichées dans la fenêtre d'exportation."

L["Print_CurrentVersion"] = "Version actuelle: %s"
L["Print_MultipleVersionsLoaded"] = "Deux versions différentes de sArena sont chargées. Veuillez sélectionner comment continuer en tapant /sarena"

L["Conflict_MultipleVersions"] = "Plusieurs versions de sArena détectées"
L["Conflict_Warning"] = "|A:services-icon-warning:20:20|a |cffff4444Deux versions différentes de sArena sont activées|r |A:services-icon-warning:20:20|a"
L["Conflict_Explanation"] = "|cffffffffDeux versions différentes de sArena ne peuvent pas fonctionner correctement ensemble.\nVous devrez n'en utiliser qu'une. Vous avez 3 options:|r"
L["Conflict_UseOther"] = "|cffffffffUtiliser l'autre sArena|r"
L["Conflict_UseOther_Desc"] = "Ceci désactivera |cffffffffsArena Updated 2 by sammers et utilisera à la place votre autre sArena et rechargera votre UI."
L["Conflict_UseOther_Confirm"] = "Ceci désactivera |cffffffffsArena Updated 2 by sammers et utilisera l'autre sArena et rechargera votre UI.\n\nContinuer?"
L["Conflict_UseReloaded_Import"] = "|cffffffffUtiliser sArena Updated 2 by sammers: Importer les autres paramètres"
L["Conflict_UseReloaded_Import_Desc"] = "Ceci copiera votre profil actuel et les paramètres existants de l'autre sArena, désactivera l'autre sArena pour la compatibilité, et rechargera votre UI pour que vous puissiez commencer à utiliser sArena Updated 2 by sammers"
L["Conflict_UseReloaded_Import_Confirm"] = "Ceci copiera votre profil actuel et les paramètres existants de l'autre sArena, désactivera l'autre sArena pour la compatibilité, et rechargera votre UI pour que vous puissiez commencer à utiliser sArena Updated 2 by sammers\n\nContinuer?"
L["Conflict_UseReloaded_NoImport"] = "|cffffffffUtiliser sArena Updated 2 by sammers: Ne pas importer les autres paramètres"
L["Conflict_UseReloaded_NoImport_Desc"] = "Ceci désactivera l'autre sArena pour la compatibilité et rechargera votre UI pour que vous puissiez commencer à utiliser sArena Updated 2 by sammers sans vos autres paramètres."
L["Conflict_UseReloaded_NoImport_Confirm"] = "Ceci désactivera l'autre sArena pour la compatibilité et rechargera votre UI pour que vous puissiez commencer à utiliser sArena Updated 2 by sammers sans vos autres paramètres.\n\nContinuer?"
L["Midnight_UpdateInfo"] = "|cff00ff00MISE À JOUR: Tout maintenant disponible sur Midnight.|r\n\nJe prévois de continuer à développer |cffffffffsArena Updated 2 by sammers pour Midnight également.\n\nCertaines fonctionnalités devront être ajustées ou supprimées mais l'addon restera.\nMidnight est encore en Alpha précoce et je n'ai pas encore commencé la préparation (14 Oct), mais bientôt.\n\nLes plans peuvent changer, mais je suis confiant que |cffffffffsArena Updated 2 by sammers et mes autres addons\n|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates resteront pour Midnight (avec changements/suppressions).\n\nJ'ai beaucoup de travail devant moi, et tout soutien est grandement apprécié. (|cff00c0ff@bodify|r)\nJe mettrai à jour cette section avec plus d'informations détaillées quand j'en saurai plus dans quelques semaines/mois."
L["Midnight_BetaInfo"] = "Bienvenue sur Midnight! Mes autres addons |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates sont également en cours de développement.\n\nLes choses changeront rapidement pendant le développement ici, surtout quand la nouvelle API sera disponible.\nCette Bêta Midnight est prématurée et beaucoup de choses manquent encore dans le jeu.\nJ'expérimenterai avec beaucoup de choses jusqu'à la sortie de Midnight.\n\nActuellement cela a changé:\n1) Les DRs sont maintenant gérés par Blizzard, sArena ajuste seulement ce qui est permis.\n 1.1) Paramètre d'écart supprimé.\n 1.2) Dimensionnement individuel supprimé.\n 1.3) Croissance haut/bas supprimée.\n 1.4) Les icônes sont maintenant les icônes bizarres de Blizzard, ces paramètres supprimés.\n2) Les auras non-CC ne sont plus affichées, seulement les CC que Blizzard nous laisse voir.\n3) Absorptions sur les cadres supprimées.\n4) Le temps de recharge racial ne peut pas être suivi, mais la raciale est toujours visible.\n5) Dissipations supprimées..\n\nTout n'est pas complètement défini et il pourrait y avoir de nouvelles choses mais on verra. Je garderai ceci à jour ici."

