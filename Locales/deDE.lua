-- German localization for sArena Updated 2 by sammers
-- sArena Updated 2 by sammers Deutsche Lokalisierung

local locale = GetLocale()
if locale ~= "deDE" then return end

local L = sArenaMixin.L

---------------------------------------
-- Common Terms
---------------------------------------

L["Yes"] = "Ja"
L["No"] = "Nein"
L["Enable"] = "Aktivieren"
L["Disable"] = "Deaktivieren"
L["Reset"] = "Zurücksetzen"
L["Scale"] = "Skalierung"
L["Size"] = "Größe"
L["Width"] = "Breite"
L["Height"] = "Höhe"
L["Horizontal"] = "Horizontal"
L["Vertical"] = "Vertikal"
L["Spacing"] = "Abstand"
L["Positioning"] = "Positionierung"
L["Sizing"] = "Größenanpassung"
L["Options"] = "Optionen"
L["BorderSize"] = "Rahmengröße"
L["GrowthDirection"] = "Wachstumsrichtung"
L["AnchorPoint"] = "Ankerpunkt"

---------------------------------------
-- Directions
---------------------------------------

L["Direction_Down"] = "Unten"
L["Direction_Up"] = "Oben"
L["Direction_Right"] = "Rechts"
L["Direction_Left"] = "Links"
L["Direction_Center"] = "Mitte"
L["Direction_TopLeft"] = "Oben Links"
L["Direction_Top"] = "Oben"
L["Direction_TopRight"] = "Oben Rechts"
L["Direction_BottomLeft"] = "Unten Links"
L["Direction_Bottom"] = "Unten"
L["Direction_BottomRight"] = "Unten Rechts"

---------------------------------------
-- Font Outlines
---------------------------------------

L["Outline_None"] = "Keine Umrandung"
L["Outline_Normal"] = "Umrandung"
L["Outline_Thick"] = "Dicke Umrandung"

---------------------------------------
-- Messages
---------------------------------------

L["Message_MustLeaveCombat"] = "Muss zuerst den Kampf verlassen."

---------------------------------------
-- Diminishing Returns Categories
---------------------------------------

L["DR_Stun"] = "Betäubung"
L["DR_Incapacitate"] = "Handlungsunfähigkeit"
L["DR_Disorient"] = "Desorientierung"
L["DR_Silence"] = "Stille"
L["DR_Root"] = "Wurzeln"
L["DR_Knock"] = "Rückstoß"
L["DR_Disarm"] = "Entwaffnen"
L["DR_Fear"] = "Furcht"
L["DR_Horror"] = "Horror"
L["DR_Cyclone"] = "Wirbelsturm"
L["DR_MindControl"] = "Gedankenkontrolle"
L["DR_RandomStun"] = "Zufällige Betäubung"
L["DR_RandomRoot"] = "Zufällige Wurzeln"
L["DR_Charge"] = "Sturmangriff"

---------------------------------------
-- Race Names
---------------------------------------

L["Race_Human"] = "Mensch"
L["Race_Scourge"] = "Untoter"
L["Race_Dwarf"] = "Zwerg"
L["Race_NightElf"] = "Nachtelf"
L["Race_Gnome"] = "Gnom"
L["Race_Draenei"] = "Draenei"
L["Race_Worgen"] = "Worgen"
L["Race_Pandaren"] = "Pandaren"
L["Race_Orc"] = "Orc"
L["Race_Tauren"] = "Tauren"
L["Race_Troll"] = "Troll"
L["Race_BloodElf"] = "Blutelf"
L["Race_Goblin"] = "Goblin"
L["Race_LightforgedDraenei"] = "Lichtgeschmiedeter Draenei"
L["Race_HighmountainTauren"] = "Hochbergtauren"
L["Race_Nightborne"] = "Nachtgeborener"
L["Race_MagharOrc"] = "Mag'har"
L["Race_DarkIronDwarf"] = "Dunkeleisenzwerg"
L["Race_ZandalariTroll"] = "Zandalaritroll"
L["Race_VoidElf"] = "Leerenelf"
L["Race_KulTiran"] = "Kul Tiraner"
L["Race_Mechagnome"] = "Mechagnom"
L["Race_Vulpera"] = "Vulpera"
L["Race_Dracthyr"] = "Dracthyr"
L["Race_EarthenDwarf"] = "Irdener"
L["Race_Harronir"] = "Haranir"

---------------------------------------
-- Main Categories
---------------------------------------

L["Category_ArenaFrames"] = "Arena-Rahmen"
L["Category_SpecIcons"] = "Spezialisierungssymbole"
L["Category_Trinkets"] = "Schmuckstücke"
L["Category_Racials"] = "Rassenfähigkeiten"
L["Category_Dispels"] = "Reinigungen"
L["Category_CastBars"] = "Zauberleisten"
L["Category_DiminishingReturns"] = "Diminishing Returns"
L["Category_Widgets"] = "Widgets"
L["Category_TextSettings"] = "Texteinstellungen"
L["Category_ClassIcon"] = "Klassensymbol"

---------------------------------------
-- Textures
---------------------------------------

