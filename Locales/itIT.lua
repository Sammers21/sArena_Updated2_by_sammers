-- Italian localization for sArena Updated 2 by sammers
-- sArena Updated 2 by sammers Localizzazione Italiana

local locale = GetLocale()
if locale ~= "itIT" then return end

local L = sArenaMixin.L

---------------------------------------
-- Common Terms
---------------------------------------

L["Yes"] = "Sì"
L["No"] = "No"
L["Enable"] = "Abilita"
L["Disable"] = "Disabilita"
L["Reset"] = "Reimposta"
L["Scale"] = "Scala"
L["Size"] = "Dimensione"
L["Width"] = "Larghezza"
L["Height"] = "Altezza"
L["Horizontal"] = "Orizzontale"
L["Vertical"] = "Verticale"
L["Spacing"] = "Spaziatura"
L["Positioning"] = "Posizionamento"
L["Sizing"] = "Dimensionamento"
L["Options"] = "Opzioni"
L["BorderSize"] = "Dimensione bordo"
L["GrowthDirection"] = "Direzione crescita"
L["AnchorPoint"] = "Punto di ancoraggio"

---------------------------------------
-- Directions
---------------------------------------

L["Direction_Down"] = "Giù"
L["Direction_Up"] = "Su"
L["Direction_Right"] = "Destra"
L["Direction_Left"] = "Sinistra"
L["Direction_Center"] = "Centro"
L["Direction_TopLeft"] = "Alto Sinistra"
L["Direction_Top"] = "Alto"
L["Direction_TopRight"] = "Alto Destra"
L["Direction_BottomLeft"] = "Basso Sinistra"
L["Direction_Bottom"] = "Basso"
L["Direction_BottomRight"] = "Basso Destra"

---------------------------------------
-- Font Outlines
---------------------------------------

L["Outline_None"] = "Nessun contorno"
L["Outline_Normal"] = "Contorno"
L["Outline_Thick"] = "Contorno spesso"

---------------------------------------
-- Messages
---------------------------------------

L["Message_MustLeaveCombat"] = "Devi prima uscire dal combattimento."

---------------------------------------
-- Diminishing Returns Categories
---------------------------------------

L["DR_Stun"] = "Stordimento"
L["DR_Incapacitate"] = "Incapacitazione"
L["DR_Disorient"] = "Disorientamento"
L["DR_Silence"] = "Silenzio"
L["DR_Root"] = "Immobilizzazione"
L["DR_Knock"] = "Spinta"
L["DR_Disarm"] = "Disarmo"
L["DR_Fear"] = "Paura"
L["DR_Horror"] = "Orrore"
L["DR_Cyclone"] = "Ciclone"
L["DR_MindControl"] = "Controllo mentale"
L["DR_RandomStun"] = "Stordimento casuale"
L["DR_RandomRoot"] = "Immobilizzazione casuale"
L["DR_Charge"] = "Carica"

---------------------------------------
-- Race Names
---------------------------------------

L["Race_Human"] = "Umano"
L["Race_Scourge"] = "Non Morto"
L["Race_Dwarf"] = "Nano"
L["Race_NightElf"] = "Elfo della Notte"
L["Race_Gnome"] = "Gnomo"
L["Race_Draenei"] = "Draenei"
L["Race_Worgen"] = "Worgen"
L["Race_Pandaren"] = "Pandaren"
L["Race_Orc"] = "Orco"
L["Race_Tauren"] = "Tauren"
L["Race_Troll"] = "Troll"
L["Race_BloodElf"] = "Elfo del Sangue"
L["Race_Goblin"] = "Goblin"
L["Race_LightforgedDraenei"] = "Draenei Forgialuce"
L["Race_HighmountainTauren"] = "Tauren di Alto Monte"
L["Race_Nightborne"] = "Nobile Oscuro"
L["Race_MagharOrc"] = "Orco Mag'har"
L["Race_DarkIronDwarf"] = "Nano Ferroscuro"
L["Race_ZandalariTroll"] = "Troll Zandalari"
L["Race_VoidElf"] = "Elfo del Vuoto"
L["Race_KulTiran"] = "Kultireno"
L["Race_Mechagnome"] = "Meccagnomo"
L["Race_Vulpera"] = "Vulpera"
L["Race_Dracthyr"] = "Dracthyr"
L["Race_EarthenDwarf"] = "Terrigeno"
L["Race_Harronir"] = "Harronir"

---------------------------------------
-- Main Categories
---------------------------------------

L["Category_ArenaFrames"] = "Riquadri Arena"
L["Category_SpecIcons"] = "Icone Specializzazione"
L["Category_Trinkets"] = "Monili"
L["Category_Racials"] = "Abilità Razziali"
L["Category_Dispels"] = "Dissolvi"
L["Category_CastBars"] = "Barre di Lancio"
L["Category_DiminishingReturns"] = "Rendimenti Decrescenti"
L["Category_Widgets"] = "Widget"
L["Category_TextSettings"] = "Impostazioni Testo"
L["Category_ClassIcon"] = "Icona Classe"

