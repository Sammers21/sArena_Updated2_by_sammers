-- Traditional Chinese localization for sArena Updated 2 by sammers
-- sArena Updated 2 by sammers 繁體中文本地化

local locale = GetLocale()
if locale ~= "zhTW" then return end

local L = sArenaMixin.L

---------------------------------------
-- 通用術語
---------------------------------------

L["Yes"] = "是"
L["No"] = "否"
L["Enable"] = "啟用"
L["Disable"] = "停用"
L["Reset"] = "重置"
L["Scale"] = "縮放"
L["Size"] = "大小"
L["Width"] = "寬度"
L["Height"] = "高度"
L["Horizontal"] = "水平"
L["Vertical"] = "垂直"
L["Spacing"] = "間距"
L["Positioning"] = "定位"
L["Sizing"] = "尺寸調整"
L["Options"] = "選項"
L["BorderSize"] = "邊框大小"
L["GrowthDirection"] = "增長方向"
L["AnchorPoint"] = "錨點"

---------------------------------------
-- 方向
---------------------------------------

L["Direction_Down"] = "下"
L["Direction_Up"] = "上"
L["Direction_Right"] = "右"
L["Direction_Left"] = "左"
L["Direction_Center"] = "中"
L["Direction_TopLeft"] = "左上"
L["Direction_Top"] = "上"
L["Direction_TopRight"] = "右上"
L["Direction_BottomLeft"] = "左下"
L["Direction_Bottom"] = "下"
L["Direction_BottomRight"] = "右下"

---------------------------------------
-- 字體輪廓
---------------------------------------

L["Outline_None"] = "無輪廓"
L["Outline_Normal"] = "輪廓"
L["Outline_Thick"] = "粗輪廓"

---------------------------------------
-- 訊息
---------------------------------------

L["Message_MustLeaveCombat"] = "你必須先離開戰鬥。"

---------------------------------------
-- 遞減效果分類
---------------------------------------

L["DR_Stun"] = "昏迷"
L["DR_Incapacitate"] = "癱瘓"
L["DR_Disorient"] = "迷惑"
L["DR_Silence"] = "沉默"
L["DR_Root"] = "定身"
L["DR_Knock"] = "擊退"
L["DR_Disarm"] = "繳械"
L["DR_Fear"] = "恐懼"
L["DR_Horror"] = "驚駭"
L["DR_Cyclone"] = "颶風"
L["DR_MindControl"] = "精神控制"
L["DR_RandomStun"] = "隨機昏迷"
L["DR_RandomRoot"] = "隨機定身"
L["DR_Charge"] = "衝鋒"

---------------------------------------
-- 種族名稱
---------------------------------------

L["Race_Human"] = "人類"
L["Race_Scourge"] = "不死族"
L["Race_Dwarf"] = "矮人"
L["Race_NightElf"] = "乃乙精靈"
L["Race_Gnome"] = "乃矮"
L["Race_Draenei"] = "乃乙奈"
L["Race_Worgen"] = "乃根"
L["Race_Pandaren"] = "熊貓人"
L["Race_Orc"] = "獸人"
L["Race_Tauren"] = "乃頭人"
L["Race_Troll"] = "乃魔"
L["Race_BloodElf"] = "血精靈"
L["Race_Goblin"] = "乃精"
L["Race_LightforgedDraenei"] = "光鑄乃乙奈"
L["Race_HighmountainTauren"] = "高嶺乃頭人"
L["Race_Nightborne"] = "乃之子"
L["Race_MagharOrc"] = "瑪乃漢獸人"
L["Race_DarkIronDwarf"] = "黑鐵矮人"
L["Race_ZandalariTroll"] = "乃達拉乃魔"
L["Race_VoidElf"] = "虛空精靈"
L["Race_KulTiran"] = "乃爾提拉斯人"
L["Race_Mechagnome"] = "機械乃矮"
L["Race_Vulpera"] = "乃人"
L["Race_Dracthyr"] = "乃希爾"
L["Race_EarthenDwarf"] = "土靈"
L["Race_Harronir"] = "哈洛尼爾"

---------------------------------------
-- 主要分類
---------------------------------------