L["Textures"] = "Texturen"
L["Texture_General"] = "Allgemeine Textur"
L["Texture_General_Desc"] = "Tipp: Wenn du die Standard-WoW-Texturen durch eigene ersetzt hast, wähle \"Blizzard Raid Bar\"."
L["Texture_Healer"] = "Heiler-Textur"
L["Texture_Healer_Desc"] = "Tipp: Nur aktiv bei Klassenstapelung. Deaktiviere \"Nur Klassenstapelung\", wenn die Textur immer geändert werden soll."
L["Texture_ClassStackingOnly"] = "Nur Klassenstapelung"
L["Texture_ClassStackingOnly_Desc"] = "Heiler-Textur nur ändern, wenn Klassenstapelung vorliegt.\n\nZum Beispiel wenn ein Resto und ein Feral Druide im feindlichen Team sind."
L["Texture_Background"] = "Hintergrundtextur"
L["Texture_Background_Desc"] = "Textur für die Lebens-/Energieleisten-Unterlagen."
L["Texture_BackgroundColor"] = "Hintergrundfarbe"
L["Texture_BackgroundColor_Desc"] = "Farbe für die Lebens-/Energieleisten-Unterlagen."

---------------------------------------
-- Arena Frames Options
---------------------------------------

L["Option_ReplaceClassIcon"] = "Klassensymbol ersetzen"
L["Option_ReplaceClassIcon_Desc"] = "Klassensymbol durch Spezialisierungssymbol ersetzen und den kleinen \"Spec-Symbol-Button\" ausblenden"
L["Option_GrowthDirection"] = "Wachstumsrichtung"
L["Option_SpacingBetweenFrames"] = "Abstand zwischen Arena-Rahmen"
L["Option_SpacingBetweenFrames_Desc"] = "Abstand zwischen den Arena-Rahmen"
L["Option_ClassIconCDFontSize"] = "Schriftgröße Klassensymbol-CD"
L["Option_ClassIconCDFontSize_Desc"] = "Funktioniert nur mit Blizzard-Abklingzeit (nicht OmniCC)"
L["Option_FontSize"] = "Schriftgröße"
L["Option_FontSize_Desc"] = "Funktioniert nur mit Blizzard-Abklingzeit (nicht OmniCC)"
L["Option_MirroredFrames"] = "Gespiegelte Rahmen"
L["Option_PowerBarHeight"] = "Energieleistenhöhe"
L["Option_SpecTextOnManabar"] = "Spec-Text auf Manaleiste"
L["Option_CropIcons"] = "Symbole zuschneiden"
L["Option_PixelBorderSize"] = "Pixelrahmengröße"
L["Option_PixelBorderOffset"] = "Pixelrahmenversatz"
L["Option_DRPixelBorderSize"] = "DR-Pixelrahmengröße"
L["Option_HideNameBackground"] = "Namenshintergrund ausblenden"
L["Option_BigHealthbar"] = "Große Lebensleiste"
L["Option_TrinketCircleBorder"] = "Runder Schmuckstückrahmen"
L["Option_TrinketCircleBorder_Desc"] = "Runden Rahmen für Schmuckstücksymbole aktivieren"
L["Option_DisableOvershields"] = "Überschilde deaktivieren"
L["Option_DisableOvershields_Desc"] = "Deaktiviert die Anzeige von Absorptionen rückwärts auf der Lebensleiste, wenn Absorptionen max. LP überschreiten"

---------------------------------------
-- Cast Bars
---------------------------------------

L["Castbar_Look"] = "Zauberleisten-Aussehen"
L["Castbar_UseModern"] = "Moderne Zauberleisten verwenden"
L["Castbar_UseModern_Desc"] = "Die neuen modernen Retail-Zauberleisten verwenden."
L["Castbar_KeepDefaultModernTextures"] = "Standard-moderne Texturen beibehalten"
L["Castbar_KeepDefaultModernTextures_Desc"] = "Behält die neuen modernen Texturen für Zauberleisten. Ignoriert die eingestellte Textur."
L["Castbar_Simple"] = "Einfache Zauberleiste"
L["Castbar_Simple_Desc"] = "Blendet den Zauberleisten-Texthintergrund aus und verschiebt den Text in die Zauberleiste."
L["Castbar_HideShield"] = "Schild bei Nicht-Unterbrechbar ausblenden"
L["Castbar_HideShield_Desc"] = "Blendet die Schildtextur um das Zaubersymbol bei nicht unterbrechbaren Zaubern aus."
L["Castbar_HideSpark"] = "Zauberleisten-Funken ausblenden"
L["Castbar_HideSpark_Desc"] = "Blendet den laufenden Funken auf der Zauberleiste aus"
L["Castbar_HideIcon"] = "Zauberleisten-Symbol ausblenden"
L["Castbar_HideIcon_Desc"] = "Blendet das Zaubersymbol auf der Zauberleiste aus"
L["Castbar_Texture"] = "Zauberleisten-Textur"
L["Castbar_UninterruptibleTexture"] = "Nicht-unterbrechbar-Textur"
L["Castbar_Colors"] = "Zauberleisten-Farben"
L["Castbar_RecolorCastbar"] = "Zauberleiste umfärben"
L["Castbar_RecolorCastbar_Desc"] = "Benutzerdefinierte Zauberleisten-Farben aktivieren"
L["Castbar_Cast"] = "Zauber"
L["Castbar_Channeled"] = "Kanalisiert"
L["Castbar_Uninterruptible"] = "Nicht unterbrechbar"
L["Castbar_InterruptNotReady"] = "Unterbrechung nicht bereit"
L["Castbar_EnableNoInterruptColor"] = "Keine-Unterbrechung-Farbe aktivieren"
L["Castbar_EnableNoInterruptColor_Desc"] = "Aktivieren, um Zauberleisten in dieser Farbe zu färben, wenn keine Unterbrechung bereit ist"
L["Castbar_InterruptNotReadyColor"] = "Farbe für nicht bereite Unterbrechung"
L["Castbar_Position"] = "Zauberleisten-Position"
L["Castbar_IconPosition"] = "Symbol-Position"
L["Castbar_CastbarSize"] = "Zauberleistengröße"
L["Castbar_IconSize"] = "Symbolgröße"
L["Castbar_IconScale"] = "Symbolskalierung"