---------------------------------------
-- Textures
---------------------------------------

L["Textures"] = "Texture"
L["Texture_General"] = "Texture Generale"
L["Texture_General_Desc"] = "Suggerimento: Se hai sostituito le texture predefinite di WoW con le tue, seleziona \"Blizzard Raid Bar\"."
L["Texture_Healer"] = "Texture Guaritore"
L["Texture_Healer_Desc"] = "Suggerimento: Attivo solo durante lo stacking di classe. Deseleziona \"Solo stacking di classe\" se vuoi cambiare sempre la texture."
L["Texture_ClassStackingOnly"] = "Solo stacking di classe"
L["Texture_ClassStackingOnly_Desc"] = "Cambia la texture del guaritore solo durante lo stacking di classe.\n\nAd esempio quando c'è un Druido Restaurazione e un Ferino nella squadra nemica."
L["Texture_Background"] = "Texture Sfondo"
L["Texture_Background_Desc"] = "Texture per gli sfondi delle barre vita/energia."
L["Texture_BackgroundColor"] = "Colore Sfondo"
L["Texture_BackgroundColor_Desc"] = "Colore per gli sfondi delle barre vita/energia."

---------------------------------------
-- Arena Frames Options
---------------------------------------

L["Option_ReplaceClassIcon"] = "Sostituisci icona classe"
L["Option_ReplaceClassIcon_Desc"] = "Sostituisci l'icona della classe con l'icona della specializzazione e nascondi il piccolo \"pulsante icona spec\""
L["Option_GrowthDirection"] = "Direzione crescita"
L["Option_SpacingBetweenFrames"] = "Spaziatura tra i riquadri arena"
L["Option_SpacingBetweenFrames_Desc"] = "Spaziatura tra ogni riquadro arena"
L["Option_ClassIconCDFontSize"] = "Dimensione font CD icona classe"
L["Option_ClassIconCDFontSize_Desc"] = "Funziona solo con il conto alla rovescia di Blizzard (non OmniCC)"
L["Option_FontSize"] = "Dimensione Font"
L["Option_FontSize_Desc"] = "Funziona solo con il conto alla rovescia di Blizzard (non OmniCC)"
L["Option_MirroredFrames"] = "Riquadri speculari"
L["Option_PowerBarHeight"] = "Altezza barra energia"
L["Option_SpecTextOnManabar"] = "Testo spec sulla barra mana"
L["Option_CropIcons"] = "Ritaglia icone"
L["Option_PixelBorderSize"] = "Dimensione bordo pixel"
L["Option_PixelBorderOffset"] = "Offset bordo pixel"
L["Option_DRPixelBorderSize"] = "Dimensione bordo pixel DR"
L["Option_HideNameBackground"] = "Nascondi sfondo nome"
L["Option_BigHealthbar"] = "Barra vita grande"
L["Option_TrinketCircleBorder"] = "Bordo circolare monile"
L["Option_TrinketCircleBorder_Desc"] = "Abilita il bordo circolare per le icone dei monili"
L["Option_DisableOvershields"] = "Disabilita sovra-scudi"
L["Option_DisableOvershields_Desc"] = "Disabilita l'assorbimento che si mostra dietro sulla barra vita quando supera la vita massima"

---------------------------------------
-- Cast Bars
---------------------------------------

L["Castbar_Look"] = "Aspetto barra di lancio"
L["Castbar_UseModern"] = "Usa barre moderne"
L["Castbar_UseModern_Desc"] = "Usa le nuove barre di lancio moderne retail."
L["Castbar_KeepDefaultModernTextures"] = "Mantieni texture moderne predefinite"
L["Castbar_KeepDefaultModernTextures_Desc"] = "Mantiene le nuove texture moderne per le barre di lancio. Ignora la texture impostata."
L["Castbar_Simple"] = "Barra di lancio semplice"
L["Castbar_Simple_Desc"] = "Nasconde lo sfondo del testo della barra e sposta il testo all'interno della barra."
L["Castbar_HideShield"] = "Nascondi scudo su non interrompibile"
L["Castbar_HideShield_Desc"] = "Nasconde la texture dello scudo attorno all'icona dell'incantesimo sui lanci non interrompibili."
L["Castbar_HideSpark"] = "Nascondi scintilla barra"
L["Castbar_HideSpark_Desc"] = "Nasconde la scintilla che segue sulla barra di lancio"
L["Castbar_HideIcon"] = "Nascondi icona barra"
L["Castbar_HideIcon_Desc"] = "Nasconde l'icona dell'incantesimo sulla barra di lancio"
L["Castbar_Texture"] = "Texture barra di lancio"
L["Castbar_UninterruptibleTexture"] = "Texture non interrompibile"
L["Castbar_Colors"] = "Colori barra di lancio"
L["Castbar_RecolorCastbar"] = "Ricolora barra di lancio"
L["Castbar_RecolorCastbar_Desc"] = "Abilita colori personalizzati per la barra di lancio"
L["Castbar_Cast"] = "Lancio"
L["Castbar_Channeled"] = "Canalizzato"
L["Castbar_Uninterruptible"] = "Non interrompibile"
L["Castbar_InterruptNotReady"] = "Interruzione non pronta"
L["Castbar_EnableNoInterruptColor"] = "Abilita colore senza interruzione"
L["Castbar_EnableNoInterruptColor_Desc"] = "Abilita per colorare le barre di lancio di questo colore quando non hai un'interruzione pronta"
L["Castbar_InterruptNotReadyColor"] = "Colore interruzione non pronta"
L["Castbar_Position"] = "Posizione barra di lancio"
L["Castbar_IconPosition"] = "Posizione icona"
L["Castbar_CastbarSize"] = "Dimensione barra di lancio"
L["Castbar_IconSize"] = "Dimensione icona"
L["Castbar_IconScale"] = "Scala icona"

