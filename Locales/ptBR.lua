-- Brazilian Portuguese localization for sArena Updated 2 by sammers
-- sArena Updated 2 by sammers Localização Português Brasileiro

local locale = GetLocale()
if locale ~= "ptBR" then return end

local L = sArenaMixin.L

---------------------------------------
-- Common Terms
---------------------------------------

L["Yes"] = "Sim"
L["No"] = "Não"
L["Enable"] = "Ativar"
L["Disable"] = "Desativar"
L["Reset"] = "Redefinir"
L["Scale"] = "Escala"
L["Size"] = "Tamanho"
L["Width"] = "Largura"
L["Height"] = "Altura"
L["Horizontal"] = "Horizontal"
L["Vertical"] = "Vertical"
L["Spacing"] = "Espaçamento"
L["Positioning"] = "Posicionamento"
L["Sizing"] = "Dimensionamento"
L["Options"] = "Opções"
L["BorderSize"] = "Tamanho da borda"
L["GrowthDirection"] = "Direção de crescimento"
L["AnchorPoint"] = "Ponto de ancoragem"

---------------------------------------
-- Directions
---------------------------------------

L["Direction_Down"] = "Baixo"
L["Direction_Up"] = "Cima"
L["Direction_Right"] = "Direita"
L["Direction_Left"] = "Esquerda"
L["Direction_Center"] = "Centro"
L["Direction_TopLeft"] = "Superior Esquerdo"
L["Direction_Top"] = "Superior"
L["Direction_TopRight"] = "Superior Direito"
L["Direction_BottomLeft"] = "Inferior Esquerdo"
L["Direction_Bottom"] = "Inferior"
L["Direction_BottomRight"] = "Inferior Direito"

---------------------------------------
-- Font Outlines
---------------------------------------

L["Outline_None"] = "Sem contorno"
L["Outline_Normal"] = "Contorno"
L["Outline_Thick"] = "Contorno grosso"

---------------------------------------
-- Messages
---------------------------------------

L["Message_MustLeaveCombat"] = "Você precisa sair do combate primeiro."

---------------------------------------
-- Diminishing Returns Categories
---------------------------------------

L["DR_Stun"] = "Atordoamento"
L["DR_Incapacitate"] = "Incapacitação"
L["DR_Disorient"] = "Desorientação"
L["DR_Silence"] = "Silêncio"
L["DR_Root"] = "Enraizamento"
L["DR_Knock"] = "Empurrão"
L["DR_Disarm"] = "Desarme"
L["DR_Fear"] = "Medo"
L["DR_Horror"] = "Horror"
L["DR_Cyclone"] = "Ciclone"
L["DR_MindControl"] = "Controle mental"
L["DR_RandomStun"] = "Atordoamento aleatório"
L["DR_RandomRoot"] = "Enraizamento aleatório"
L["DR_Charge"] = "Investida"

---------------------------------------
-- Race Names
---------------------------------------

L["Race_Human"] = "Humano"
L["Race_Scourge"] = "Morto-vivo"
L["Race_Dwarf"] = "Anão"
L["Race_NightElf"] = "Elfo Noturno"
L["Race_Gnome"] = "Gnomo"
L["Race_Draenei"] = "Draenei"
L["Race_Worgen"] = "Worgen"
L["Race_Pandaren"] = "Pandaren"
L["Race_Orc"] = "Orc"
L["Race_Tauren"] = "Tauren"
L["Race_Troll"] = "Troll"
L["Race_BloodElf"] = "Elfo Sangrento"
L["Race_Goblin"] = "Goblin"
L["Race_LightforgedDraenei"] = "Draenei Forjado a Luz"
L["Race_HighmountainTauren"] = "Tauren Altamontês"
L["Race_Nightborne"] = "Filho da Noite"
L["Race_MagharOrc"] = "Orc Mag'har"
L["Race_DarkIronDwarf"] = "Anão Ferro Negro"
L["Race_ZandalariTroll"] = "Troll Zandalari"
L["Race_VoidElf"] = "Elfo Caótico"
L["Race_KulTiran"] = "Kultireno"
L["Race_Mechagnome"] = "Mecanognomo"
L["Race_Vulpera"] = "Vulpera"
L["Race_Dracthyr"] = "Dracthyr"
L["Race_EarthenDwarf"] = "Terrano"
L["Race_Harronir"] = "Harronir"

---------------------------------------
-- Main Categories
---------------------------------------

L["Category_ArenaFrames"] = "Quadros de Arena"
L["Category_SpecIcons"] = "Ícones de Especialização"
L["Category_Trinkets"] = "Berloques"
L["Category_Racials"] = "Habilidades Raciais"
L["Category_Dispels"] = "Dissipações"
L["Category_CastBars"] = "Barras de Conjuração"
L["Category_DiminishingReturns"] = "Retornos Decrescentes"
L["Category_Widgets"] = "Widgets"
L["Category_TextSettings"] = "Configurações de Texto"
L["Category_ClassIcon"] = "Ícone de Classe"