---------------------------------------
-- Diminishing Returns Options
---------------------------------------

L["DR_BrightBorder"] = "Heller DR-Rahmen"
L["DR_BlackBorder"] = "Schwarzer DR-Rahmen"
L["DR_BlackBorder_Desc"] = "Macht DR-Rahmen schwarz. Kombiniere mit DR-Text anzeigen Einstellung"
L["DR_ShowText"] = "DR-Text anzeigen"
L["DR_ShowText_Desc"] = "Text auf DR-Symbolen anzeigen, der den aktuellen DR-Status zeigt."
L["DR_DisableBorderGlow"] = "DR-Rahmenleuchten deaktivieren"
L["DR_ThickPixelBorder"] = "Dicker Pixelrahmen"
L["DR_ThinPixelBorder"] = "Dünner Pixelrahmen"
L["DR_DisableBorder"] = "DR-Rahmen deaktivieren"
L["DR_DisableBorder_Desc"] = "Blendet DR-Rahmen vollständig aus"
L["DR_BorderSize"] = "Rahmengröße"
L["DR_SpecificSizeAdjustment"] = "DR-spezifische Größenanpassung"

---------------------------------------
-- Widgets
---------------------------------------

L["Widget_CombatIndicator"] = "Kampfindikator"
L["Widget_CombatIndicator_Enable"] = "Kampfindikator aktivieren"
L["Widget_CombatIndicator_Desc"] = "Zeigt ein Essenssymbol, wenn der Feind nicht im Kampf ist"
L["Widget_TargetIndicator"] = "Zielindikator"
L["Widget_TargetIndicator_Enable"] = "Zielindikator aktivieren"
L["Widget_TargetIndicator_Desc"] = "Zeigt ein Symbol auf deinem aktuellen Ziel"
L["Widget_FocusIndicator"] = "Fokusindikator"
L["Widget_FocusIndicator_Enable"] = "Fokusindikator aktivieren"
L["Widget_FocusIndicator_Desc"] = "Zeigt ein Symbol auf deinem aktuellen Fokus"
L["Widget_PartyTargetIndicators"] = "Gruppenziel-Indikatoren"
L["Widget_PartyTargetIndicators_Enable"] = "Gruppenziel-Indikatoren aktivieren"
L["Widget_PartyTargetIndicators_Desc"] = "Zeigt klassenfarbige Symbole auf den Arena-Rahmen, die deine Gruppenmitglieder angreifen"

---------------------------------------
-- Text Settings
---------------------------------------

L["Text_Fonts"] = "Schriftarten"
L["Text_ChangeFont"] = "Schriftart ändern"
L["Text_ChangeFont_Desc"] = "Die von sArena verwendeten Schriftarten ändern"
L["Text_FrameFont"] = "Rahmenschrift"
L["Text_FrameFont_Desc"] = "Für Beschriftungen wie Name, Lebens-/Energiewerte, Zaubertext usw."
L["Text_CooldownFont"] = "Abklingzeit-Schrift"
L["Text_CooldownFont_Desc"] = "Für Abklingzeit-Zahlen (Schmuckstück, DRs, Rassenfähigkeiten usw.)."
L["Text_FontOutline"] = "Schriftumrandung"
L["Text_FontOutline_Desc"] = "Umrandungsstil für alle Textelemente wählen."
L["Text_NameText"] = "Namenstext"
L["Text_HealthText"] = "Lebenstext"
L["Text_ManaText"] = "Manatext"
L["Text_SpecNameText"] = "Spec-Namenstext"
L["Text_CastbarText"] = "Zauberleistentext"
L["Text_DRText"] = "DR-Text"
L["Text_AnchorPoint"] = "Ankerpunkt"

---------------------------------------
-- Status Text
---------------------------------------

L["Status_Health"] = "Leben"
L["Status_Power"] = "Energie"
L["Status_HealthPercent"] = "Leben Prozent"
L["Status_PowerPercent"] = "Energie Prozent"
L["Status_HealthAndPower"] = "Leben und Energie"
L["Status_HealthAndPowerPercent"] = "Leben und Energie Prozent"

---------------------------------------
-- Additional Options and Messages
---------------------------------------

L["Layout_Settings"] = "Layout-Einstellungen"
L["Layout_Settings_Desc"] = "Diese Einstellungen gelten nur für das ausgewählte Layout"
L["Global_Settings"] = "Globale Einstellungen"
L["Global_Settings_Desc"] = "Diese Einstellungen gelten für alle Layouts"