---------------------------------------
-- Diminishing Returns Options
---------------------------------------

L["DR_BrightBorder"] = "Bordo DR luminoso"
L["DR_BlackBorder"] = "Bordo DR nero"
L["DR_BlackBorder_Desc"] = "Rende i bordi DR neri. Combina con l'opzione Mostra testo DR"
L["DR_ShowText"] = "Mostra testo DR"
L["DR_ShowText_Desc"] = "Mostra il testo sulle icone DR che indica lo stato attuale del DR."
L["DR_DisableBorderGlow"] = "Disabilita bagliore bordo DR"
L["DR_ThickPixelBorder"] = "Bordo pixel spesso"
L["DR_ThinPixelBorder"] = "Bordo pixel sottile"
L["DR_DisableBorder"] = "Disabilita bordo DR"
L["DR_DisableBorder_Desc"] = "Nasconde completamente i bordi DR"
L["DR_BorderSize"] = "Dimensione bordo"
L["DR_SpecificSizeAdjustment"] = "Regolazione dimensione specifica DR"

---------------------------------------
-- Widgets
---------------------------------------

L["Widget_CombatIndicator"] = "Indicatore combattimento"
L["Widget_CombatIndicator_Enable"] = "Abilita indicatore combattimento"
L["Widget_CombatIndicator_Desc"] = "Mostra un'icona cibo quando il nemico non è in combattimento"
L["Widget_TargetIndicator"] = "Indicatore bersaglio"
L["Widget_TargetIndicator_Enable"] = "Abilita indicatore bersaglio"
L["Widget_TargetIndicator_Desc"] = "Mostra un'icona sul tuo bersaglio attuale"
L["Widget_FocusIndicator"] = "Indicatore focus"
L["Widget_FocusIndicator_Enable"] = "Abilita indicatore focus"
L["Widget_FocusIndicator_Desc"] = "Mostra un'icona sul tuo focus attuale"
L["Widget_PartyTargetIndicators"] = "Indicatori bersaglio gruppo"
L["Widget_PartyTargetIndicators_Enable"] = "Abilita indicatori bersaglio gruppo"
L["Widget_PartyTargetIndicators_Desc"] = "Mostra icone colorate per classe sui riquadri arena che i membri del tuo gruppo stanno bersagliando"

---------------------------------------
-- Text Settings
---------------------------------------

L["Text_Fonts"] = "Font"
L["Text_ChangeFont"] = "Cambia font"
L["Text_ChangeFont_Desc"] = "Cambia i font usati da sArena"
L["Text_FrameFont"] = "Font riquadro"
L["Text_FrameFont_Desc"] = "Usato per etichette come nome, valori vita/energia, testo lancio, ecc."
L["Text_CooldownFont"] = "Font recupero"
L["Text_CooldownFont_Desc"] = "Usato per i numeri del tempo di recupero (monile, DR, razziali, ecc.)."
L["Text_FontOutline"] = "Contorno font"
L["Text_FontOutline_Desc"] = "Scegli lo stile del contorno per tutti gli elementi di testo."
L["Text_NameText"] = "Testo nome"
L["Text_HealthText"] = "Testo vita"
L["Text_ManaText"] = "Testo mana"
L["Text_SpecNameText"] = "Testo nome spec"
L["Text_CastbarText"] = "Testo barra di lancio"
L["Text_DRText"] = "Testo DR"
L["Text_AnchorPoint"] = "Punto di ancoraggio"

---------------------------------------
-- Status Text
---------------------------------------

L["Status_Health"] = "Vita"
L["Status_Power"] = "Energia"
L["Status_HealthPercent"] = "Vita percentuale"
L["Status_PowerPercent"] = "Energia percentuale"
L["Status_HealthAndPower"] = "Vita e energia"
L["Status_HealthAndPowerPercent"] = "Vita e energia percentuale"

---------------------------------------
-- Additional Options and Messages
---------------------------------------