---------------------------------------
-- Textures
---------------------------------------

L["Textures"] = "Texturas"
L["Texture_General"] = "Textura Geral"
L["Texture_General_Desc"] = "Dica: Se você substituiu as texturas padrão do WoW pelas suas, selecione \"Blizzard Raid Bar\"."
L["Texture_Healer"] = "Textura de Curandeiro"
L["Texture_Healer_Desc"] = "Dica: Ativo apenas durante empilhamento de classe. Desmarque \"Apenas empilhamento de classe\" se quiser sempre mudar a textura."
L["Texture_ClassStackingOnly"] = "Apenas empilhamento de classe"
L["Texture_ClassStackingOnly_Desc"] = "Muda a textura do curandeiro apenas durante empilhamento de classe.\n\nPor exemplo quando há um Druida Restauração e um Feral na equipe inimiga."
L["Texture_Background"] = "Textura de Fundo"
L["Texture_Background_Desc"] = "Textura para os fundos das barras de vida/energia."
L["Texture_BackgroundColor"] = "Cor de Fundo"
L["Texture_BackgroundColor_Desc"] = "Cor para os fundos das barras de vida/energia."

---------------------------------------
-- Arena Frames Options
---------------------------------------

L["Option_ReplaceClassIcon"] = "Substituir ícone de classe"
L["Option_ReplaceClassIcon_Desc"] = "Substituir o ícone de classe pelo ícone de especialização e ocultar o pequeno \"botão de ícone de spec\""
L["Option_GrowthDirection"] = "Direção de crescimento"
L["Option_SpacingBetweenFrames"] = "Espaçamento entre quadros de arena"
L["Option_SpacingBetweenFrames_Desc"] = "Espaçamento entre cada quadro de arena"
L["Option_ClassIconCDFontSize"] = "Tamanho fonte CD ícone classe"
L["Option_ClassIconCDFontSize_Desc"] = "Funciona apenas com a contagem regressiva da Blizzard (não OmniCC)"
L["Option_FontSize"] = "Tamanho da Fonte"
L["Option_FontSize_Desc"] = "Funciona apenas com a contagem regressiva da Blizzard (não OmniCC)"
L["Option_MirroredFrames"] = "Quadros espelhados"
L["Option_PowerBarHeight"] = "Altura da barra de energia"
L["Option_SpecTextOnManabar"] = "Texto de spec na barra de mana"
L["Option_CropIcons"] = "Cortar ícones"
L["Option_PixelBorderSize"] = "Tamanho da borda pixel"
L["Option_PixelBorderOffset"] = "Deslocamento da borda pixel"
L["Option_DRPixelBorderSize"] = "Tamanho da borda pixel DR"
L["Option_HideNameBackground"] = "Ocultar fundo do nome"
L["Option_BigHealthbar"] = "Barra de vida grande"
L["Option_TrinketCircleBorder"] = "Borda circular do berloque"
L["Option_TrinketCircleBorder_Desc"] = "Ativar borda circular para ícones de berloques"
L["Option_DisableOvershields"] = "Desativar sobre-escudos"
L["Option_DisableOvershields_Desc"] = "Desativa a absorção que aparece atrás na barra de vida quando ultrapassa a vida máxima"

---------------------------------------
-- Cast Bars
---------------------------------------

L["Castbar_Look"] = "Aparência da barra de conjuração"
L["Castbar_UseModern"] = "Usar barras modernas"
L["Castbar_UseModern_Desc"] = "Usar as novas barras de conjuração modernas do retail."
L["Castbar_KeepDefaultModernTextures"] = "Manter texturas modernas padrão"
L["Castbar_KeepDefaultModernTextures_Desc"] = "Mantém as novas texturas modernas para barras de conjuração. Ignora a textura definida."
L["Castbar_Simple"] = "Barra de conjuração simples"
L["Castbar_Simple_Desc"] = "Oculta o fundo do texto da barra e move o texto para dentro da barra."
L["Castbar_HideShield"] = "Ocultar escudo em não interrompível"
L["Castbar_HideShield_Desc"] = "Oculta a textura do escudo ao redor do ícone do feitiço em conjurações não interrompíveis."
L["Castbar_HideSpark"] = "Ocultar faísca da barra"
L["Castbar_HideSpark_Desc"] = "Oculta a faísca que segue na barra de conjuração"
L["Castbar_HideIcon"] = "Ocultar ícone da barra"
L["Castbar_HideIcon_Desc"] = "Oculta o ícone do feitiço na barra de conjuração"
L["Castbar_Texture"] = "Textura da barra de conjuração"
L["Castbar_UninterruptibleTexture"] = "Textura não interrompível"
L["Castbar_Colors"] = "Cores da barra de conjuração"
L["Castbar_RecolorCastbar"] = "Recolorir barra de conjuração"
L["Castbar_RecolorCastbar_Desc"] = "Ativar cores personalizadas para barra de conjuração"
L["Castbar_Cast"] = "Conjuração"
L["Castbar_Channeled"] = "Canalizado"
L["Castbar_Uninterruptible"] = "Não interrompível"
L["Castbar_InterruptNotReady"] = "Interrupção não pronta"
L["Castbar_EnableNoInterruptColor"] = "Ativar cor sem interrupção"
L["Castbar_EnableNoInterruptColor_Desc"] = "Ativa para colorir barras de conjuração com esta cor quando você não tem interrupção pronta"
L["Castbar_InterruptNotReadyColor"] = "Cor interrupção não pronta"
L["Castbar_Position"] = "Posição da barra de conjuração"
L["Castbar_IconPosition"] = "Posição do ícone"
L["Castbar_CastbarSize"] = "Tamanho da barra de conjuração"
L["Castbar_IconSize"] = "Tamanho do ícone"
L["Castbar_IconScale"] = "Escala do ícone"