L["Text_ShowOnMouseover_Desc"] = "Wenn deaktiviert, wird Text nur bei Mouseover angezeigt"
L["Text_FormatLargeNumbers_Desc"] = "Große Zahlen formatieren. 18888 K -> 18.88 M"
L["Text_HidePowerText"] = "Energietext ausblenden"
L["Text_HidePowerText_Desc"] = "Mana/Wut/Energie-Text ausblenden"

L["DarkMode_Enable"] = "Dunkelmodus aktivieren"
L["DarkMode_Enable_Desc"] = "Dunkelmodus für Arena-Rahmen aktivieren."
L["DarkMode_Value"] = "Dunkelmodus-Wert"
L["DarkMode_Value_Desc"] = "Dunkelheitswert für Dunkelmodus-Rahmen festlegen (0 = schwarz, 1 = normale Helligkeit)."
L["DarkMode_Desaturate_Desc"] = "Alle Farben aus Texturen im Dunkelmodus entfernen.\n\n|cff888888Dies ist das Standardverhalten, aber bei einigen Layouts bevorzugst du vielleicht etwas Originalfarbe.|r"

L["ClassColor_Healthbars"] = "Klassenfarben-Lebensleisten"
L["ClassColor_Healthbars_Desc"] = "Wenn deaktiviert, sind Lebensleisten grün"
L["ClassColor_FrameTexture"] = "Klassenfarben-Rahmentextur"
L["ClassColor_FrameTexture_Desc"] = "Klassenfarben auf Rahmentexturen (Rahmen) anwenden"
L["ClassColor_OnlyClassIcon"] = "Nur Klassensymbol"
L["ClassColor_OnlyClassIcon_Desc"] = "Klassenfarbe nur auf den Klassensymbol-Rahmen anwenden, nicht auf andere Rahmentexturen"
L["ClassColor_HealerGreen"] = "Heiler grün färben"
L["ClassColor_HealerGreen_Desc"] = "Heiler-Rahmen in hellem Grün statt Klassenfarbe anzeigen"
L["ClassColor_NameText"] = "Klassenfarben-Namenstext"
L["ClassColor_NameText_Desc"] = "Wenn aktiviert, werden Spielernamen nach Klasse gefärbt"

L["Icon_ReplaceHealerWithHealerIcon"] = "Heiler durch Heiler-Symbol ersetzen"
L["Icon_ReplaceHealerWithHealerIcon_Desc"] = "Heiler-Klassen-/Spec-Symbol durch ein Heiler-Symbol ersetzen."
L["Healthbar_ReverseFill"] = "Umgekehrte Lebensleistenfüllung"
L["Healthbar_ReverseFill_Desc"] = "Lebens- und Energieleisten von rechts nach links statt von links nach rechts füllen"
L["ClassIcon_HideAndShowOnlyAuras"] = "Klassensymbol ausblenden, nur Auren zeigen"
L["ClassIcon_HideAndShowOnlyAuras_Desc"] = "Klassensymbol ausblenden und nur Auren zeigen, wenn sie aktiv sind."
L["ClassIcon_DontShowAuras"] = "Keine Auren auf Klassensymbol zeigen"
L["ClassIcon_DontShowAuras_Desc"] = "Keine Auren auf Klassensymbolen zeigen, immer Klassen-/Spec-Symbol anzeigen."

L["Trinket_MinimalistDesign"] = "Minimalistisches Schmuckstück-Design"
L["Trinket_MinimalistDesign_Desc"] = "Schmuckstück-Textur durch einfarbiges Grün ersetzen wenn bereit und Rot wenn auf Abklingzeit."
L["MysteryPlayer_GrayBars"] = "Unbekannte Spieler graue Leisten"
L["MysteryPlayer_GrayBars_Desc"] = "Färbt unbekannte Spieler mit grauen Statusleisten statt ihren Klassenfarben. Unbekannte Spieler sind nicht sichtbare Spieler, z.B. vor Toröffnung und Verstohlenene."

L["Cooldown_ShowDecimalsThreshold_Desc"] = "Dezimalstellen zeigen, wenn verbleibende Zeit unter diesem Schwellenwert liegt. Standard sind 6 Sekunden."
L["Cooldown_DisableBrightEdge"] = "Hellen Rand an Abklingzeit-Spiralen deaktivieren"
L["Cooldown_DisableBrightEdge_Desc"] = "Deaktiviert den hellen Rand an Abklingzeit-Spiralen für alle Symbole."
L["Cooldown_DisableClassIconSwipe"] = "Klassensymbol-Animation deaktivieren"
L["Cooldown_DisableClassIconSwipe_Desc"] = "Deaktiviert die spiralförmige Abklingzeit-Animation auf dem Klassensymbol."
L["Cooldown_DisableDRSwipe"] = "DR-Animation deaktivieren"
L["Cooldown_DisableDRSwipe_Desc"] = "Deaktiviert die spiralförmige Abklingzeit auf DR-Symbolen."
L["Cooldown_DisableTrinketRacialSwipe"] = "Schmuckstück- und Rassenfähigkeits-Animation deaktivieren"
L["Cooldown_DisableTrinketRacialSwipe_Desc"] = "Deaktiviert die spiralförmige Abklingzeit-Animation auf Schmuckstück- und Rassenfähigkeits-Symbolen."
L["Cooldown_ReverseClassIcon"] = "Klassensymbol-Abklingzeit umkehren"
L["Cooldown_ReverseClassIcon_Desc"] = "Kehrt die Abklingzeit-Richtung für das Klassensymbol um. Ändert ob sie leer starten und sich füllen, oder voll starten und sich leeren."
L["Cooldown_ReverseDR"] = "DR-Abklingzeit umkehren"
L["Cooldown_ReverseDR_Desc"] = "Kehrt die DR-Abklingzeit-Animation um."
L["Cooldown_ReverseTrinketRacial"] = "Schmuckstück- und Rassenfähigkeits-Abklingzeit umkehren"
L["Cooldown_ReverseTrinketRacial_Desc"] = "Kehrt die Abklingzeit-Richtung für Schmuckstück und Rassenfähigkeit um."