L["Category_ArenaFrames"] = "競技場框架"
L["Category_SpecIcons"] = "專精圖示"
L["Category_Trinkets"] = "飾品"
L["Category_Racials"] = "種族技能"
L["Category_Dispels"] = "驅散"
L["Category_CastBars"] = "施法條"
L["Category_DiminishingReturns"] = "遞減效果"
L["Category_Widgets"] = "元件"
L["Category_TextSettings"] = "文字設定"
L["Category_ClassIcon"] = "職業圖示"

---------------------------------------
-- 材質
---------------------------------------

L["Textures"] = "材質"
L["Texture_General"] = "通用材質"
L["Texture_General_Desc"] = "提示：如果你用自己的材質替換了WoW預設材質，請選擇\"Blizzard Raid Bar\"。"
L["Texture_Healer"] = "治療者材質"
L["Texture_Healer_Desc"] = "提示：僅在職業堆疊時啟用。如果你想始終更改材質，請取消勾選\"僅職業堆疊\"。"
L["Texture_ClassStackingOnly"] = "僅職業堆疊"
L["Texture_ClassStackingOnly_Desc"] = "僅在職業堆疊時更改治療者材質。\n\n例如當敵方隊伍中有恢復德魯伊和野性德魯伊時。"
L["Texture_Background"] = "背景材質"
L["Texture_Background_Desc"] = "生命值/能量條背景的材質。"
L["Texture_BackgroundColor"] = "背景顏色"
L["Texture_BackgroundColor_Desc"] = "生命值/能量條背景的顏色。"

---------------------------------------
-- 競技場框架選項
---------------------------------------

L["Option_ReplaceClassIcon"] = "替換職業圖示"
L["Option_ReplaceClassIcon_Desc"] = "用專精圖示替換職業圖示並隱藏小的\"專精圖示按鈕\""
L["Option_GrowthDirection"] = "增長方向"
L["Option_SpacingBetweenFrames"] = "競技場框架間距"
L["Option_SpacingBetweenFrames_Desc"] = "每個競技場框架之間的間距"
L["Option_ClassIconCDFontSize"] = "職業圖示冷卻字體大小"
L["Option_ClassIconCDFontSize_Desc"] = "僅適用於暴雪倒數（非OmniCC）"
L["Option_FontSize"] = "字體大小"
L["Option_FontSize_Desc"] = "僅適用於暴雪倒數（非OmniCC）"
L["Option_MirroredFrames"] = "鏡像框架"
L["Option_PowerBarHeight"] = "能量條高度"
L["Option_SpecTextOnManabar"] = "在法力條上顯示專精文字"
L["Option_CropIcons"] = "裁剪圖示"
L["Option_PixelBorderSize"] = "像素邊框大小"
L["Option_PixelBorderOffset"] = "像素邊框偏移"
L["Option_DRPixelBorderSize"] = "DR像素邊框大小"
L["Option_HideNameBackground"] = "隱藏名字背景"
L["Option_BigHealthbar"] = "大生命條"
L["Option_TrinketCircleBorder"] = "飾品圓形邊框"
L["Option_TrinketCircleBorder_Desc"] = "為飾品圖示啟用圓形邊框"
L["Option_DisableOvershields"] = "停用護盾溢出"
L["Option_DisableOvershields_Desc"] = "停用超過最大生命值時顯示在生命條後面的吸收盾"

---------------------------------------
-- 施法條
---------------------------------------

L["Castbar_Look"] = "施法條外觀"
L["Castbar_UseModern"] = "使用現代樣式"
L["Castbar_UseModern_Desc"] = "使用新的現代正式服施法條。"
L["Castbar_KeepDefaultModernTextures"] = "保持預設現代材質"
L["Castbar_KeepDefaultModernTextures_Desc"] = "保持施法條的新現代材質。忽略已設定的材質。"
L["Castbar_Simple"] = "簡潔施法條"
L["Castbar_Simple_Desc"] = "隱藏條紋文字背景並將文字移到條內。"
L["Castbar_HideShield"] = "不可打斷時隱藏盾牌"
L["Castbar_HideShield_Desc"] = "隱藏不可打斷施法時法術圖示周圍的盾牌材質。"
L["Castbar_HideSpark"] = "隱藏條紋火花"
L["Castbar_HideSpark_Desc"] = "隱藏施法條上跟隨的火花"
L["Castbar_HideIcon"] = "隱藏條紋圖示"
L["Castbar_HideIcon_Desc"] = "隱藏施法條上的法術圖示"
L["Castbar_Texture"] = "施法條材質"
L["Castbar_UninterruptibleTexture"] = "不可打斷材質"
L["Castbar_Colors"] = "施法條顏色"
L["Castbar_RecolorCastbar"] = "重新著色施法條"
L["Castbar_RecolorCastbar_Desc"] = "啟用自訂施法條顏色"
L["Castbar_Cast"] = "施法"
L["Castbar_Channeled"] = "引導"
L["Castbar_Uninterruptible"] = "不可打斷"
L["Castbar_InterruptNotReady"] = "打斷未就緒"
L["Castbar_EnableNoInterruptColor"] = "啟用無打斷顏色"
L["Castbar_EnableNoInterruptColor_Desc"] = "啟用後，當你沒有打斷就緒時，施法條將顯示此顏色"
L["Castbar_InterruptNotReadyColor"] = "打斷未就緒顏色"
L["Castbar_Position"] = "施法條位置"
L["Castbar_IconPosition"] = "圖示位置"
L["Castbar_CastbarSize"] = "施法條大小"
L["Castbar_IconSize"] = "圖示大小"
L["Castbar_IconScale"] = "圖示縮放"