---------------------------------------
-- Diminishing Returns Options
---------------------------------------

L["DR_BrightBorder"] = "Borda DR brilhante"
L["DR_BlackBorder"] = "Borda DR preta"
L["DR_BlackBorder_Desc"] = "Torna as bordas DR pretas. Combine com a opção Mostrar texto DR"
L["DR_ShowText"] = "Mostrar texto DR"
L["DR_ShowText_Desc"] = "Mostra texto nos ícones DR indicando o estado atual do DR."
L["DR_DisableBorderGlow"] = "Desativar brilho da borda DR"
L["DR_ThickPixelBorder"] = "Borda pixel grossa"
L["DR_ThinPixelBorder"] = "Borda pixel fina"
L["DR_DisableBorder"] = "Desativar borda DR"
L["DR_DisableBorder_Desc"] = "Oculta completamente as bordas DR"
L["DR_BorderSize"] = "Tamanho da borda"
L["DR_SpecificSizeAdjustment"] = "Ajuste de tamanho específico DR"

---------------------------------------
-- Widgets
---------------------------------------

L["Widget_CombatIndicator"] = "Indicador de combate"
L["Widget_CombatIndicator_Enable"] = "Ativar indicador de combate"
L["Widget_CombatIndicator_Desc"] = "Mostra um ícone de comida quando o inimigo não está em combate"
L["Widget_TargetIndicator"] = "Indicador de alvo"
L["Widget_TargetIndicator_Enable"] = "Ativar indicador de alvo"
L["Widget_TargetIndicator_Desc"] = "Mostra um ícone no seu alvo atual"
L["Widget_FocusIndicator"] = "Indicador de foco"
L["Widget_FocusIndicator_Enable"] = "Ativar indicador de foco"
L["Widget_FocusIndicator_Desc"] = "Mostra um ícone no seu foco atual"
L["Widget_PartyTargetIndicators"] = "Indicadores de alvo do grupo"
L["Widget_PartyTargetIndicators_Enable"] = "Ativar indicadores de alvo do grupo"
L["Widget_PartyTargetIndicators_Desc"] = "Mostra ícones coloridos por classe nos quadros de arena que seus membros do grupo estão alvejando"

---------------------------------------
-- Text Settings
---------------------------------------

L["Text_Fonts"] = "Fontes"
L["Text_ChangeFont"] = "Mudar fonte"
L["Text_ChangeFont_Desc"] = "Muda as fontes usadas pelo sArena"
L["Text_FrameFont"] = "Fonte do quadro"
L["Text_FrameFont_Desc"] = "Usada para rótulos como nome, valores de vida/energia, texto de conjuração, etc."
L["Text_CooldownFont"] = "Fonte de recarga"
L["Text_CooldownFont_Desc"] = "Usada para números de tempo de recarga (berloque, DRs, raciais, etc.)."
L["Text_FontOutline"] = "Contorno da fonte"
L["Text_FontOutline_Desc"] = "Escolha o estilo de contorno para todos os elementos de texto."
L["Text_NameText"] = "Texto do nome"
L["Text_HealthText"] = "Texto de vida"
L["Text_ManaText"] = "Texto de mana"
L["Text_SpecNameText"] = "Texto do nome da spec"
L["Text_CastbarText"] = "Texto da barra de conjuração"
L["Text_DRText"] = "Texto DR"
L["Text_AnchorPoint"] = "Ponto de ancoragem"

---------------------------------------
-- Status Text
---------------------------------------

L["Status_Health"] = "Vida"
L["Status_Power"] = "Energia"
L["Status_HealthPercent"] = "Vida percentual"
L["Status_PowerPercent"] = "Energia percentual"
L["Status_HealthAndPower"] = "Vida e energia"
L["Status_HealthAndPowerPercent"] = "Vida e energia percentual"