L["Masque_Support"] = "Masque-Unterstützung aktivieren"
L["Masque_Support_Desc"] = "Klicke zum Aktivieren der Masque-Unterstützung für Symbol-Rahmen.\n\nAktuell muss Backdrop in den Masque-Einstellungen deaktiviert sein für korrektes Aussehen."
L["Trinket_HideWhenNoTrinket"] = "Schmuckstück ausblenden wenn nicht ausgerüstet"
L["Trinket_HideWhenNoTrinket_Desc"] = "Die weiße Flaggen-Textur im Schmuckstück-Slot ausblenden (zeigt kein Schmuckstück an). Stattdessen wird keine Textur angezeigt."
L["Trinket_DesaturateOnCD"] = "Schmuckstück entsättigen bei CD"
L["Trinket_DesaturateOnCD_Desc"] = "Das Schmuckstück-Symbol entsättigen, wenn es auf Abklingzeit ist."
L["Dispel_DesaturateOnCD"] = "Reinigung entsättigen bei CD"
L["Dispel_DesaturateOnCD_Desc"] = "Das Reinigungs-Symbol entsättigen, wenn es auf Abklingzeit ist."

L["DR_ClassSpecific"] = "Klassenspezifische DR-Kategorien"
L["DR_ClassSpecific_Desc"] = "Wenn aktiviert, werden die DR-Kategorien unten klassenspezifisch für deine aktuelle Klasse.\n\n|cff888888Enthält alle Standardkategorien, du siehst also keine sofortige Änderung, du musst manuell ändern was du anpassen möchtest.|r"
L["DR_SpecSpecific"] = "Spezialisierungsspezifische DR-Kategorien"
L["DR_SpecSpecific_Desc"] = "Wenn aktiviert, werden die DR-Kategorien unten spezialisierungsspezifisch für deine aktuelle Spec.\n\n|cff888888Enthält alle Standardkategorien, du siehst also keine sofortige Änderung, du musst manuell ändern was du anpassen möchtest.|r"
L["DR_FixedIcons"] = "Feste DR-Symbole"
L["DR_FixedIcons_Desc"] = "DR-Symbole verwenden immer ein bestimmtes Symbol für jede DR-Kategorie."
L["DR_ClassSpecificIcons"] = "Klassenspezifische DR-Symbole"
L["DR_ClassSpecificIcons_Desc"] = "Wenn aktiviert, werden die Symbole unten klassenspezifisch für deine aktuelle Klasse.\n\n|cff888888Enthält alle Standardsymbole, du siehst also keine sofortige Änderung, du musst manuell ändern was du anpassen möchtest.|r"
L["DR_SpecSpecificIcons"] = "Spezialisierungsspezifische DR-Symbole"
L["DR_SpecSpecificIcons_Desc"] = "Wenn aktiviert, werden die Symbole unten spezialisierungsspezifisch für deine aktuelle Spec.\n\n|cff888888Enthält alle Standardsymbole, du siehst also keine sofortige Änderung, du musst manuell ändern was du anpassen möchtest.|r"

L["Racial_ShowInTrinketSlot"] = "Rassenfähigkeit im Schmuckstück-Slot zeigen wenn kein Schmuckstück"
L["Racial_ShowInTrinketSlot_Desc"] = "Wenn der Feind kein Schmuckstück hat, Lücke entfernen und Rassenfähigkeit an Stelle des Schmuckstücks zeigen."
L["Human_AlwaysShowTrinket"] = "Immer Allianz-Schmuckstück für Menschen zeigen"
L["Human_AlwaysShowTrinket_Desc"] = "Immer die Allianz-Schmuckstück-Textur bei Menschen-Spielern zeigen, auch wenn sie kein Schmuckstück haben."

L["Drag_Hint"] = "Strg+Umschalt+Klick zum Ziehen"