---------------------------------------
-- 遞減效果選項
---------------------------------------

L["DR_BrightBorder"] = "明亮DR邊框"
L["DR_BlackBorder"] = "黑色DR邊框"
L["DR_BlackBorder_Desc"] = "使DR邊框變黑。與顯示DR文字選項配合使用"
L["DR_ShowText"] = "顯示DR文字"
L["DR_ShowText_Desc"] = "在DR圖示上顯示當前DR狀態的文字。"
L["DR_DisableBorderGlow"] = "停用DR邊框發光"
L["DR_ThickPixelBorder"] = "粗像素邊框"
L["DR_ThinPixelBorder"] = "細像素邊框"
L["DR_DisableBorder"] = "停用DR邊框"
L["DR_DisableBorder_Desc"] = "完全隱藏DR邊框"
L["DR_BorderSize"] = "邊框大小"
L["DR_SpecificSizeAdjustment"] = "DR特定大小調整"

---------------------------------------
-- 元件
---------------------------------------

L["Widget_CombatIndicator"] = "戰鬥指示器"
L["Widget_CombatIndicator_Enable"] = "啟用戰鬥指示器"
L["Widget_CombatIndicator_Desc"] = "當敵人不在戰鬥中時顯示食物圖示"
L["Widget_TargetIndicator"] = "目標指示器"
L["Widget_TargetIndicator_Enable"] = "啟用目標指示器"
L["Widget_TargetIndicator_Desc"] = "在你當前目標上顯示圖示"
L["Widget_FocusIndicator"] = "焦點指示器"
L["Widget_FocusIndicator_Enable"] = "啟用焦點指示器"
L["Widget_FocusIndicator_Desc"] = "在你當前焦點上顯示圖示"
L["Widget_PartyTargetIndicators"] = "隊伍目標指示器"
L["Widget_PartyTargetIndicators_Enable"] = "啟用隊伍目標指示器"
L["Widget_PartyTargetIndicators_Desc"] = "在隊友正在攻擊的競技場框架上顯示職業顏色圖示"

---------------------------------------
-- 文字設定
---------------------------------------

L["Text_Fonts"] = "字體"
L["Text_ChangeFont"] = "更改字體"
L["Text_ChangeFont_Desc"] = "更改sArena使用的字體"
L["Text_FrameFont"] = "框架字體"
L["Text_FrameFont_Desc"] = "用於名字、生命/能量值、施法文字等標籤。"
L["Text_CooldownFont"] = "冷卻字體"
L["Text_CooldownFont_Desc"] = "用於冷卻數字（飾品、DR、種族等）。"
L["Text_FontOutline"] = "字體輪廓"
L["Text_FontOutline_Desc"] = "選擇所有文字元素的輪廓樣式。"
L["Text_NameText"] = "名字文字"
L["Text_HealthText"] = "生命值文字"
L["Text_ManaText"] = "法力值文字"
L["Text_SpecNameText"] = "專精名稱文字"
L["Text_CastbarText"] = "施法條文字"
L["Text_DRText"] = "DR文字"
L["Text_AnchorPoint"] = "錨點"

---------------------------------------
-- 狀態文字
---------------------------------------

L["Status_Health"] = "生命值"
L["Status_Power"] = "能量"
L["Status_HealthPercent"] = "生命值百分比"
L["Status_PowerPercent"] = "能量百分比"
L["Status_HealthAndPower"] = "生命值和能量"
L["Status_HealthAndPowerPercent"] = "生命值和能量百分比"