---------------------------------------
-- Additional Options and Messages
---------------------------------------

L["Layout_Settings"] = "Configurações de layout"
L["Layout_Settings_Desc"] = "Essas configurações se aplicam apenas ao layout selecionado"
L["Global_Settings"] = "Configurações globais"
L["Global_Settings_Desc"] = "Essas configurações se aplicam a todos os layouts"

L["Text_ShowOnMouseover_Desc"] = "Se desativado, o texto é mostrado apenas ao passar o mouse"
L["Text_FormatLargeNumbers_Desc"] = "Formata números grandes. 18888 K -> 18.88 M"
L["Text_HidePowerText"] = "Ocultar texto de energia"
L["Text_HidePowerText_Desc"] = "Ocultar texto de mana/raiva/energia"

L["DarkMode_Enable"] = "Ativar modo escuro"
L["DarkMode_Enable_Desc"] = "Ativa o modo escuro para os quadros de arena."
L["DarkMode_Value"] = "Valor do modo escuro"
L["DarkMode_Value_Desc"] = "Define o valor de escuridão para os quadros no modo escuro (0 = preto, 1 = brilho normal)."
L["DarkMode_Desaturate_Desc"] = "Remove todas as cores das texturas no modo escuro.\n\n|cff888888Este é o comportamento padrão, mas com alguns layouts você pode preferir manter um pouco da cor original.|r"

L["ClassColor_Healthbars"] = "Barras de vida cor de classe"
L["ClassColor_Healthbars_Desc"] = "Quando desativado, as barras de vida serão verdes"
L["ClassColor_FrameTexture"] = "Textura de quadro cor de classe"
L["ClassColor_FrameTexture_Desc"] = "Aplica cores de classe às texturas de quadro (bordas)"
L["ClassColor_OnlyClassIcon"] = "Apenas ícone de classe"
L["ClassColor_OnlyClassIcon_Desc"] = "Aplica cor de classe apenas à borda do ícone de classe, não a outras texturas"
L["ClassColor_HealerGreen"] = "Colorir curandeiro de verde"
L["ClassColor_HealerGreen_Desc"] = "Muda os quadros de curandeiros para verde brilhante em vez da cor da classe"
L["ClassColor_NameText"] = "Texto do nome cor de classe"
L["ClassColor_NameText_Desc"] = "Quando ativado, os nomes dos jogadores serão coloridos por classe"

L["Icon_ReplaceHealerWithHealerIcon"] = "Substituir curandeiro por ícone de curandeiro"
L["Icon_ReplaceHealerWithHealerIcon_Desc"] = "Substituir o ícone de classe/spec do curandeiro por um ícone de curandeiro."
L["Healthbar_ReverseFill"] = "Preenchimento reverso da barra de vida"
L["Healthbar_ReverseFill_Desc"] = "Faz as barras de vida e energia preencherem da direita para a esquerda"
L["ClassIcon_HideAndShowOnlyAuras"] = "Ocultar ícone de classe, mostrar apenas auras"
L["ClassIcon_HideAndShowOnlyAuras_Desc"] = "Oculta o ícone de classe e mostra apenas auras quando estão ativas."
L["ClassIcon_DontShowAuras"] = "Não mostrar auras no ícone de classe"
L["ClassIcon_DontShowAuras_Desc"] = "Não mostra auras nos ícones de classe, sempre mostra o ícone de classe/spec."

L["Trinket_MinimalistDesign"] = "Design minimalista de berloque"
L["Trinket_MinimalistDesign_Desc"] = "Substituir a textura do berloque por uma cor verde sólida quando pronto e vermelho em recarga."
L["MysteryPlayer_GrayBars"] = "Barras cinzas de jogador misterioso"
L["MysteryPlayer_GrayBars_Desc"] = "Colore jogadores misteriosos com barras de status cinzas em vez de suas cores de classe. Jogadores misteriosos são jogadores não vistos, como antes da abertura dos portões e aqueles em furtividade."