L["Layout_Settings"] = "Impostazioni layout"
L["Layout_Settings_Desc"] = "Queste impostazioni si applicano solo al layout selezionato"
L["Global_Settings"] = "Impostazioni globali"
L["Global_Settings_Desc"] = "Queste impostazioni si applicano a tutti i layout"

L["Text_ShowOnMouseover_Desc"] = "Se disabilitato, il testo viene mostrato solo al passaggio del mouse"
L["Text_FormatLargeNumbers_Desc"] = "Formatta i numeri grandi. 18888 K -> 18.88 M"
L["Text_HidePowerText"] = "Nascondi testo energia"
L["Text_HidePowerText_Desc"] = "Nascondi il testo di mana/rabbia/energia"

L["DarkMode_Enable"] = "Abilita modalità scura"
L["DarkMode_Enable_Desc"] = "Abilita la modalità scura per i riquadri arena."
L["DarkMode_Value"] = "Valore modalità scura"
L["DarkMode_Value_Desc"] = "Imposta il valore di oscurità per i riquadri in modalità scura (0 = nero, 1 = luminosità normale)."
L["DarkMode_Desaturate_Desc"] = "Rimuovi tutti i colori dalle texture in modalità scura.\n\n|cff888888Questo è il comportamento predefinito ma con alcuni layout potresti preferire mantenere un po' del colore originale.|r"

L["ClassColor_Healthbars"] = "Barre vita colore classe"
L["ClassColor_Healthbars_Desc"] = "Quando disabilitato, le barre vita saranno verdi"
L["ClassColor_FrameTexture"] = "Texture riquadro colore classe"
L["ClassColor_FrameTexture_Desc"] = "Applica i colori delle classi alle texture dei riquadri (bordi)"
L["ClassColor_OnlyClassIcon"] = "Solo icona classe"
L["ClassColor_OnlyClassIcon_Desc"] = "Applica il colore della classe solo al bordo dell'icona della classe, non alle altre texture"
L["ClassColor_HealerGreen"] = "Colora guaritore in verde"
L["ClassColor_HealerGreen_Desc"] = "Cambia i riquadri dei guaritori in verde brillante invece del colore della classe"
L["ClassColor_NameText"] = "Testo nome colore classe"
L["ClassColor_NameText_Desc"] = "Quando abilitato, i nomi dei giocatori saranno colorati per classe"

L["Icon_ReplaceHealerWithHealerIcon"] = "Sostituisci guaritore con icona guaritore"
L["Icon_ReplaceHealerWithHealerIcon_Desc"] = "Sostituisci l'icona classe/spec del guaritore con un'icona guaritore."
L["Healthbar_ReverseFill"] = "Riempimento inverso barra vita"
L["Healthbar_ReverseFill_Desc"] = "Fai riempire le barre vita e energia da destra a sinistra"
L["ClassIcon_HideAndShowOnlyAuras"] = "Nascondi icona classe, mostra solo aure"
L["ClassIcon_HideAndShowOnlyAuras_Desc"] = "Nascondi l'icona della classe e mostra solo le aure quando sono attive."
L["ClassIcon_DontShowAuras"] = "Non mostrare aure sull'icona classe"
L["ClassIcon_DontShowAuras_Desc"] = "Non mostrare aure sulle icone delle classi, mostra sempre l'icona classe/spec."

L["Trinket_MinimalistDesign"] = "Design minimalista monile"
L["Trinket_MinimalistDesign_Desc"] = "Sostituisci la texture del monile con un colore verde solido quando pronto e rosso in recupero."
L["MysteryPlayer_GrayBars"] = "Barre grigie giocatore misterioso"
L["MysteryPlayer_GrayBars_Desc"] = "Colora i giocatori misteriosi con barre di stato grigie invece dei loro colori di classe. I giocatori misteriosi sono giocatori non visti, come prima dell'apertura delle porte e quelli in occultamento."

L["Cooldown_ShowDecimalsThreshold_Desc"] = "Mostra i decimali quando il tempo rimanente è sotto questa soglia. Predefinito 6 secondi."
L["Cooldown_DisableBrightEdge"] = "Disabilita bordo luminoso sulle spirali di recupero"
L["Cooldown_DisableBrightEdge_Desc"] = "Disabilita il bordo luminoso sulle spirali di recupero per tutte le icone."
L["Cooldown_DisableClassIconSwipe"] = "Disabilita animazione icona classe"
L["Cooldown_DisableClassIconSwipe_Desc"] = "Disabilita l'animazione spirale di recupero sull'icona della classe."
L["Cooldown_DisableDRSwipe"] = "Disabilita animazione DR"
L["Cooldown_DisableDRSwipe_Desc"] = "Disabilita l'animazione spirale di recupero sulle icone DR."
L["Cooldown_DisableTrinketRacialSwipe"] = "Disabilita animazione monile e razziale"
L["Cooldown_DisableTrinketRacialSwipe_Desc"] = "Disabilita l'animazione spirale di recupero sulle icone monile e razziale."
L["Cooldown_ReverseClassIcon"] = "Inverti recupero icona classe"
L["Cooldown_ReverseClassIcon_Desc"] = "Inverti la direzione del recupero dell'icona della classe. Cambia se iniziano vuote e si riempiono, o piene e si svuotano."
L["Cooldown_ReverseDR"] = "Inverti recupero DR"
L["Cooldown_ReverseDR_Desc"] = "Inverti la direzione dell'animazione di recupero DR."
L["Cooldown_ReverseTrinketRacial"] = "Inverti recupero monile e razziale"
L["Cooldown_ReverseTrinketRacial_Desc"] = "Inverti la direzione del recupero del monile e della razziale."