---------------------------------------
-- 附加選項和訊息
---------------------------------------

L["Layout_Settings"] = "佈局設定"
L["Layout_Settings_Desc"] = "這些設定僅適用於所選佈局"
L["Global_Settings"] = "全域設定"
L["Global_Settings_Desc"] = "這些設定適用於所有佈局"

L["Text_ShowOnMouseover_Desc"] = "如果停用，文字僅在滑鼠懸停時顯示"
L["Text_FormatLargeNumbers_Desc"] = "格式化大數字。18888 K -> 18.88 M"
L["Text_HidePowerText"] = "隱藏能量文字"
L["Text_HidePowerText_Desc"] = "隱藏法力/怒氣/能量文字"

L["DarkMode_Enable"] = "啟用暗黑模式"
L["DarkMode_Enable_Desc"] = "為競技場框架啟用暗黑模式。"
L["DarkMode_Value"] = "暗黑模式值"
L["DarkMode_Value_Desc"] = "設定暗黑模式下框架的暗度值（0 = 黑色，1 = 正常亮度）。"
L["DarkMode_Desaturate_Desc"] = "在暗黑模式下移除材質的所有顏色。\n\n|cff888888這是預設行為，但對於某些佈局，你可能更喜歡保留一些原始顏色。|r"

L["ClassColor_Healthbars"] = "職業顏色生命條"
L["ClassColor_Healthbars_Desc"] = "停用時，生命條將為綠色"
L["ClassColor_FrameTexture"] = "職業顏色框架材質"
L["ClassColor_FrameTexture_Desc"] = "將職業顏色應用於框架材質（邊框）"
L["ClassColor_OnlyClassIcon"] = "僅職業圖示"
L["ClassColor_OnlyClassIcon_Desc"] = "僅將職業顏色應用於職業圖示邊框，而不是其他材質"
L["ClassColor_HealerGreen"] = "治療者顯示綠色"
L["ClassColor_HealerGreen_Desc"] = "將治療者框架改為亮綠色而不是職業顏色"
L["ClassColor_NameText"] = "職業顏色名字文字"
L["ClassColor_NameText_Desc"] = "啟用時，玩家名字將按職業著色"

L["Icon_ReplaceHealerWithHealerIcon"] = "用治療者圖示替換治療者"
L["Icon_ReplaceHealerWithHealerIcon_Desc"] = "用治療者圖示替換治療者的職業/專精圖示。"
L["Healthbar_ReverseFill"] = "反向填充生命條"
L["Healthbar_ReverseFill_Desc"] = "使生命條和能量條從右向左填充"
L["ClassIcon_HideAndShowOnlyAuras"] = "隱藏職業圖示，僅顯示光環"
L["ClassIcon_HideAndShowOnlyAuras_Desc"] = "隱藏職業圖示，僅在光環啟用時顯示。"
L["ClassIcon_DontShowAuras"] = "不在職業圖示上顯示光環"
L["ClassIcon_DontShowAuras_Desc"] = "不在職業圖示上顯示光環，始終顯示職業/專精圖示。"

L["Trinket_MinimalistDesign"] = "極簡飾品設計"
L["Trinket_MinimalistDesign_Desc"] = "準備就緒時用純綠色替換飾品材質，冷卻中用紅色。"
L["MysteryPlayer_GrayBars"] = "神秘玩家灰色條"
L["MysteryPlayer_GrayBars_Desc"] = "用灰色狀態條為神秘玩家著色而不是他們的職業顏色。神秘玩家是未見過的玩家，如門打開前的玩家和潛行中的玩家。"