L["Cooldown_ShowDecimalsThreshold_Desc"] = "Mostra decimais quando o tempo restante está abaixo deste limite. Padrão 6 segundos."
L["Cooldown_DisableBrightEdge"] = "Desativar borda brilhante nas espirais de recarga"
L["Cooldown_DisableBrightEdge_Desc"] = "Desativa a borda brilhante nas espirais de recarga para todos os ícones."
L["Cooldown_DisableClassIconSwipe"] = "Desativar animação do ícone de classe"
L["Cooldown_DisableClassIconSwipe_Desc"] = "Desativa a animação de espiral de recarga no ícone de classe."
L["Cooldown_DisableDRSwipe"] = "Desativar animação DR"
L["Cooldown_DisableDRSwipe_Desc"] = "Desativa a animação de espiral de recarga nos ícones DR."
L["Cooldown_DisableTrinketRacialSwipe"] = "Desativar animação de berloque e racial"
L["Cooldown_DisableTrinketRacialSwipe_Desc"] = "Desativa a animação de espiral de recarga nos ícones de berloque e racial."
L["Cooldown_ReverseClassIcon"] = "Reverter recarga do ícone de classe"
L["Cooldown_ReverseClassIcon_Desc"] = "Reverte a direção da recarga do ícone de classe. Muda se elas começam vazias e preenchem, ou cheias e esvaziam."
L["Cooldown_ReverseDR"] = "Reverter recarga DR"
L["Cooldown_ReverseDR_Desc"] = "Reverte a direção da animação de recarga DR."
L["Cooldown_ReverseTrinketRacial"] = "Reverter recarga de berloque e racial"
L["Cooldown_ReverseTrinketRacial_Desc"] = "Reverte a direção da recarga do berloque e racial."

L["Masque_Support"] = "Ativar suporte Masque"
L["Masque_Support_Desc"] = "Clique para ativar o suporte Masque para bordas de ícones.\n\nAtualmente, isso requer desativar Backdrop nas configurações do Masque para renderização correta."
L["Trinket_HideWhenNoTrinket"] = "Ocultar berloque quando não equipado"
L["Trinket_HideWhenNoTrinket_Desc"] = "Oculta a textura da bandeira branca no slot do berloque (significando nenhum berloque equipado). Nenhuma textura será mostrada."
L["Trinket_DesaturateOnCD"] = "Dessaturar berloque em TR"
L["Trinket_DesaturateOnCD_Desc"] = "Dessatura o ícone do berloque quando está em tempo de recarga."
L["Dispel_DesaturateOnCD"] = "Dessaturar dissipação em TR"
L["Dispel_DesaturateOnCD_Desc"] = "Dessatura o ícone de dissipação quando está em tempo de recarga."

L["DR_ClassSpecific"] = "Categorias DR específicas de classe"
L["DR_ClassSpecific_Desc"] = "Quando ativado, as categorias DR abaixo se tornam específicas para sua classe atual.\n\n|cff888888Inclui todas as categorias por padrão, você não verá uma mudança imediata, você precisa mudar manualmente aquelas que deseja personalizar.|r"
L["DR_SpecSpecific"] = "Categorias DR específicas de especialização"
L["DR_SpecSpecific_Desc"] = "Quando ativado, as categorias DR abaixo se tornam específicas para sua especialização atual.\n\n|cff888888Inclui todas as categorias por padrão, você não verá uma mudança imediata, você precisa mudar manualmente aquelas que deseja personalizar.|r"
L["DR_FixedIcons"] = "Ícones DR fixos"
L["DR_FixedIcons_Desc"] = "Os ícones DR sempre usarão um ícone específico para cada categoria DR."
L["DR_ClassSpecificIcons"] = "Ícones DR específicos de classe"
L["DR_ClassSpecificIcons_Desc"] = "Quando ativado, os ícones abaixo se tornam específicos para sua classe atual.\n\n|cff888888Inclui todos os ícones por padrão, você não verá uma mudança imediata, você precisa mudar manualmente aqueles que deseja personalizar.|r"
L["DR_SpecSpecificIcons"] = "Ícones DR específicos de especialização"
L["DR_SpecSpecificIcons_Desc"] = "Quando ativado, os ícones abaixo se tornam específicos para sua especialização atual.\n\n|cff888888Inclui todos os ícones por padrão, você não verá uma mudança imediata, você precisa mudar manualmente aqueles que deseja personalizar.|r"

L["Racial_ShowInTrinketSlot"] = "Mostrar racial no slot de berloque sem berloque"
L["Racial_ShowInTrinketSlot_Desc"] = "Se o inimigo não tem berloque, remova o espaço e mostre sua racial no lugar do berloque."
L["Human_AlwaysShowTrinket"] = "Sempre mostrar berloque da Aliança para humanos"
L["Human_AlwaysShowTrinket_Desc"] = "Sempre mostra a textura do berloque da Aliança em jogadores humanos, mesmo se eles não tiverem berloque equipado."

L["Drag_Hint"] = "Ctrl+Shift+Clique para arrastar"