L["Masque_Support"] = "Abilita supporto Masque"
L["Masque_Support_Desc"] = "Clicca per abilitare il supporto Masque per i bordi delle icone.\n\nAttualmente, questo richiede di disabilitare Backdrop nelle impostazioni Masque per un rendering corretto."
L["Trinket_HideWhenNoTrinket"] = "Nascondi monile quando non equipaggiato"
L["Trinket_HideWhenNoTrinket_Desc"] = "Nasconde la texture della bandiera bianca nello slot del monile (che significa nessun monile equipaggiato). Nessuna texture sarà mostrata."
L["Trinket_DesaturateOnCD"] = "Desatura monile in recupero"
L["Trinket_DesaturateOnCD_Desc"] = "Desatura l'icona del monile quando è in tempo di recupero."
L["Dispel_DesaturateOnCD"] = "Desatura dissolvi in recupero"
L["Dispel_DesaturateOnCD_Desc"] = "Desatura l'icona del dissolvi quando è in tempo di recupero."

L["DR_ClassSpecific"] = "Categorie DR specifiche per classe"
L["DR_ClassSpecific_Desc"] = "Quando abilitato, le categorie DR sotto diventano specifiche per la tua classe attuale.\n\n|cff888888Include tutte le categorie per impostazione predefinita, non vedrai un cambiamento immediato, devi cambiare manualmente quelle che vuoi personalizzare.|r"
L["DR_SpecSpecific"] = "Categorie DR specifiche per specializzazione"
L["DR_SpecSpecific_Desc"] = "Quando abilitato, le categorie DR sotto diventano specifiche per la tua specializzazione attuale.\n\n|cff888888Include tutte le categorie per impostazione predefinita, non vedrai un cambiamento immediato, devi cambiare manualmente quelle che vuoi personalizzare.|r"
L["DR_FixedIcons"] = "Icone DR fisse"
L["DR_FixedIcons_Desc"] = "Le icone DR useranno sempre un'icona specifica per ogni categoria DR."
L["DR_ClassSpecificIcons"] = "Icone DR specifiche per classe"
L["DR_ClassSpecificIcons_Desc"] = "Quando abilitato, le icone sotto diventano specifiche per la tua classe attuale.\n\n|cff888888Include tutte le icone per impostazione predefinita, non vedrai un cambiamento immediato, devi cambiare manualmente quelle che vuoi personalizzare.|r"
L["DR_SpecSpecificIcons"] = "Icone DR specifiche per specializzazione"
L["DR_SpecSpecificIcons_Desc"] = "Quando abilitato, le icone sotto diventano specifiche per la tua specializzazione attuale.\n\n|cff888888Include tutte le icone per impostazione predefinita, non vedrai un cambiamento immediato, devi cambiare manualmente quelle che vuoi personalizzare.|r"

L["Racial_ShowInTrinketSlot"] = "Mostra razziale nello slot monile senza monile"
L["Racial_ShowInTrinketSlot_Desc"] = "Se il nemico non ha un monile, rimuovi lo spazio e mostra la sua razziale al posto del monile."
L["Human_AlwaysShowTrinket"] = "Mostra sempre monile Alleanza per gli umani"
L["Human_AlwaysShowTrinket_Desc"] = "Mostra sempre la texture del monile dell'Alleanza sui giocatori umani, anche se non hanno un monile equipaggiato."

L["Drag_Hint"] = "Ctrl+Shift+Click per trascinare"
L["Drag_Hint_Active"] = "Puoi spostarlo ora!"