L["Option_AddonConflict"] = "Addon-Konflikt"
L["Option_Layout"] = "Layout"
L["Option_Test"] = "Test"
L["Option_Hide"] = "Ausblenden"
L["Option_ArenaFrames"] = "Arena-Rahmen"
L["Option_StatusText"] = "Statustext"
L["Option_AlwaysShow"] = "Immer anzeigen"
L["Option_UsePercentage"] = "Prozent verwenden"
L["Option_FormatNumbers"] = "Zahlen formatieren"
L["Option_DarkMode"] = "Dunkelmodus"
L["Option_Desaturate"] = "Entsättigen"
L["Option_ClassColorNames"] = "Klassenfarben-Namen"
L["Option_ReplaceHealerIcon"] = "Heiler-Symbol ersetzen"
L["Option_ShowNames"] = "Namen anzeigen"
L["Option_ShowArenaNumber"] = "Arena-Nummer anzeigen"
L["Option_ReverseBarsFill"] = "Umgekehrte Leistenfüllung"
L["Option_HideClassIconShowAurasOnly"] = "Klassensymbol ausblenden (nur Auren)"
L["Option_DisableAurasOnClassIcon"] = "Auren auf Klassensymbol deaktivieren"
L["Option_ShadowsightTimer"] = "Schattensicht-Timer aktivieren"
L["Option_ShadowsightTimer_Desc"] = "Timer am oberen Bildschirmrand anzeigen für Schattensicht-Buffs in der Arena"
L["Shadowsight_Ready"] = "Schattensicht bereit"
L["Shadowsight_SpawnsIn"] = "Schattensicht erscheint in %d Sek"
L["Option_ColorTrinket"] = "Schmuckstück färben"
L["Option_ColorNonVisibleFramesGray"] = "Nicht sichtbare Rahmen grau färben"
L["Option_ShowDecimalsOnClassIcon"] = "Dezimalstellen auf Klassensymbol zeigen"
L["Option_DecimalThreshold"] = "Dezimalstellen-Schwellenwert"
L["Option_SwipeAnimations"] = "Wisch-Animationen"
L["Option_DisableCooldownSwipeEdge"] = "Abklingzeit-Wisch-Rand deaktivieren"
L["Option_DisableClassIconSwipe"] = "Klassensymbol-Wisch deaktivieren"
L["Option_DisableDRSwipeAnimation"] = "DR-Wisch-Animation deaktivieren"
L["Option_DisableTrinketRacialSwipe"] = "Schmuckstück- & Rassenfähigkeits-Wisch deaktivieren"
L["Option_ReverseClassIconSwipe"] = "Klassensymbol-Wisch umkehren"
L["Option_ReverseDRSwipeAnimation"] = "DR-Wisch-Animation umkehren"
L["Option_ReverseTrinketRacialSwipe"] = "Schmuckstück- & Rassenfähigkeits-Wisch umkehren"
L["Option_Miscellaneous"] = "Verschiedenes"
L["Option_EnableMasqueSupport"] = "Masque-Unterstützung aktivieren"
L["Option_RemoveUnEquippedTrinketTexture"] = "Nicht-ausgerüstetes Schmuckstück-Textur entfernen"
L["Option_DesaturateTrinketCD"] = "Schmuckstück-CD entsättigen"
L["Option_DesaturateDispelCD"] = "Reinigungs-CD entsättigen"
L["Option_DRResetTime"] = "DR-Reset-Zeit"
L["Option_ShowDecimalsOnDRs"] = "Dezimalstellen auf DRs zeigen"
L["Option_ColorDRCooldownText"] = "DR-Abklingzeit-Text nach Schweregrad färben"
L["Option_ColorDRCooldownText_Desc"] = "Färbt den DR-Countdown-Text basierend auf DR-Schweregrad.\n\n|cff00ff00Grün|r für ½ Verminderung\n|cffffff00Gelb|r für ¼ Verminderung\n|cffff0000Rot|r für immun"
L["Option_ColorDRCooldownText_Desc_Midnight"] = "Färbt den DR-Countdown-Text basierend auf DR-Schweregrad.\n\n|cff00ff00Grün|r für ½ Verminderung\n|cffff0000Rot|r für immun"
L["Option_DRCategories"] = "DR-Kategorien"
L["Option_PerClass"] = "Pro Klasse"
L["Option_PerSpec"] = "Pro Spezialisierung"
L["Option_DRIcons"] = "DR-Symbole"
L["Option_EnableStaticIcons"] = "Statische Symbole aktivieren"
L["Option_Categories"] = "Kategorien"
L["Option_SwapMissingTrinketWithRacial"] = "Fehlendes Schmuckstück mit Rassenfähigkeit tauschen"
L["Option_ForceShowTrinketOnHuman"] = "Schmuckstück bei Menschen erzwingen"
L["Option_ReplaceHumanRacialWithTrinket"] = "Menschen-Rassenfähigkeit durch Schmuckstück ersetzen"
L["Option_ShowDispels"] = "Reinigungen anzeigen"
L["Option_HealerDispels"] = "Heiler-Reinigungen"
L["Option_DPSDispels"] = "DPS-Reinigungen"
L["Option_OthersArena"] = "Anderes sArena"
L["Option_ImportSettings"] = "Einstellungen importieren"
L["Option_ShareProfile"] = "Profil teilen"
L["Option_ExportCurrentProfile"] = "Aktuelles Profil exportieren"
L["Option_ExportString"] = "Export-String"
L["Option_PasteProfileString"] = "Profil-String einfügen"
L["Option_ImportDescription"] = "Dies importiert deine anderen sArena-Einstellungen in die neue sArena Updated 2 by sammers Version.\n\nStelle sicher, dass beide Addons aktiviert sind, dann klicke den Button unten."
L["Message_NoLayoutSettings"] = "Das ausgewählte Layout scheint keine Einstellungen zu haben."
L["Option_ReplaceHumanRacialWithTrinket_Desc"] = "Die Menschen-Rassenfähigkeit durch die Allianz-Schmuckstück-Textur im Rassenfähigkeits-Slot ersetzen."
L["Option_ShowDispels_Desc"] = "Aktivieren um Reinigungs-Abklingzeit auf Arena-Rahmen anzuzeigen."
L["Option_OthersArena_Desc"] = "Einstellungen aus einem anderen sArena importieren"
L["Option_ImportSettings_Desc"] = "Deine Einstellungen aus der anderen sArena-Version importieren."
L["Option_MidnightPlans_Desc"] = "World of Warcraft: Midnight Pläne"
L["Option_ShareProfile_Desc"] = "Ein sArena-Profil exportieren oder importieren"
L["Option_ExportString_Desc"] = "|cff32f795Strg+A|r um alles auszuwählen, |cff32f795Strg+C|r zum Kopieren"
L["Option_PasteProfileString_Desc"] = "|cff32f795Strg+V|r um kopierten Profil-String einzufügen"
L["Option_TrinketCircleBorder_Desc"] = "Runden Rahmen für Schmuckstück-Symbole aktivieren"
L["Option_DefaultIcon_Desc"] = "Standardsymbol: %s |T%s:24|t"
L["Option_ImportProfile_Desc"] = "Profilseinstellungen von %s importieren.\n\n%swww.twitch.tv/%s|r"
L["Option_DPSDispelsNote"] = "|cFFFFFF00Hinweis:|r DPS-Reinigungen erscheinen erst nach einmaliger Verwendung."
L["Option_DispelsBetaNotice"] = "\n|cFF808080Reinigungen sind in BETA.\nEinige Zauber-IDs müssen noch bestätigt werden, besonders in Mists of Pandaria.\nMehr Tests nötig (warte auf PTR), Änderungen möglich.\nWenn du Info/Feedback/Zauber-IDs beitragen möchtest, bitte melde dich!|r"
L["Option_ExportProfileHeader"] = "|cffffff00Profil exportieren:|r"
L["Option_ImportProfileHeader"] = "|cffffff00Profil importieren:|r"
L["Option_StreamerProfilesHeader"] = "|cffffff00Streamer-Profile:|r"