L["Option_AddonConflict"] = "Conflito de addon"
L["Option_Layout"] = "Layout"
L["Option_Test"] = "Teste"
L["Option_Hide"] = "Ocultar"
L["Option_ArenaFrames"] = "Quadros de arena"
L["Option_StatusText"] = "Texto de status"
L["Option_AlwaysShow"] = "Sempre mostrar"
L["Option_UsePercentage"] = "Usar porcentagem"
L["Option_FormatNumbers"] = "Formatar números"
L["Option_DarkMode"] = "Modo escuro"
L["Option_Desaturate"] = "Dessaturar"
L["Option_ClassColorNames"] = "Nomes cor de classe"
L["Option_ReplaceHealerIcon"] = "Substituir ícone de curandeiro"
L["Option_ShowNames"] = "Mostrar nomes"
L["Option_ShowArenaNumber"] = "Mostrar número de arena"
L["Option_ReverseBarsFill"] = "Reverter preenchimento de barras"
L["Option_HideClassIconShowAurasOnly"] = "Ocultar ícone de classe (apenas auras)"
L["Option_DisableAurasOnClassIcon"] = "Desativar auras no ícone de classe"
L["Option_ShadowsightTimer"] = "Ativar timer de Visão das Sombras"
L["Option_ShadowsightTimer_Desc"] = "Mostra um timer no topo da tela para buffs de Visão das Sombras em arena"
L["Shadowsight_Ready"] = "Visão das Sombras pronta"
L["Shadowsight_SpawnsIn"] = "Visão das Sombras aparece em %d seg"
L["Option_ColorTrinket"] = "Colorir berloque"
L["Option_ColorNonVisibleFramesGray"] = "Colorir quadros não visíveis de cinza"
L["Option_ShowDecimalsOnClassIcon"] = "Mostrar decimais no ícone de classe"
L["Option_DecimalThreshold"] = "Limite de decimais"
L["Option_SwipeAnimations"] = "Animações de varredura"
L["Option_DisableCooldownSwipeEdge"] = "Desativar borda de varredura de recarga"
L["Option_DisableClassIconSwipe"] = "Desativar varredura do ícone de classe"
L["Option_DisableDRSwipeAnimation"] = "Desativar animação de varredura DR"
L["Option_DisableTrinketRacialSwipe"] = "Desativar varredura de berloque e racial"
L["Option_ReverseClassIconSwipe"] = "Reverter varredura do ícone de classe"
L["Option_ReverseDRSwipeAnimation"] = "Reverter animação de varredura DR"
L["Option_ReverseTrinketRacialSwipe"] = "Reverter varredura de berloque e racial"
L["Option_Miscellaneous"] = "Diversos"
L["Option_EnableMasqueSupport"] = "Ativar suporte Masque"
L["Option_RemoveUnEquippedTrinketTexture"] = "Remover textura de berloque não equipado"
L["Option_DesaturateTrinketCD"] = "Dessaturar TR de berloque"
L["Option_DesaturateDispelCD"] = "Dessaturar TR de dissipação"
L["Option_DRResetTime"] = "Tempo de reset DR"
L["Option_ShowDecimalsOnDRs"] = "Mostrar decimais nos DRs"
L["Option_ColorDRCooldownText"] = "Colorir texto TR de DR por severidade"
L["Option_ColorDRCooldownText_Desc"] = "Colore o texto de contagem regressiva DR com base na severidade.\n\n|cff00ff00Verde|r para ½ diminuição\n|cffffff00Amarelo|r para ¼ diminuição\n|cffff0000Vermelho|r para imune"
L["Option_ColorDRCooldownText_Desc_Midnight"] = "Colore o texto de contagem regressiva DR com base na severidade.\n\n|cff00ff00Verde|r para ½ diminuição\n|cffff0000Vermelho|r para imune"
L["Option_DRCategories"] = "Categorias DR"
L["Option_PerClass"] = "Por classe"
L["Option_PerSpec"] = "Por especialização"
L["Option_DRIcons"] = "Ícones DR"
L["Option_EnableStaticIcons"] = "Ativar ícones estáticos"
L["Option_Categories"] = "Categorias"
L["Option_SwapMissingTrinketWithRacial"] = "Trocar berloque ausente por racial"
L["Option_ForceShowTrinketOnHuman"] = "Forçar mostrar berloque em humano"
L["Option_ReplaceHumanRacialWithTrinket"] = "Substituir racial humana por berloque"
L["Option_ShowDispels"] = "Mostrar dissipações"
L["Option_HealerDispels"] = "Dissipações de curandeiro"
L["Option_DPSDispels"] = "Dissipações de DPS"
L["Option_OthersArena"] = "Outro sArena"
L["Option_ImportSettings"] = "Importar configurações"
L["Option_ShareProfile"] = "Compartilhar perfil"
L["Option_ExportCurrentProfile"] = "Exportar perfil atual"
L["Option_ExportString"] = "String de exportação"
L["Option_PasteProfileString"] = "Colar string de perfil"
L["Option_ImportDescription"] = "Isso importará suas configurações do outro sArena para a nova versão sArena Updated 2 by sammers.\n\nCertifique-se de que ambos os addons estão ativados, então clique no botão abaixo."
L["Message_NoLayoutSettings"] = "O layout selecionado não parece ter configurações."
L["Option_ReplaceHumanRacialWithTrinket_Desc"] = "Substitui a habilidade racial humana pela textura do berloque da Aliança no slot racial."
L["Option_ShowDispels_Desc"] = "Ativa para mostrar o tempo de recarga de dissipação nos quadros de arena."
L["Option_OthersArena_Desc"] = "Importar configurações de outro sArena"
L["Option_ImportSettings_Desc"] = "Importa suas configurações da outra versão do sArena."
L["Option_MidnightPlans_Desc"] = "Planos para World of Warcraft: Midnight"
L["Option_ShareProfile_Desc"] = "Exportar ou importar um perfil sArena"
L["Option_ExportString_Desc"] = "|cff32f795Ctrl+A|r para selecionar tudo, |cff32f795Ctrl+C|r para copiar"
L["Option_PasteProfileString_Desc"] = "|cff32f795Ctrl+V|r para colar a string de perfil copiada"
L["Option_TrinketCircleBorder_Desc"] = "Ativa borda circular para ícones de berloques"
L["Option_DefaultIcon_Desc"] = "Ícone padrão: %s |T%s:24|t"
L["Option_ImportProfile_Desc"] = "Importar configurações de perfil de %s.\n\n%swww.twitch.tv/%s|r"
L["Option_DPSDispelsNote"] = "|cFFFFFF00Nota:|r Dissipações de DPS só aparecem após serem usadas uma vez."
L["Option_DispelsBetaNotice"] = "\n|cFF808080Dissipações estão em BETA.\nPrecisa confirmar alguns IDs de feitiço, especialmente em Mists of Pandaria.\nAs coisas ainda precisam de mais testes (aguardando PTR) e podem mudar.\nSe você quiser contribuir com info/feedback/IDs de feitiço, fique à vontade!|r"
L["Option_ExportProfileHeader"] = "|cffffff00Exportar perfil:|r"
L["Option_ImportProfileHeader"] = "|cffffff00Importar perfil:|r"
L["Option_StreamerProfilesHeader"] = "|cffffff00Perfis de streamers:|r"