L["Option_AddonConflict"] = "Conflitto addon"
L["Option_Layout"] = "Layout"
L["Option_Test"] = "Test"
L["Option_Hide"] = "Nascondi"
L["Option_ArenaFrames"] = "Riquadri arena"
L["Option_StatusText"] = "Testo stato"
L["Option_AlwaysShow"] = "Mostra sempre"
L["Option_UsePercentage"] = "Usa percentuale"
L["Option_FormatNumbers"] = "Formatta numeri"
L["Option_DarkMode"] = "Modalità scura"
L["Option_Desaturate"] = "Desatura"
L["Option_ClassColorNames"] = "Nomi colore classe"
L["Option_ReplaceHealerIcon"] = "Sostituisci icona guaritore"
L["Option_ShowNames"] = "Mostra nomi"
L["Option_ShowArenaNumber"] = "Mostra numero arena"
L["Option_ReverseBarsFill"] = "Inverti riempimento barre"
L["Option_HideClassIconShowAurasOnly"] = "Nascondi icona classe (solo aure)"
L["Option_DisableAurasOnClassIcon"] = "Disabilita aure su icona classe"
L["Option_ShadowsightTimer"] = "Abilita timer Vistaombrosa"
L["Option_ShadowsightTimer_Desc"] = "Mostra un timer in cima allo schermo per i buff Vistaombrosa in arena"
L["Shadowsight_Ready"] = "Vistaombrosa pronta"
L["Shadowsight_SpawnsIn"] = "Vistaombrosa appare tra %d sec"
L["Option_ColorTrinket"] = "Colora monile"
L["Option_ColorNonVisibleFramesGray"] = "Colora riquadri non visibili in grigio"
L["Option_ShowDecimalsOnClassIcon"] = "Mostra decimali su icona classe"
L["Option_DecimalThreshold"] = "Soglia decimali"
L["Option_SwipeAnimations"] = "Animazioni swipe"
L["Option_DisableCooldownSwipeEdge"] = "Disabilita bordo swipe recupero"
L["Option_DisableClassIconSwipe"] = "Disabilita swipe icona classe"
L["Option_DisableDRSwipeAnimation"] = "Disabilita animazione swipe DR"
L["Option_DisableTrinketRacialSwipe"] = "Disabilita swipe monile e razziale"
L["Option_ReverseClassIconSwipe"] = "Inverti swipe icona classe"
L["Option_ReverseDRSwipeAnimation"] = "Inverti animazione swipe DR"
L["Option_ReverseTrinketRacialSwipe"] = "Inverti swipe monile e razziale"
L["Option_Miscellaneous"] = "Varie"
L["Option_EnableMasqueSupport"] = "Abilita supporto Masque"
L["Option_RemoveUnEquippedTrinketTexture"] = "Rimuovi texture monile non equipaggiato"
L["Option_DesaturateTrinketCD"] = "Desatura TR monile"
L["Option_DesaturateDispelCD"] = "Desatura TR dissolvi"
L["Option_DRResetTime"] = "Tempo reset DR"
L["Option_ShowDecimalsOnDRs"] = "Mostra decimali sui DR"
L["Option_ColorDRCooldownText"] = "Colora testo TR DR per severità"
L["Option_ColorDRCooldownText_Desc"] = "Colora il testo del conto alla rovescia DR in base alla severità.\n\n|cff00ff00Verde|r per ½ diminuzione\n|cffffff00Giallo|r per ¼ diminuzione\n|cffff0000Rosso|r per immune"
L["Option_ColorDRCooldownText_Desc_Midnight"] = "Colora il testo del conto alla rovescia DR in base alla severità.\n\n|cff00ff00Verde|r per ½ diminuzione\n|cffff0000Rosso|r per immune"
L["Option_DRCategories"] = "Categorie DR"
L["Option_PerClass"] = "Per classe"
L["Option_PerSpec"] = "Per specializzazione"
L["Option_DRIcons"] = "Icone DR"
L["Option_EnableStaticIcons"] = "Abilita icone statiche"
L["Option_Categories"] = "Categorie"
L["Option_SwapMissingTrinketWithRacial"] = "Scambia monile mancante con razziale"
L["Option_ForceShowTrinketOnHuman"] = "Forza mostra monile su umano"
L["Option_ReplaceHumanRacialWithTrinket"] = "Sostituisci razziale umana con monile"
L["Option_ShowDispels"] = "Mostra dissolvi"
L["Option_HealerDispels"] = "Dissolvi guaritore"
L["Option_DPSDispels"] = "Dissolvi DPS"
L["Option_OthersArena"] = "Altro sArena"
L["Option_ImportSettings"] = "Importa impostazioni"
L["Option_ShareProfile"] = "Condividi profilo"
L["Option_ExportCurrentProfile"] = "Esporta profilo attuale"
L["Option_ExportString"] = "Stringa di esportazione"
L["Option_PasteProfileString"] = "Incolla stringa profilo"
L["Option_ImportDescription"] = "Questo importerà le tue impostazioni dall'altro sArena nella nuova versione sArena Updated 2 by sammers.\n\nAssicurati che entrambi gli addon siano abilitati, poi clicca il pulsante sotto."
L["Message_NoLayoutSettings"] = "Il layout selezionato non sembra avere impostazioni."
L["Option_ReplaceHumanRacialWithTrinket_Desc"] = "Sostituisci l'abilità razziale umana con la texture del monile dell'Alleanza nello slot razziale."
L["Option_ShowDispels_Desc"] = "Abilita per mostrare il tempo di recupero del dissolvi sui riquadri arena."
L["Option_OthersArena_Desc"] = "Importa impostazioni da un altro sArena"
L["Option_ImportSettings_Desc"] = "Importa le tue impostazioni dall'altra versione di sArena."
L["Option_MidnightPlans_Desc"] = "Piani per World of Warcraft: Midnight"
L["Option_ShareProfile_Desc"] = "Esporta o importa un profilo sArena"
L["Option_ExportString_Desc"] = "|cff32f795Ctrl+A|r per selezionare tutto, |cff32f795Ctrl+C|r per copiare"
L["Option_PasteProfileString_Desc"] = "|cff32f795Ctrl+V|r per incollare la stringa del profilo copiata"
L["Option_TrinketCircleBorder_Desc"] = "Abilita il bordo circolare per le icone dei monili"
L["Option_DefaultIcon_Desc"] = "Icona predefinita: %s |T%s:24|t"
L["Option_ImportProfile_Desc"] = "Importa le impostazioni del profilo di %s.\n\n%swww.twitch.tv/%s|r"
L["Option_DPSDispelsNote"] = "|cFFFFFF00Nota:|r I dissolvi DPS appaiono solo dopo essere stati usati una volta."
L["Option_DispelsBetaNotice"] = "\n|cFF808080I dissolvi sono in BETA.\nNecessario confermare alcuni ID incantesimi, specialmente in Mists of Pandaria.\nLe cose hanno ancora bisogno di più test (in attesa del PTR) e potrebbero cambiare.\nSe vuoi contribuire con info/feedback/ID incantesimi, sentiti libero!|r"
L["Option_ExportProfileHeader"] = "|cffffff00Esporta profilo:|r"
L["Option_ImportProfileHeader"] = "|cffffff00Importa profilo:|r"
L["Option_StreamerProfilesHeader"] = "|cffffff00Profili streamer:|r"