L["Message_InvalidFormat"] = "Ungültiges Format."
L["Message_DecompressionError"] = "Dekomprimierungsfehler: %s"
L["Message_DeserializationError"] = "Deserialisierungsfehler oder ungültiges Format."
L["Message_ImportFailed"] = "|cffff4040Import fehlgeschlagen:|r"
L["Message_ExportFailed"] = "Export fehlgeschlagen:"
L["Message_NoProfileFound"] = "Kein Profil für aktuellen Charakter gefunden."
L["Message_ProfileDataNotFound"] = "Profildaten nicht gefunden."
L["Message_IncorrectDataType"] = "Falscher Datentyp."
L["Message_ProfileOverwrite"] = "Du hast bereits ein Profil von %s. Erneuter Import überschreibt alle Einstellungen für dieses Profil. Möchtest du fortfahren?"
L["ImportExport_DialogTitle"] = "sArena Import-Bestätigung"
L["Message_MidnightWarningTitle"] = "|cffa020f0Midnight Beta-Warnung|r"
L["Message_MidnightWarningText"] = "Midnight ist in Beta und der Bearbeitungsmodus verursacht\nFehler bei den neuen DRs.\n\n|cffFFFF00UI neu laden zur Behebung.|r\n\nDiese Warnung wird entfernt sobald\nBlizzard Bearbeitungsmodus und DRs behebt."
L["Button_ReloadUI"] = "UI neu laden"
L["DR_CategoriesPerSpec"] = "Kategorien (Pro Spec: %s)"
L["DR_CategoriesPerClass"] = "Kategorien (Pro Klasse: %s)"
L["DR_CategoriesGlobal"] = "Kategorien (Global)"
L["DR_IconsPerSpec"] = "DR-Symbole konfigurieren (Pro Spec: %s)"
L["DR_IconsPerClass"] = "DR-Symbole konfigurieren (Pro Klasse: %s)"
L["DR_IconsGlobal"] = "DR-Symbole konfigurieren (Global)"
L["Option_ShowDecimalsOnClassIcon_Desc"] = "Dezimalstellen auf Klassensymbol zeigen wenn Dauer unter 6 Sekunden ist.\n\nNur für Nicht-OmniCC-Benutzer."
L["Option_ShowDecimalsOnDRs_Desc"] = "Dezimalstellen auf DRs zeigen wenn Dauer unter 6 Sekunden ist.\n\nNur für Nicht-OmniCC-Benutzer."
L["Option_StreamerProfiles_Desc"] = "Vorkonfigurierte Profile von beliebten Streamern importieren.\nAlle aktuellen Profile bleiben erhalten, einschließlich deines aktiven \"|cff00ff00%s|r\" Profils.\nUm Profile wieder zu wechseln, gehe zum Profile-Tab."
L["Unknown"] = "Unbekannt"
L["Unknown_Spell"] = "Unbekannter Zauber"
L["Cooldown_Seconds"] = "Abklingzeit: %d Sekunden"
L["SelectAll"] = "Alle auswählen"

---------------------------------------
-- Data Collection
---------------------------------------