L["Cooldown_ShowDecimalsThreshold_Desc"] = "當剩餘時間低於此閾值時顯示小數。預設6秒。"
L["Cooldown_DisableBrightEdge"] = "停用冷卻旋轉上的明亮邊緣"
L["Cooldown_DisableBrightEdge_Desc"] = "停用所有圖示上冷卻旋轉的明亮邊緣。"
L["Cooldown_DisableClassIconSwipe"] = "停用職業圖示動畫"
L["Cooldown_DisableClassIconSwipe_Desc"] = "停用職業圖示上的冷卻旋轉動畫。"
L["Cooldown_DisableDRSwipe"] = "停用DR動畫"
L["Cooldown_DisableDRSwipe_Desc"] = "停用DR圖示上的冷卻旋轉動畫。"
L["Cooldown_DisableTrinketRacialSwipe"] = "停用飾品和種族動畫"
L["Cooldown_DisableTrinketRacialSwipe_Desc"] = "停用飾品和種族圖示上的冷卻旋轉動畫。"
L["Cooldown_ReverseClassIcon"] = "反轉職業圖示冷卻"
L["Cooldown_ReverseClassIcon_Desc"] = "反轉職業圖示冷卻方向。更改它們是從空開始填滿，還是從滿開始清空。"
L["Cooldown_ReverseDR"] = "反轉DR冷卻"
L["Cooldown_ReverseDR_Desc"] = "反轉DR冷卻動畫方向。"
L["Cooldown_ReverseTrinketRacial"] = "反轉飾品和種族冷卻"
L["Cooldown_ReverseTrinketRacial_Desc"] = "反轉飾品和種族冷卻方向。"

L["Masque_Support"] = "啟用Masque支援"
L["Masque_Support_Desc"] = "點擊啟用圖示邊框的Masque支援。\n\n目前，這需要在Masque設定中停用Backdrop才能正確渲染。"
L["Trinket_HideWhenNoTrinket"] = "無飾品時隱藏飾品"
L["Trinket_HideWhenNoTrinket_Desc"] = "隱藏飾品槽中的白旗材質（表示沒有裝備飾品）。將不顯示任何材質。"
L["Trinket_DesaturateOnCD"] = "冷卻時飾品去飽和"
L["Trinket_DesaturateOnCD_Desc"] = "飾品冷卻時去飽和飾品圖示。"
L["Dispel_DesaturateOnCD"] = "冷卻時驅散去飽和"
L["Dispel_DesaturateOnCD_Desc"] = "驅散冷卻時去飽和驅散圖示。"

L["DR_ClassSpecific"] = "職業特定DR分類"
L["DR_ClassSpecific_Desc"] = "啟用時，以下DR分類將變為你當前職業特定的。\n\n|cff888888預設包含所有分類，你不會看到立即變化，你需要手動更改想要自訂的那些。|r"
L["DR_SpecSpecific"] = "專精特定DR分類"
L["DR_SpecSpecific_Desc"] = "啟用時，以下DR分類將變為你當前專精特定的。\n\n|cff888888預設包含所有分類，你不會看到立即變化，你需要手動更改想要自訂的那些。|r"
L["DR_FixedIcons"] = "固定DR圖示"
L["DR_FixedIcons_Desc"] = "DR圖示將始終為每個DR分類使用特定圖示。"
L["DR_ClassSpecificIcons"] = "職業特定DR圖示"
L["DR_ClassSpecificIcons_Desc"] = "啟用時，以下圖示將變為你當前職業特定的。\n\n|cff888888預設包含所有圖示，你不會看到立即變化，你需要手動更改想要自訂的那些。|r"
L["DR_SpecSpecificIcons"] = "專精特定DR圖示"
L["DR_SpecSpecificIcons_Desc"] = "啟用時，以下圖示將變為你當前專精特定的。\n\n|cff888888預設包含所有圖示，你不會看到立即變化，你需要手動更改想要自訂的那些。|r"

L["Racial_ShowInTrinketSlot"] = "無飾品時在飾品槽顯示種族"
L["Racial_ShowInTrinketSlot_Desc"] = "如果敵人沒有飾品，移除間隙並在飾品位置顯示其種族技能。"
L["Human_AlwaysShowTrinket"] = "人類始終顯示聯盟飾品"
L["Human_AlwaysShowTrinket_Desc"] = "始終在人類玩家上顯示聯盟飾品材質，即使他們沒有裝備飾品。"

L["Drag_Hint"] = "Ctrl+Shift+點擊拖動"