L["Message_InvalidFormat"] = "Formato non valido."
L["Message_DecompressionError"] = "Errore di decompressione: %s"
L["Message_DeserializationError"] = "Errore di deserializzazione o formato non valido."
L["Message_ImportFailed"] = "|cffff4040Importazione fallita:|r"
L["Message_ExportFailed"] = "Esportazione fallita:"
L["Message_NoProfileFound"] = "Nessun profilo trovato per il personaggio attuale."
L["Message_ProfileDataNotFound"] = "Dati profilo non trovati."
L["Message_IncorrectDataType"] = "Tipo di dati non corretto."
L["Message_ProfileOverwrite"] = "Hai già il profilo di %s. Reimportarlo sovrascriverà tutte le tue impostazioni per quel profilo. Sei sicuro di voler continuare?"
L["ImportExport_DialogTitle"] = "Conferma importazione sArena"
L["Message_MidnightWarningTitle"] = "|cffa020f0Avviso Beta Midnight|r"
L["Message_MidnightWarningText"] = "Midnight è in Beta e la Modalità Modifica sta causando\nerrori sui nuovi DR.\n\n|cffFFFF00Ricarica l'UI per risolvere.|r\n\nQuesto avviso sarà rimosso non appena\nBlizzard risolverà la Modalità Modifica e i DR."
L["Button_ReloadUI"] = "Ricarica UI"
L["DR_CategoriesPerSpec"] = "Categorie (Per Spec: %s)"
L["DR_CategoriesPerClass"] = "Categorie (Per Classe: %s)"
L["DR_CategoriesGlobal"] = "Categorie (Globale)"
L["DR_IconsPerSpec"] = "Configura icone DR (Per Spec: %s)"
L["DR_IconsPerClass"] = "Configura icone DR (Per Classe: %s)"
L["DR_IconsGlobal"] = "Configura icone DR (Globale)"
L["Option_ShowDecimalsOnClassIcon_Desc"] = "Mostra i decimali sull'icona della classe quando la durata è inferiore a 6 secondi.\n\nSolo per utenti senza OmniCC."
L["Option_ShowDecimalsOnDRs_Desc"] = "Mostra i decimali sui DR quando la durata è inferiore a 6 secondi.\n\nSolo per utenti senza OmniCC."
L["Option_StreamerProfiles_Desc"] = "Importa profili preconfigurati da streamer popolari.\nManterrai tutti i tuoi profili attuali incluso il tuo profilo attivo \"|cff00ff00%s|r\".\nPer cambiare di nuovo profilo, vai alla scheda Profili."
L["Unknown"] = "Sconosciuto"
L["Unknown_Spell"] = "Incantesimo sconosciuto"
L["Cooldown_Seconds"] = "Tempo di recupero: %d secondi"
L["SelectAll"] = "Seleziona tutto"

---------------------------------------
-- Data Collection
---------------------------------------

L["DataCollection_NotEnabled"] = "La raccolta dati non è abilitata. Prima imposta db.collectData = true."
L["DataCollection_NoDataYet"] = "Nessun dato incantesimo è stato ancora raccolto."
L["DataCollection_ExportTitle"] = "Dati incantesimi raccolti da sArena"
L["DataCollection_ExportComplete"] = "%d voci totali raccolte. Dati visualizzati nella finestra di esportazione."