L["Message_InvalidFormat"] = "Formato inválido."
L["Message_DecompressionError"] = "Erro de descompressão: %s"
L["Message_DeserializationError"] = "Erro de deserialização ou formato inválido."
L["Message_ImportFailed"] = "|cffff4040Falha na importação:|r"
L["Message_ExportFailed"] = "Falha na exportação:"
L["Message_NoProfileFound"] = "Nenhum perfil encontrado para o personagem atual."
L["Message_ProfileDataNotFound"] = "Dados do perfil não encontrados."
L["Message_IncorrectDataType"] = "Tipo de dados incorreto."
L["Message_ProfileOverwrite"] = "Você já tem o perfil de %s. Reimportá-lo sobrescreverá todas as suas configurações para esse perfil. Tem certeza de que deseja continuar?"
L["ImportExport_DialogTitle"] = "Confirmação de importação sArena"
L["Message_MidnightWarningTitle"] = "|cffa020f0Aviso Beta Midnight|r"
L["Message_MidnightWarningText"] = "Midnight está em Beta e o Modo de Edição está causando\nerros nos novos DRs.\n\n|cffFFFF00Recarregue a UI para corrigir.|r\n\nEste aviso será removido assim que\na Blizzard corrigir o Modo de Edição e os DRs."
L["Button_ReloadUI"] = "Recarregar UI"
L["DR_CategoriesPerSpec"] = "Categorias (Por Spec: %s)"
L["DR_CategoriesPerClass"] = "Categorias (Por Classe: %s)"
L["DR_CategoriesGlobal"] = "Categorias (Global)"
L["DR_IconsPerSpec"] = "Configurar ícones DR (Por Spec: %s)"
L["DR_IconsPerClass"] = "Configurar ícones DR (Por Classe: %s)"
L["DR_IconsGlobal"] = "Configurar ícones DR (Global)"
L["Option_ShowDecimalsOnClassIcon_Desc"] = "Mostra decimais no ícone de classe quando a duração é menor que 6 segundos.\n\nApenas para usuários sem OmniCC."
L["Option_ShowDecimalsOnDRs_Desc"] = "Mostra decimais nos DRs quando a duração é menor que 6 segundos.\n\nApenas para usuários sem OmniCC."
L["Option_StreamerProfiles_Desc"] = "Importar perfis pré-configurados de streamers populares.\nVocê manterá todos os seus perfis atuais incluindo seu perfil ativo \"|cff00ff00%s|r\".\nPara mudar de perfil novamente, vá para a aba Perfis."
L["Unknown"] = "Desconhecido"
L["Unknown_Spell"] = "Feitiço desconhecido"
L["Cooldown_Seconds"] = "Tempo de recarga: %d segundos"
L["SelectAll"] = "Selecionar tudo"

---------------------------------------
-- Data Collection
---------------------------------------