L["Option_AddonConflict"] = "插件衝突"
L["Option_Layout"] = "佈局"
L["Option_Test"] = "測試"
L["Option_Hide"] = "隱藏"
L["Option_ArenaFrames"] = "競技場框架"
L["Option_StatusText"] = "狀態文字"
L["Option_AlwaysShow"] = "始終顯示"
L["Option_UsePercentage"] = "使用百分比"
L["Option_FormatNumbers"] = "格式化數字"
L["Option_DarkMode"] = "暗黑模式"
L["Option_Desaturate"] = "去飽和"
L["Option_ClassColorNames"] = "職業顏色名字"
L["Option_ReplaceHealerIcon"] = "替換治療者圖示"
L["Option_ShowNames"] = "顯示名字"
L["Option_ShowArenaNumber"] = "顯示競技場編號"
L["Option_ReverseBarsFill"] = "反向填充條"
L["Option_HideClassIconShowAurasOnly"] = "隱藏職業圖示（僅光環）"
L["Option_DisableAurasOnClassIcon"] = "停用職業圖示上的光環"
L["Option_ShadowsightTimer"] = "啟用暗影視覺計時器"
L["Option_ShadowsightTimer_Desc"] = "在螢幕頂部顯示競技場暗影視覺增益的計時器"
L["Shadowsight_Ready"] = "暗影視覺就緒"
L["Shadowsight_SpawnsIn"] = "暗影視覺將在%d秒後出現"
L["Option_ColorTrinket"] = "著色飾品"
L["Option_ColorNonVisibleFramesGray"] = "將不可見框架著色為灰色"
L["Option_ShowDecimalsOnClassIcon"] = "在職業圖示上顯示小數"
L["Option_DecimalThreshold"] = "小數閾值"
L["Option_SwipeAnimations"] = "掃動動畫"
L["Option_DisableCooldownSwipeEdge"] = "停用冷卻掃動邊緣"
L["Option_DisableClassIconSwipe"] = "停用職業圖示掃動"
L["Option_DisableDRSwipeAnimation"] = "停用DR掃動動畫"
L["Option_DisableTrinketRacialSwipe"] = "停用飾品和種族掃動"
L["Option_ReverseClassIconSwipe"] = "反轉職業圖示掃動"
L["Option_ReverseDRSwipeAnimation"] = "反轉DR掃動動畫"
L["Option_ReverseTrinketRacialSwipe"] = "反轉飾品和種族掃動"
L["Option_Miscellaneous"] = "雜項"
L["Option_EnableMasqueSupport"] = "啟用Masque支援"
L["Option_RemoveUnEquippedTrinketTexture"] = "移除未裝備飾品材質"
L["Option_DesaturateTrinketCD"] = "飾品CD去飽和"
L["Option_DesaturateDispelCD"] = "驅散CD去飽和"
L["Option_DRResetTime"] = "DR重置時間"
L["Option_ShowDecimalsOnDRs"] = "在DR上顯示小數"
L["Option_ColorDRCooldownText"] = "按嚴重程度著色DR冷卻文字"
L["Option_ColorDRCooldownText_Desc"] = "根據嚴重程度著色DR倒數文字。\n\n|cff00ff00綠色|r 表示½減益\n|cffffff00黃色|r 表示¼減益\n|cffff0000紅色|r 表示免疫"
L["Option_ColorDRCooldownText_Desc_Midnight"] = "根據嚴重程度著色DR倒數文字。\n\n|cff00ff00綠色|r 表示½減益\n|cffff0000紅色|r 表示免疫"
L["Option_DRCategories"] = "DR分類"
L["Option_PerClass"] = "按職業"
L["Option_PerSpec"] = "按專精"
L["Option_DRIcons"] = "DR圖示"
L["Option_EnableStaticIcons"] = "啟用靜態圖示"
L["Option_Categories"] = "分類"
L["Option_SwapMissingTrinketWithRacial"] = "用種族替換缺失飾品"
L["Option_ForceShowTrinketOnHuman"] = "強制在人類上顯示飾品"
L["Option_ReplaceHumanRacialWithTrinket"] = "用飾品替換人類種族"
L["Option_ShowDispels"] = "顯示驅散"
L["Option_HealerDispels"] = "治療者驅散"
L["Option_DPSDispels"] = "DPS驅散"
L["Option_OthersArena"] = "其他sArena"
L["Option_ImportSettings"] = "匯入設定"
L["Option_ShareProfile"] = "分享設定檔"
L["Option_ExportCurrentProfile"] = "匯出當前設定檔"
L["Option_ExportString"] = "匯出字串"
L["Option_PasteProfileString"] = "貼上設定檔字串"
L["Option_ImportDescription"] = "這將從其他sArena匯入你的設定到新版本sArena Updated 2 by sammers。\n\n確保兩個插件都已啟用，然後點擊下面的按鈕。"
L["Message_NoLayoutSettings"] = "所選佈局似乎沒有設定。"
L["Option_ReplaceHumanRacialWithTrinket_Desc"] = "在種族槽中用聯盟飾品材質替換人類種族技能。"
L["Option_ShowDispels_Desc"] = "啟用以在競技場框架上顯示驅散冷卻。"
L["Option_OthersArena_Desc"] = "從其他sArena匯入設定"
L["Option_ImportSettings_Desc"] = "從其他版本sArena匯入你的設定。"
L["Option_MidnightPlans_Desc"] = "魔獸世界：午夜計畫"
L["Option_ShareProfile_Desc"] = "匯出或匯入sArena設定檔"
L["Option_ExportString_Desc"] = "|cff32f795Ctrl+A|r 全選，|cff32f795Ctrl+C|r 複製"
L["Option_PasteProfileString_Desc"] = "|cff32f795Ctrl+V|r 貼上複製的設定檔字串"
L["Option_TrinketCircleBorder_Desc"] = "為飾品圖示啟用圓形邊框"
L["Option_DefaultIcon_Desc"] = "預設圖示：%s |T%s:24|t"
L["Option_ImportProfile_Desc"] = "匯入%s的設定檔設定。\n\n%swww.twitch.tv/%s|r"
L["Option_DPSDispelsNote"] = "|cFFFFFF00注意：|r DPS驅散只在使用一次後才會顯示。"
L["Option_DispelsBetaNotice"] = "\n|cFF808080驅散處於測試階段。\n需要確認一些法術ID，特別是熊貓人之謎中的。\n事情仍需要更多測試（等待PTR）並可能改變。\n如果你想貢獻資訊/回饋/法術ID，歡迎！|r"
L["Option_ExportProfileHeader"] = "|cffffff00匯出設定檔：|r"
L["Option_ImportProfileHeader"] = "|cffffff00匯入設定檔：|r"
L["Option_StreamerProfilesHeader"] = "|cffffff00實況主設定檔：|r"