L["Print_CurrentVersion"] = "Versione attuale: %s"
L["Print_MultipleVersionsLoaded"] = "Due versioni diverse di sArena sono caricate. Seleziona come continuare digitando /sarena"

L["Conflict_MultipleVersions"] = "Rilevate multiple versioni di sArena"
L["Conflict_Warning"] = "|A:services-icon-warning:20:20|a |cffff4444Due versioni diverse di sArena sono abilitate|r |A:services-icon-warning:20:20|a"
L["Conflict_Explanation"] = "|cffffffffDue versioni diverse di sArena non possono funzionare correttamente insieme.\nDovrai usarne solo una. Hai 3 opzioni:|r"
L["Conflict_UseOther"] = "|cffffffffUsa l'altro sArena|r"
L["Conflict_UseOther_Desc"] = "Questo disabiliterà |cffffffffsArena Updated 2 by sammers e userà invece l'altro tuo sArena e ricaricherà la tua UI."
L["Conflict_UseOther_Confirm"] = "Questo disabiliterà |cffffffffsArena Updated 2 by sammers e userà l'altro sArena e ricaricherà la tua UI.\n\nContinuare?"
L["Conflict_UseReloaded_Import"] = "|cffffffffUsa sArena Updated 2 by sammers: Importa le altre impostazioni"
L["Conflict_UseReloaded_Import_Desc"] = "Questo copierà il tuo profilo attuale e le impostazioni esistenti dall'altro sArena, disabiliterà l'altro sArena per compatibilità, e ricaricherà la tua UI così puoi iniziare a usare sArena Updated 2 by sammers"
L["Conflict_UseReloaded_Import_Confirm"] = "Questo copierà il tuo profilo attuale e le impostazioni esistenti dall'altro sArena, disabiliterà l'altro sArena per compatibilità, e ricaricherà la tua UI così puoi iniziare a usare sArena Updated 2 by sammers\n\nContinuare?"
L["Conflict_UseReloaded_NoImport"] = "|cffffffffUsa sArena Updated 2 by sammers: Non importare le altre impostazioni"
L["Conflict_UseReloaded_NoImport_Desc"] = "Questo disabiliterà l'altro sArena per compatibilità e ricaricherà la tua UI così puoi iniziare a usare sArena Updated 2 by sammers senza le tue altre impostazioni."
L["Conflict_UseReloaded_NoImport_Confirm"] = "Questo disabiliterà l'altro sArena per compatibilità e ricaricherà la tua UI così puoi iniziare a usare sArena Updated 2 by sammers senza le tue altre impostazioni.\n\nContinuare?"
L["Midnight_UpdateInfo"] = "|cff00ff00AGGIORNAMENTO: Tutto ora disponibile su Midnight.|r\n\nPrevedo di continuare a sviluppare |cffffffffsArena Updated 2 by sammers anche per Midnight.\n\nAlcune funzionalità dovranno essere regolate o rimosse ma l'addon rimarrà.\nMidnight è ancora in Alpha iniziale e non ho ancora iniziato la preparazione (14 Ott), ma presto.\n\nI piani possono cambiare, ma sono fiducioso che |cffffffffsArena Updated 2 by sammers e i miei altri addon\n|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates rimarranno per Midnight (con modifiche/rimozioni).\n\nHo molto lavoro davanti, e qualsiasi supporto è molto apprezzato. (|cff00c0ff@bodify|r)\nAggiornerò questa sezione con informazioni più dettagliate quando ne saprò di più tra qualche settimana/mese."
L["Midnight_BetaInfo"] = "Benvenuto su Midnight! I miei altri addon |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates sono anch'essi in sviluppo.\n\nLe cose cambieranno rapidamente durante lo sviluppo qui, specialmente quando sarà disponibile la nuova API.\nQuesta Beta Midnight è prematura e mancano ancora molte cose nel gioco.\nSperimenterò con molte cose fino al rilascio di Midnight.\n\nAttualmente questo è cambiato:\n1) I DR sono ora gestiti da Blizzard, sArena regola solo ciò che è permesso.\n 1.1) Impostazione spazio rimossa.\n 1.2) Dimensionamento individuale rimosso.\n 1.3) Crescita su/giù rimossa.\n 1.4) Le icone sono ora le strane icone di Blizzard, queste impostazioni rimosse.\n2) Le aure non-CC non sono più mostrate, solo i CC che Blizzard ci lascia vedere.\n3) Assorbimenti sui riquadri rimossi.\n4) Il tempo di recupero razziale non può essere tracciato, ma la razziale è ancora visibile.\n5) Dissolvi rimossi..\n\nNon tutto è completamente definito e potrebbero esserci nuove cose ma vedremo. Terrò questo aggiornato qui."