L["DataCollection_NotEnabled"] = "Datensammlung nicht aktiviert. Setze zuerst db.collectData = true."
L["DataCollection_NoDataYet"] = "Noch keine Zauberdaten gesammelt."
L["DataCollection_ExportTitle"] = "sArena Gesammelte Zauberdaten"
L["DataCollection_ExportComplete"] = "%d Einträge gesammelt. Daten im Exportfenster angezeigt."

L["Print_CurrentVersion"] = "Aktuelle Version: %s"
L["Print_MultipleVersionsLoaded"] = "Zwei verschiedene sArena-Versionen geladen. Bitte wähle mit /sarena wie du fortfahren möchtest"

L["Conflict_MultipleVersions"] = "Mehrere sArena-Versionen erkannt"
L["Conflict_Warning"] = "|A:services-icon-warning:20:20|a |cffff4444Zwei verschiedene sArena-Versionen aktiviert|r |A:services-icon-warning:20:20|a"
L["Conflict_Explanation"] = "|cffffffffZwei verschiedene sArena-Versionen können nicht zusammen funktionieren.\nDu musst nur eine verwenden. Du hast 3 Optionen:|r"
L["Conflict_UseOther"] = "|cffffffffAnderes sArena verwenden|r"
L["Conflict_UseOther_Desc"] = "Dies deaktiviert |cffffffffsArena Updated 2 by sammers und verwendet stattdessen dein anderes sArena und lädt dein UI neu."
L["Conflict_UseOther_Confirm"] = "Dies deaktiviert |cffffffffsArena Updated 2 by sammers und verwendet das andere sArena und lädt dein UI neu.\n\nFortfahren?"
L["Conflict_UseReloaded_Import"] = "|cffffffffsArena Updated 2 by sammers verwenden: Andere Einstellungen importieren"
L["Conflict_UseReloaded_Import_Desc"] = "Dies kopiert dein aktuelles Profil und vorhandene Einstellungen vom anderen sArena, deaktiviert das andere sArena für Kompatibilität und lädt dein UI neu, damit du sArena Updated 2 by sammers verwenden kannst"
L["Conflict_UseReloaded_Import_Confirm"] = "Dies kopiert dein aktuelles Profil und vorhandene Einstellungen vom anderen sArena, deaktiviert das andere sArena für Kompatibilität und lädt dein UI neu, damit du sArena Updated 2 by sammers verwenden kannst\n\nFortfahren?"
L["Conflict_UseReloaded_NoImport"] = "|cffffffffsArena Updated 2 by sammers verwenden: Keine anderen Einstellungen importieren"
L["Conflict_UseReloaded_NoImport_Desc"] = "Dies deaktiviert das andere sArena für Kompatibilität und lädt dein UI neu, damit du sArena Updated 2 by sammers ohne deine anderen Einstellungen verwenden kannst."
L["Conflict_UseReloaded_NoImport_Confirm"] = "Dies deaktiviert das andere sArena für Kompatibilität und lädt dein UI neu, damit du sArena Updated 2 by sammers ohne deine anderen Einstellungen verwenden kannst.\n\nFortfahren?"
L["Midnight_UpdateInfo"] = "|cff00ff00UPDATE: Alles jetzt verfügbar für Midnight.|r\n\nIch plane die Entwicklung von |cffffffffsArena Updated 2 by sammers für Midnight fortzusetzen.\n\nEinige Features müssen angepasst oder entfernt werden, aber das Addon bleibt bestehen.\nMidnight ist noch in früher Alpha und ich habe die Vorbereitung noch nicht begonnen (14. Okt), aber bald.\n\nPläne können sich ändern, aber ich bin zuversichtlich dass |cffffffffsArena Updated 2 by sammers und meine anderen Addons\n|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates für Midnight bleiben werden (mit Änderungen/Entfernungen).\n\nViel Arbeit vor mir, jede Unterstützung wird geschätzt. (|cff00c0ff@bodify|r)\nIch werde diesen Bereich aktualisieren wenn ich in einigen Wochen/Monaten mehr weiß."
L["Midnight_BetaInfo"] = "Willkommen zu Midnight! Meine anderen Addons |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates werden auch bearbeitet.\n\nDinge werden sich während der Entwicklung schnell ändern, besonders wenn neue API verfügbar wird.\nDiese Midnight Beta ist verfrüht und vieles fehlt noch im Spiel.\nIch werde mit vielen Dingen bis zum Release von Midnight experimentieren.\n\nAktuell hat sich geändert:\n1) DRs werden jetzt von Blizzard gehandhabt, sArena passt nur soweit erlaubt an.\n 1.1) Lücken-Einstellung entfernt.\n 1.2) Individuelle Größenanpassung entfernt.\n 1.3) Nach oben/unten wachsen entfernt.\n 1.4) Symbole sind jetzt Blizzards seltsame Symbole, diese Einstellungen entfernt.\n2) Nicht-CC Auren werden nicht mehr gezeigt, nur CC die Blizzard zeigen lässt.\n3) Absorptionen auf Rahmen entfernt.\n4) Rassenfähigkeits-Abklingzeit kann nicht verfolgt werden, aber Rassenfähigkeit ist noch sichtbar.\n5) Reinigungen entfernt..\n\nNicht alles ist endgültig und es könnte neue Sachen geben, wir werden sehen. Ich halte dies hier aktuell."