L["Message_InvalidFormat"] = "格式無效。"
L["Message_DecompressionError"] = "解壓縮錯誤：%s"
L["Message_DeserializationError"] = "反序列化錯誤或格式無效。"
L["Message_ImportFailed"] = "|cffff4040匯入失敗：|r"
L["Message_ExportFailed"] = "匯出失敗："
L["Message_NoProfileFound"] = "未找到當前角色的設定檔。"
L["Message_ProfileDataNotFound"] = "未找到設定檔資料。"
L["Message_IncorrectDataType"] = "資料類型不正確。"
L["Message_ProfileOverwrite"] = "你已經有%s的設定檔。重新匯入將覆蓋該設定檔的所有設定。你確定要繼續嗎？"
L["ImportExport_DialogTitle"] = "sArena匯入確認"
L["Message_MidnightWarningTitle"] = "|cffa020f0午夜Beta警告|r"
L["Message_MidnightWarningText"] = "午夜處於Beta階段，編輯模式正在導致\n新DR出錯。\n\n|cffFFFF00重載UI以修復。|r\n\n一旦暴雪修復編輯模式和DR，\n此警告將被移除。"
L["Button_ReloadUI"] = "重載UI"
L["DR_CategoriesPerSpec"] = "分類（按專精：%s）"
L["DR_CategoriesPerClass"] = "分類（按職業：%s）"
L["DR_CategoriesGlobal"] = "分類（全域）"
L["DR_IconsPerSpec"] = "設定DR圖示（按專精：%s）"
L["DR_IconsPerClass"] = "設定DR圖示（按職業：%s）"
L["DR_IconsGlobal"] = "設定DR圖示（全域）"
L["Option_ShowDecimalsOnClassIcon_Desc"] = "當持續時間少於6秒時在職業圖示上顯示小數。\n\n僅適用於沒有OmniCC的用戶。"
L["Option_ShowDecimalsOnDRs_Desc"] = "當持續時間少於6秒時在DR上顯示小數。\n\n僅適用於沒有OmniCC的用戶。"
L["Option_StreamerProfiles_Desc"] = "從熱門實況主匯入預設的設定檔。\n你將保留所有當前設定檔，包括你的活動設定檔\"|cff00ff00%s|r\"。\n要再次切換設定檔，請轉到設定檔選項卡。"
L["Unknown"] = "未知"
L["Unknown_Spell"] = "未知法術"
L["Cooldown_Seconds"] = "冷卻：%d秒"
L["SelectAll"] = "全選"