L["DataCollection_NotEnabled"] = "A coleta de dados não está ativada. Primeiro defina db.collectData = true."
L["DataCollection_NoDataYet"] = "Nenhum dado de feitiço foi coletado ainda."
L["DataCollection_ExportTitle"] = "Dados de feitiços coletados pelo sArena"
L["DataCollection_ExportComplete"] = "%d entradas totais coletadas. Dados exibidos na janela de exportação."

L["Print_CurrentVersion"] = "Versão atual: %s"
L["Print_MultipleVersionsLoaded"] = "Duas versões diferentes do sArena estão carregadas. Por favor selecione como continuar digitando /sarena"

L["Conflict_MultipleVersions"] = "Múltiplas versões do sArena detectadas"
L["Conflict_Warning"] = "|A:services-icon-warning:20:20|a |cffff4444Duas versões diferentes do sArena estão ativadas|r |A:services-icon-warning:20:20|a"
L["Conflict_Explanation"] = "|cffffffffDuas versões diferentes do sArena não podem funcionar corretamente juntas.\nVocê precisará usar apenas uma. Você tem 3 opções:|r"
L["Conflict_UseOther"] = "|cffffffffUsar o outro sArena|r"
L["Conflict_UseOther_Desc"] = "Isso desativará o |cffffffffsArena Updated 2 by sammers e usará seu outro sArena e recarregará sua UI."
L["Conflict_UseOther_Confirm"] = "Isso desativará o |cffffffffsArena Updated 2 by sammers e usará o outro sArena e recarregará sua UI.\n\nContinuar?"
L["Conflict_UseReloaded_Import"] = "|cffffffffUsar sArena Updated 2 by sammers: Importar outras configurações"
L["Conflict_UseReloaded_Import_Desc"] = "Isso copiará seu perfil atual e as configurações existentes do outro sArena, desativará o outro sArena para compatibilidade, e recarregará sua UI para que você possa começar a usar o sArena Updated 2 by sammers"
L["Conflict_UseReloaded_Import_Confirm"] = "Isso copiará seu perfil atual e as configurações existentes do outro sArena, desativará o outro sArena para compatibilidade, e recarregará sua UI para que você possa começar a usar o sArena Updated 2 by sammers\n\nContinuar?"
L["Conflict_UseReloaded_NoImport"] = "|cffffffffUsar sArena Updated 2 by sammers: Não importar outras configurações"
L["Conflict_UseReloaded_NoImport_Desc"] = "Isso desativará o outro sArena para compatibilidade e recarregará sua UI para que você possa começar a usar o sArena Updated 2 by sammers sem suas outras configurações."
L["Conflict_UseReloaded_NoImport_Confirm"] = "Isso desativará o outro sArena para compatibilidade e recarregará sua UI para que você possa começar a usar o sArena Updated 2 by sammers sem suas outras configurações.\n\nContinuar?"
L["Midnight_UpdateInfo"] = "|cff00ff00ATUALIZAÇÃO: Tudo agora disponível no Midnight.|r\n\nPretendo continuar desenvolvendo o |cffffffffsArena Updated 2 by sammers também para o Midnight.\n\nAlguns recursos precisarão ser ajustados ou removidos, mas o addon permanecerá.\nO Midnight ainda está em Alpha inicial e ainda não comecei a preparação (14 Out), mas em breve.\n\nOs planos podem mudar, mas estou confiante de que o |cffffffffsArena Updated 2 by sammers e meus outros addons\n|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates permanecerão para o Midnight (com mudanças/remoções).\n\nTenho muito trabalho pela frente, e qualquer apoio é muito apreciado. (|cff00c0ff@bodify|r)\nAtualizarei esta seção com informações mais detalhadas quando souber mais em algumas semanas/meses."
L["Midnight_BetaInfo"] = "Bem-vindo ao Midnight! Meus outros addons |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates também estão em desenvolvimento.\n\nAs coisas mudarão rapidamente durante o desenvolvimento aqui, especialmente quando a nova API estiver disponível.\nEste Beta do Midnight é prematuro e muitas coisas ainda estão faltando no jogo.\nVou experimentar com muitas coisas até o lançamento do Midnight.\n\nAtualmente isso mudou:\n1) DRs agora são tratados pela Blizzard, sArena apenas ajusta o que é permitido.\n 1.1) Configuração de espaço removida.\n 1.2) Dimensionamento individual removido.\n 1.3) Crescimento para cima/baixo removido.\n 1.4) Ícones agora são os ícones estranhos da Blizzard, essas configurações removidas.\n2) Auras não-CC não são mais mostradas, apenas CCs que a Blizzard nos deixa ver.\n3) Absorções nos quadros removidas.\n4) Tempo de recarga racial não pode ser rastreado, mas a racial ainda é visível.\n5) Dissipações removidas..\n\nNem tudo está completamente definido e pode haver coisas novas, mas veremos. Manterei isso atualizado aqui."