---------------------------------------
-- 資料收集
---------------------------------------

L["DataCollection_NotEnabled"] = "資料收集未啟用。首先設定db.collectData = true。"
L["DataCollection_NoDataYet"] = "尚未收集到法術資料。"
L["DataCollection_ExportTitle"] = "sArena收集的法術資料"
L["DataCollection_ExportComplete"] = "收集了%d個條目。資料顯示在匯出視窗中。"

L["Print_CurrentVersion"] = "當前版本：%s"
L["Print_MultipleVersionsLoaded"] = "已載入兩個不同版本的sArena。請輸入/sarena選擇如何繼續"

L["Conflict_MultipleVersions"] = "偵測到多個sArena版本"
L["Conflict_Warning"] = "|A:services-icon-warning:20:20|a |cffff4444兩個不同版本的sArena已啟用|r |A:services-icon-warning:20:20|a"
L["Conflict_Explanation"] = "|cffffffff兩個不同版本的sArena無法正常一起工作。\n你需要只使用一個。你有3個選項：|r"
L["Conflict_UseOther"] = "|cffffffff使用其他sArena|r"
L["Conflict_UseOther_Desc"] = "這將停用|cffffffffsArena Updated 2 by sammers並使用你的其他sArena並重載你的UI。"
L["Conflict_UseOther_Confirm"] = "這將停用|cffffffffsArena Updated 2 by sammers並使用其他sArena並重載你的UI。\n\n繼續？"
L["Conflict_UseReloaded_Import"] = "|cffffffff使用sArena Updated 2 by sammers：匯入其他設定"
L["Conflict_UseReloaded_Import_Desc"] = "這將複製你當前的設定檔和來自其他sArena的現有設定，停用其他sArena以相容，並重載你的UI以便你可以開始使用sArena Updated 2 by sammers"
L["Conflict_UseReloaded_Import_Confirm"] = "這將複製你當前的設定檔和來自其他sArena的現有設定，停用其他sArena以相容，並重載你的UI以便你可以開始使用sArena Updated 2 by sammers\n\n繼續？"
L["Conflict_UseReloaded_NoImport"] = "|cffffffff使用sArena Updated 2 by sammers：不匯入其他設定"
L["Conflict_UseReloaded_NoImport_Desc"] = "這將停用其他sArena以相容並重載你的UI以便你可以開始使用sArena Updated 2 by sammers而不帶你的其他設定。"
L["Conflict_UseReloaded_NoImport_Confirm"] = "這將停用其他sArena以相容並重載你的UI以便你可以開始使用sArena Updated 2 by sammers而不帶你的其他設定。\n\n繼續？"
L["Midnight_UpdateInfo"] = "|cff00ff00更新：午夜現已全部可用。|r\n\n我計畫繼續為午夜開發|cffffffffsArena Updated 2 by sammers。\n\n一些功能需要調整或移除，但插件會保留。\n午夜仍處於早期Alpha階段，我還沒有開始準備（10月14日），但很快。\n\n計畫可能會改變，但我有信心|cffffffffsArena Updated 2 by sammers和我的其他插件\n|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates將為午夜保留（有更改/移除）。\n\n我有很多工作要做，任何支持都非常感謝。（|cff00c0ff@bodify|r）\n當我在幾週/幾個月後了解更多資訊時，我會用更詳細的資訊更新這部分。"
L["Midnight_BetaInfo"] = "歡迎來到午夜！我的其他插件|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates也在開發中。\n\n在這裡開發期間事情會快速變化，特別是當新API可用時。\n這個午夜Beta是過早的，遊戲中仍然缺少很多東西。\n我會在午夜發布前嘗試很多東西。\n\n目前已更改：\n1) DR現在由暴雪處理，sArena只調整允許的內容。\n 1.1) 間距設定已移除。\n 1.2) 單獨大小調整已移除。\n 1.3) 向上/向下增長已移除。\n 1.4) 圖示現在是暴雪奇怪的圖示，這些設定已移除。\n2) 非CC光環不再顯示，只顯示暴雪讓我們看到的CC。\n3) 框架上的吸收已移除。\n4) 種族冷卻無法追蹤，但種族仍然可見。\n5) 驅散已移除。\n\n並非所有內容都完全確定，可能會有新東西，但我們會看到。我會在這裡保持更新。"

