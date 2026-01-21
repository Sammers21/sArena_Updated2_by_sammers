-- Simplified Chinese localization for sArena Updated 2 by sammers
-- sArena Updated 2 by sammers 简体中文本地化

local locale = GetLocale()
if locale ~= "zhCN" then return end

local L = sArenaMixin.L

---------------------------------------
-- 通用术语
---------------------------------------

L["Yes"] = "是"
L["No"] = "否"
L["Enable"] = "启用"
L["Disable"] = "禁用"
L["Reset"] = "重置"
L["Scale"] = "缩放"
L["Size"] = "大小"
L["Width"] = "宽度"
L["Height"] = "高度"
L["Horizontal"] = "水平"
L["Vertical"] = "垂直"
L["Spacing"] = "间距"
L["Positioning"] = "定位"
L["Sizing"] = "尺寸调整"
L["Options"] = "选项"
L["BorderSize"] = "边框大小"
L["GrowthDirection"] = "增长方向"
L["AnchorPoint"] = "锚点"

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
-- 字体轮廓
---------------------------------------

L["Outline_None"] = "无轮廓"
L["Outline_Normal"] = "轮廓"
L["Outline_Thick"] = "粗轮廓"

---------------------------------------
-- 消息
---------------------------------------

L["Message_MustLeaveCombat"] = "你必须先离开战斗。"

---------------------------------------
-- 递减效果分类
---------------------------------------

L["DR_Stun"] = "昏迷"
L["DR_Incapacitate"] = "瘫痪"
L["DR_Disorient"] = "迷惑"
L["DR_Silence"] = "沉默"
L["DR_Root"] = "定身"
L["DR_Knock"] = "击退"
L["DR_Disarm"] = "缴械"
L["DR_Fear"] = "恐惧"
L["DR_Horror"] = "惊骇"
L["DR_Cyclone"] = "飓风"
L["DR_MindControl"] = "精神控制"
L["DR_RandomStun"] = "随机昏迷"
L["DR_RandomRoot"] = "随机定身"
L["DR_Charge"] = "冲锋"

---------------------------------------
-- 种族名称
---------------------------------------

L["Race_Human"] = "人类"
L["Race_Scourge"] = "亡灵"
L["Race_Dwarf"] = "矮人"
L["Race_NightElf"] = "暗夜精灵"
L["Race_Gnome"] = "侏儒"
L["Race_Draenei"] = "德莱尼"
L["Race_Worgen"] = "狼人"
L["Race_Pandaren"] = "熊猫人"
L["Race_Orc"] = "兽人"
L["Race_Tauren"] = "牛头人"
L["Race_Troll"] = "巨魔"
L["Race_BloodElf"] = "血精灵"
L["Race_Goblin"] = "地精"
L["Race_LightforgedDraenei"] = "光铸德莱尼"
L["Race_HighmountainTauren"] = "至高岭牛头人"
L["Race_Nightborne"] = "夜之子"
L["Race_MagharOrc"] = "玛格汉兽人"
L["Race_DarkIronDwarf"] = "黑铁矮人"
L["Race_ZandalariTroll"] = "赞达拉巨魔"
L["Race_VoidElf"] = "虚空精灵"
L["Race_KulTiran"] = "库尔提拉斯人"
L["Race_Mechagnome"] = "机械侏儒"
L["Race_Vulpera"] = "狐人"
L["Race_Dracthyr"] = "龙希尔"
L["Race_EarthenDwarf"] = "土灵"
L["Race_Harronir"] = "哈洛尼尔"

---------------------------------------
-- 主要分类
---------------------------------------

L["Category_ArenaFrames"] = "竞技场框架"
L["Category_SpecIcons"] = "专精图标"
L["Category_Trinkets"] = "饰品"
L["Category_Racials"] = "种族技能"
L["Category_Dispels"] = "驱散"
L["Category_CastBars"] = "施法条"
L["Category_DiminishingReturns"] = "递减效果"
L["Category_Widgets"] = "组件"
L["Category_TextSettings"] = "文字设置"
L["Category_ClassIcon"] = "职业图标"

---------------------------------------
-- 材质
---------------------------------------

L["Textures"] = "材质"
L["Texture_General"] = "通用材质"
L["Texture_General_Desc"] = "提示：如果你用自己的材质替换了WoW默认材质，请选择\"Blizzard Raid Bar\"。"
L["Texture_Healer"] = "治疗者材质"
L["Texture_Healer_Desc"] = "提示：仅在职业堆叠时激活。如果你想始终更改材质，请取消勾选\"仅职业堆叠\"。"
L["Texture_ClassStackingOnly"] = "仅职业堆叠"
L["Texture_ClassStackingOnly_Desc"] = "仅在职业堆叠时更改治疗者材质。\n\n例如当敌方队伍中有恢复德鲁伊和野性德鲁伊时。"
L["Texture_Background"] = "背景材质"
L["Texture_Background_Desc"] = "生命值/能量条背景的材质。"
L["Texture_BackgroundColor"] = "背景颜色"
L["Texture_BackgroundColor_Desc"] = "生命值/能量条背景的颜色。"

---------------------------------------
-- 竞技场框架选项
---------------------------------------

L["Option_ReplaceClassIcon"] = "替换职业图标"
L["Option_ReplaceClassIcon_Desc"] = "用专精图标替换职业图标并隐藏小的\"专精图标按钮\""
L["Option_GrowthDirection"] = "增长方向"
L["Option_SpacingBetweenFrames"] = "竞技场框架间距"
L["Option_SpacingBetweenFrames_Desc"] = "每个竞技场框架之间的间距"
L["Option_ClassIconCDFontSize"] = "职业图标冷却字体大小"
L["Option_ClassIconCDFontSize_Desc"] = "仅适用于暴雪倒计时（非OmniCC）"
L["Option_FontSize"] = "字体大小"
L["Option_FontSize_Desc"] = "仅适用于暴雪倒计时（非OmniCC）"
L["Option_MirroredFrames"] = "镜像框架"
L["Option_PowerBarHeight"] = "能量条高度"
L["Option_SpecTextOnManabar"] = "在法力条上显示专精文字"
L["Option_CropIcons"] = "裁剪图标"
L["Option_PixelBorderSize"] = "像素边框大小"
L["Option_PixelBorderOffset"] = "像素边框偏移"
L["Option_DRPixelBorderSize"] = "DR像素边框大小"
L["Option_HideNameBackground"] = "隐藏名字背景"
L["Option_BigHealthbar"] = "大生命条"
L["Option_TrinketCircleBorder"] = "饰品圆形边框"
L["Option_TrinketCircleBorder_Desc"] = "为饰品图标启用圆形边框"
L["Option_DisableOvershields"] = "禁用护盾溢出"
L["Option_DisableOvershields_Desc"] = "禁用超过最大生命值时显示在生命条后面的吸收盾"

---------------------------------------
-- 施法条
---------------------------------------

L["Castbar_Look"] = "施法条外观"
L["Castbar_UseModern"] = "使用现代样式"
L["Castbar_UseModern_Desc"] = "使用新的现代正式服施法条。"
L["Castbar_KeepDefaultModernTextures"] = "保持默认现代材质"
L["Castbar_KeepDefaultModernTextures_Desc"] = "保持施法条的新现代材质。忽略已设置的材质。"
L["Castbar_Simple"] = "简洁施法条"
L["Castbar_Simple_Desc"] = "隐藏条纹文字背景并将文字移到条内。"
L["Castbar_HideShield"] = "不可打断时隐藏盾牌"
L["Castbar_HideShield_Desc"] = "隐藏不可打断施法时法术图标周围的盾牌材质。"
L["Castbar_HideSpark"] = "隐藏条纹火花"
L["Castbar_HideSpark_Desc"] = "隐藏施法条上跟随的火花"
L["Castbar_HideIcon"] = "隐藏条纹图标"
L["Castbar_HideIcon_Desc"] = "隐藏施法条上的法术图标"
L["Castbar_Texture"] = "施法条材质"
L["Castbar_UninterruptibleTexture"] = "不可打断材质"
L["Castbar_Colors"] = "施法条颜色"
L["Castbar_RecolorCastbar"] = "重新着色施法条"
L["Castbar_RecolorCastbar_Desc"] = "启用自定义施法条颜色"
L["Castbar_Cast"] = "施法"
L["Castbar_Channeled"] = "引导"
L["Castbar_Uninterruptible"] = "不可打断"
L["Castbar_InterruptNotReady"] = "打断未就绪"
L["Castbar_EnableNoInterruptColor"] = "启用无打断颜色"
L["Castbar_EnableNoInterruptColor_Desc"] = "启用后，当你没有打断就绪时，施法条将显示此颜色"
L["Castbar_InterruptNotReadyColor"] = "打断未就绪颜色"
L["Castbar_Position"] = "施法条位置"
L["Castbar_IconPosition"] = "图标位置"
L["Castbar_CastbarSize"] = "施法条大小"
L["Castbar_IconSize"] = "图标大小"
L["Castbar_IconScale"] = "图标缩放"

---------------------------------------
-- 递减效果选项
---------------------------------------

L["DR_BrightBorder"] = "明亮DR边框"
L["DR_BlackBorder"] = "黑色DR边框"
L["DR_BlackBorder_Desc"] = "使DR边框变黑。与显示DR文字选项配合使用"
L["DR_ShowText"] = "显示DR文字"
L["DR_ShowText_Desc"] = "在DR图标上显示当前DR状态的文字。"
L["DR_DisableBorderGlow"] = "禁用DR边框发光"
L["DR_ThickPixelBorder"] = "粗像素边框"
L["DR_ThinPixelBorder"] = "细像素边框"
L["DR_DisableBorder"] = "禁用DR边框"
L["DR_DisableBorder_Desc"] = "完全隐藏DR边框"
L["DR_BorderSize"] = "边框大小"
L["DR_SpecificSizeAdjustment"] = "DR特定大小调整"

---------------------------------------
-- 组件
---------------------------------------

L["Widget_CombatIndicator"] = "战斗指示器"
L["Widget_CombatIndicator_Enable"] = "启用战斗指示器"
L["Widget_CombatIndicator_Desc"] = "当敌人不在战斗中时显示食物图标"
L["Widget_TargetIndicator"] = "目标指示器"
L["Widget_TargetIndicator_Enable"] = "启用目标指示器"
L["Widget_TargetIndicator_Desc"] = "在你当前目标上显示图标"
L["Widget_FocusIndicator"] = "焦点指示器"
L["Widget_FocusIndicator_Enable"] = "启用焦点指示器"
L["Widget_FocusIndicator_Desc"] = "在你当前焦点上显示图标"
L["Widget_PartyTargetIndicators"] = "队伍目标指示器"
L["Widget_PartyTargetIndicators_Enable"] = "启用队伍目标指示器"
L["Widget_PartyTargetIndicators_Desc"] = "在队友正在攻击的竞技场框架上显示职业颜色图标"

---------------------------------------
-- 文字设置
---------------------------------------

L["Text_Fonts"] = "字体"
L["Text_ChangeFont"] = "更改字体"
L["Text_ChangeFont_Desc"] = "更改sArena使用的字体"
L["Text_FrameFont"] = "框架字体"
L["Text_FrameFont_Desc"] = "用于名字、生命/能量值、施法文字等标签。"
L["Text_CooldownFont"] = "冷却字体"
L["Text_CooldownFont_Desc"] = "用于冷却数字（饰品、DR、种族等）。"
L["Text_FontOutline"] = "字体轮廓"
L["Text_FontOutline_Desc"] = "选择所有文字元素的轮廓样式。"
L["Text_NameText"] = "名字文字"
L["Text_HealthText"] = "生命值文字"
L["Text_ManaText"] = "法力值文字"
L["Text_SpecNameText"] = "专精名称文字"
L["Text_CastbarText"] = "施法条文字"
L["Text_DRText"] = "DR文字"
L["Text_AnchorPoint"] = "锚点"

---------------------------------------
-- 状态文字
---------------------------------------

L["Status_Health"] = "生命值"
L["Status_Power"] = "能量"
L["Status_HealthPercent"] = "生命值百分比"
L["Status_PowerPercent"] = "能量百分比"
L["Status_HealthAndPower"] = "生命值和能量"
L["Status_HealthAndPowerPercent"] = "生命值和能量百分比"

---------------------------------------
-- 附加选项和消息
---------------------------------------

L["Layout_Settings"] = "布局设置"
L["Layout_Settings_Desc"] = "这些设置仅适用于所选布局"
L["Global_Settings"] = "全局设置"
L["Global_Settings_Desc"] = "这些设置适用于所有布局"

L["Text_ShowOnMouseover_Desc"] = "如果禁用，文字仅在鼠标悬停时显示"
L["Text_FormatLargeNumbers_Desc"] = "格式化大数字。18888 K -> 18.88 M"
L["Text_HidePowerText"] = "隐藏能量文字"
L["Text_HidePowerText_Desc"] = "隐藏法力/怒气/能量文字"

L["DarkMode_Enable"] = "启用暗黑模式"
L["DarkMode_Enable_Desc"] = "为竞技场框架启用暗黑模式。"
L["DarkMode_Value"] = "暗黑模式值"
L["DarkMode_Value_Desc"] = "设置暗黑模式下框架的暗度值（0 = 黑色，1 = 正常亮度）。"
L["DarkMode_Desaturate_Desc"] = "在暗黑模式下移除材质的所有颜色。\n\n|cff888888这是默认行为，但对于某些布局，你可能更喜欢保留一些原始颜色。|r"

L["ClassColor_Healthbars"] = "职业颜色生命条"
L["ClassColor_Healthbars_Desc"] = "禁用时，生命条将为绿色"
L["ClassColor_FrameTexture"] = "职业颜色框架材质"
L["ClassColor_FrameTexture_Desc"] = "将职业颜色应用于框架材质（边框）"
L["ClassColor_OnlyClassIcon"] = "仅职业图标"
L["ClassColor_OnlyClassIcon_Desc"] = "仅将职业颜色应用于职业图标边框，而不是其他材质"
L["ClassColor_HealerGreen"] = "治疗者显示绿色"
L["ClassColor_HealerGreen_Desc"] = "将治疗者框架改为亮绿色而不是职业颜色"
L["ClassColor_NameText"] = "职业颜色名字文字"
L["ClassColor_NameText_Desc"] = "启用时，玩家名字将按职业着色"

L["Icon_ReplaceHealerWithHealerIcon"] = "用治疗者图标替换治疗者"
L["Icon_ReplaceHealerWithHealerIcon_Desc"] = "用治疗者图标替换治疗者的职业/专精图标。"
L["Healthbar_ReverseFill"] = "反向填充生命条"
L["Healthbar_ReverseFill_Desc"] = "使生命条和能量条从右向左填充"
L["ClassIcon_HideAndShowOnlyAuras"] = "隐藏职业图标，仅显示光环"
L["ClassIcon_HideAndShowOnlyAuras_Desc"] = "隐藏职业图标，仅在光环激活时显示。"
L["ClassIcon_DontShowAuras"] = "不在职业图标上显示光环"
L["ClassIcon_DontShowAuras_Desc"] = "不在职业图标上显示光环，始终显示职业/专精图标。"

L["Trinket_MinimalistDesign"] = "极简饰品设计"
L["Trinket_MinimalistDesign_Desc"] = "准备就绪时用纯绿色替换饰品材质，冷却中用红色。"
L["MysteryPlayer_GrayBars"] = "神秘玩家灰色条"
L["MysteryPlayer_GrayBars_Desc"] = "用灰色状态条为神秘玩家着色而不是他们的职业颜色。神秘玩家是未见过的玩家，如门打开前的玩家和潜行中的玩家。"

L["Cooldown_ShowDecimalsThreshold_Desc"] = "当剩余时间低于此阈值时显示小数。默认6秒。"
L["Cooldown_DisableBrightEdge"] = "禁用冷却旋转上的明亮边缘"
L["Cooldown_DisableBrightEdge_Desc"] = "禁用所有图标上冷却旋转的明亮边缘。"
L["Cooldown_DisableClassIconSwipe"] = "禁用职业图标动画"
L["Cooldown_DisableClassIconSwipe_Desc"] = "禁用职业图标上的冷却旋转动画。"
L["Cooldown_DisableDRSwipe"] = "禁用DR动画"
L["Cooldown_DisableDRSwipe_Desc"] = "禁用DR图标上的冷却旋转动画。"
L["Cooldown_DisableTrinketRacialSwipe"] = "禁用饰品和种族动画"
L["Cooldown_DisableTrinketRacialSwipe_Desc"] = "禁用饰品和种族图标上的冷却旋转动画。"
L["Cooldown_ReverseClassIcon"] = "反转职业图标冷却"
L["Cooldown_ReverseClassIcon_Desc"] = "反转职业图标冷却方向。更改它们是从空开始填满，还是从满开始清空。"
L["Cooldown_ReverseDR"] = "反转DR冷却"
L["Cooldown_ReverseDR_Desc"] = "反转DR冷却动画方向。"
L["Cooldown_ReverseTrinketRacial"] = "反转饰品和种族冷却"
L["Cooldown_ReverseTrinketRacial_Desc"] = "反转饰品和种族冷却方向。"

L["Masque_Support"] = "启用Masque支持"
L["Masque_Support_Desc"] = "点击启用图标边框的Masque支持。\n\n目前，这需要在Masque设置中禁用Backdrop才能正确渲染。"
L["Trinket_HideWhenNoTrinket"] = "无饰品时隐藏饰品"
L["Trinket_HideWhenNoTrinket_Desc"] = "隐藏饰品槽中的白旗材质（表示没有装备饰品）。将不显示任何材质。"
L["Trinket_DesaturateOnCD"] = "冷却时饰品去饱和"
L["Trinket_DesaturateOnCD_Desc"] = "饰品冷却时去饱和饰品图标。"
L["Dispel_DesaturateOnCD"] = "冷却时驱散去饱和"
L["Dispel_DesaturateOnCD_Desc"] = "驱散冷却时去饱和驱散图标。"

L["DR_ClassSpecific"] = "职业特定DR分类"
L["DR_ClassSpecific_Desc"] = "启用时，以下DR分类将变为你当前职业特定的。\n\n|cff888888默认包含所有分类，你不会看到立即变化，你需要手动更改想要自定义的那些。|r"
L["DR_SpecSpecific"] = "专精特定DR分类"
L["DR_SpecSpecific_Desc"] = "启用时，以下DR分类将变为你当前专精特定的。\n\n|cff888888默认包含所有分类，你不会看到立即变化，你需要手动更改想要自定义的那些。|r"
L["DR_FixedIcons"] = "固定DR图标"
L["DR_FixedIcons_Desc"] = "DR图标将始终为每个DR分类使用特定图标。"
L["DR_ClassSpecificIcons"] = "职业特定DR图标"
L["DR_ClassSpecificIcons_Desc"] = "启用时，以下图标将变为你当前职业特定的。\n\n|cff888888默认包含所有图标，你不会看到立即变化，你需要手动更改想要自定义的那些。|r"
L["DR_SpecSpecificIcons"] = "专精特定DR图标"
L["DR_SpecSpecificIcons_Desc"] = "启用时，以下图标将变为你当前专精特定的。\n\n|cff888888默认包含所有图标，你不会看到立即变化，你需要手动更改想要自定义的那些。|r"

L["Racial_ShowInTrinketSlot"] = "无饰品时在饰品槽显示种族"
L["Racial_ShowInTrinketSlot_Desc"] = "如果敌人没有饰品，移除间隙并在饰品位置显示其种族技能。"
L["Human_AlwaysShowTrinket"] = "人类始终显示联盟饰品"
L["Human_AlwaysShowTrinket_Desc"] = "始终在人类玩家上显示联盟饰品材质，即使他们没有装备饰品。"

L["Drag_Hint"] = "Ctrl+Shift+点击拖动"

L["Option_AddonConflict"] = "插件冲突"
L["Option_Layout"] = "布局"
L["Option_Test"] = "测试"
L["Option_Hide"] = "隐藏"
L["Option_ArenaFrames"] = "竞技场框架"
L["Option_StatusText"] = "状态文字"
L["Option_AlwaysShow"] = "始终显示"
L["Option_UsePercentage"] = "使用百分比"
L["Option_FormatNumbers"] = "格式化数字"
L["Option_DarkMode"] = "暗黑模式"
L["Option_Desaturate"] = "去饱和"
L["Option_ClassColorNames"] = "职业颜色名字"
L["Option_ReplaceHealerIcon"] = "替换治疗者图标"
L["Option_ShowNames"] = "显示名字"
L["Option_ShowArenaNumber"] = "显示竞技场编号"
L["Option_ReverseBarsFill"] = "反向填充条"
L["Option_HideClassIconShowAurasOnly"] = "隐藏职业图标（仅光环）"
L["Option_DisableAurasOnClassIcon"] = "禁用职业图标上的光环"
L["Option_ShadowsightTimer"] = "启用暗影视觉计时器"
L["Option_ShadowsightTimer_Desc"] = "在屏幕顶部显示竞技场暗影视觉增益的计时器"
L["Shadowsight_Ready"] = "暗影视觉就绪"
L["Shadowsight_SpawnsIn"] = "暗影视觉将在%d秒后出现"
L["Option_ColorTrinket"] = "着色饰品"
L["Option_ColorNonVisibleFramesGray"] = "将不可见框架着色为灰色"
L["Option_ShowDecimalsOnClassIcon"] = "在职业图标上显示小数"
L["Option_DecimalThreshold"] = "小数阈值"
L["Option_SwipeAnimations"] = "扫动动画"
L["Option_DisableCooldownSwipeEdge"] = "禁用冷却扫动边缘"
L["Option_DisableClassIconSwipe"] = "禁用职业图标扫动"
L["Option_DisableDRSwipeAnimation"] = "禁用DR扫动动画"
L["Option_DisableTrinketRacialSwipe"] = "禁用饰品和种族扫动"
L["Option_ReverseClassIconSwipe"] = "反转职业图标扫动"
L["Option_ReverseDRSwipeAnimation"] = "反转DR扫动动画"
L["Option_ReverseTrinketRacialSwipe"] = "反转饰品和种族扫动"
L["Option_Miscellaneous"] = "杂项"
L["Option_EnableMasqueSupport"] = "启用Masque支持"
L["Option_RemoveUnEquippedTrinketTexture"] = "移除未装备饰品材质"
L["Option_DesaturateTrinketCD"] = "饰品CD去饱和"
L["Option_DesaturateDispelCD"] = "驱散CD去饱和"
L["Option_DRResetTime"] = "DR重置时间"
L["Option_ShowDecimalsOnDRs"] = "在DR上显示小数"
L["Option_ColorDRCooldownText"] = "按严重程度着色DR冷却文字"
L["Option_ColorDRCooldownText_Desc"] = "根据严重程度着色DR倒计时文字。\n\n|cff00ff00绿色|r 表示½减益\n|cffffff00黄色|r 表示¼减益\n|cffff0000红色|r 表示免疫"
L["Option_ColorDRCooldownText_Desc_Midnight"] = "根据严重程度着色DR倒计时文字。\n\n|cff00ff00绿色|r 表示½减益\n|cffff0000红色|r 表示免疫"
L["Option_DRCategories"] = "DR分类"
L["Option_PerClass"] = "按职业"
L["Option_PerSpec"] = "按专精"
L["Option_DRIcons"] = "DR图标"
L["Option_EnableStaticIcons"] = "启用静态图标"
L["Option_Categories"] = "分类"
L["Option_SwapMissingTrinketWithRacial"] = "用种族替换缺失饰品"
L["Option_ForceShowTrinketOnHuman"] = "强制在人类上显示饰品"
L["Option_ReplaceHumanRacialWithTrinket"] = "用饰品替换人类种族"
L["Option_ShowDispels"] = "显示驱散"
L["Option_HealerDispels"] = "治疗者驱散"
L["Option_DPSDispels"] = "DPS驱散"
L["Option_OthersArena"] = "其他sArena"
L["Option_ImportSettings"] = "导入设置"
L["Option_ShareProfile"] = "分享配置"
L["Option_ExportCurrentProfile"] = "导出当前配置"
L["Option_ExportString"] = "导出字符串"
L["Option_PasteProfileString"] = "粘贴配置字符串"
L["Option_ImportDescription"] = "这将从其他sArena导入你的设置到新版本sArena Updated 2 by sammers。\n\n确保两个插件都已启用，然后点击下面的按钮。"
L["Message_NoLayoutSettings"] = "所选布局似乎没有设置。"
L["Option_ReplaceHumanRacialWithTrinket_Desc"] = "在种族槽中用联盟饰品材质替换人类种族技能。"
L["Option_ShowDispels_Desc"] = "启用以在竞技场框架上显示驱散冷却。"
L["Option_OthersArena_Desc"] = "从其他sArena导入设置"
L["Option_ImportSettings_Desc"] = "从其他版本sArena导入你的设置。"
L["Option_MidnightPlans_Desc"] = "魔兽世界：午夜计划"
L["Option_ShareProfile_Desc"] = "导出或导入sArena配置"
L["Option_ExportString_Desc"] = "|cff32f795Ctrl+A|r 全选，|cff32f795Ctrl+C|r 复制"
L["Option_PasteProfileString_Desc"] = "|cff32f795Ctrl+V|r 粘贴复制的配置字符串"
L["Option_TrinketCircleBorder_Desc"] = "为饰品图标启用圆形边框"
L["Option_DefaultIcon_Desc"] = "默认图标：%s |T%s:24|t"
L["Option_ImportProfile_Desc"] = "导入%s的配置设置。\n\n%swww.twitch.tv/%s|r"
L["Option_DPSDispelsNote"] = "|cFFFFFF00注意：|r DPS驱散只在使用一次后才会显示。"
L["Option_DispelsBetaNotice"] = "\n|cFF808080驱散处于测试阶段。\n需要确认一些法术ID，特别是熊猫人之谜中的。\n事情仍需要更多测试（等待PTR）并可能改变。\n如果你想贡献信息/反馈/法术ID，欢迎！|r"
L["Option_ExportProfileHeader"] = "|cffffff00导出配置：|r"
L["Option_ImportProfileHeader"] = "|cffffff00导入配置：|r"
L["Option_StreamerProfilesHeader"] = "|cffffff00主播配置：|r"

L["Message_InvalidFormat"] = "格式无效。"
L["Message_DecompressionError"] = "解压缩错误：%s"
L["Message_DeserializationError"] = "反序列化错误或格式无效。"
L["Message_ImportFailed"] = "|cffff4040导入失败：|r"
L["Message_ExportFailed"] = "导出失败："
L["Message_NoProfileFound"] = "未找到当前角色的配置。"
L["Message_ProfileDataNotFound"] = "未找到配置数据。"
L["Message_IncorrectDataType"] = "数据类型不正确。"
L["Message_ProfileOverwrite"] = "你已经有%s的配置。重新导入将覆盖该配置的所有设置。你确定要继续吗？"
L["ImportExport_DialogTitle"] = "sArena导入确认"
L["Message_MidnightWarningTitle"] = "|cffa020f0午夜Beta警告|r"
L["Message_MidnightWarningText"] = "午夜处于Beta阶段，编辑模式正在导致\n新DR出错。\n\n|cffFFFF00重载UI以修复。|r\n\n一旦暴雪修复编辑模式和DR，\n此警告将被移除。"
L["Button_ReloadUI"] = "重载UI"
L["DR_CategoriesPerSpec"] = "分类（按专精：%s）"
L["DR_CategoriesPerClass"] = "分类（按职业：%s）"
L["DR_CategoriesGlobal"] = "分类（全局）"
L["DR_IconsPerSpec"] = "配置DR图标（按专精：%s）"
L["DR_IconsPerClass"] = "配置DR图标（按职业：%s）"
L["DR_IconsGlobal"] = "配置DR图标（全局）"
L["Option_ShowDecimalsOnClassIcon_Desc"] = "当持续时间少于6秒时在职业图标上显示小数。\n\n仅适用于没有OmniCC的用户。"
L["Option_ShowDecimalsOnDRs_Desc"] = "当持续时间少于6秒时在DR上显示小数。\n\n仅适用于没有OmniCC的用户。"
L["Option_StreamerProfiles_Desc"] = "从热门主播导入预配置的配置。\n你将保留所有当前配置，包括你的活动配置\"|cff00ff00%s|r\"。\n要再次切换配置，请转到配置选项卡。"
L["Unknown"] = "未知"
L["Unknown_Spell"] = "未知法术"
L["Cooldown_Seconds"] = "冷却：%d秒"
L["SelectAll"] = "全选"

---------------------------------------
-- 数据收集
---------------------------------------

L["DataCollection_NotEnabled"] = "数据收集未启用。首先设置db.collectData = true。"
L["DataCollection_NoDataYet"] = "尚未收集到法术数据。"
L["DataCollection_ExportTitle"] = "sArena收集的法术数据"
L["DataCollection_ExportComplete"] = "收集了%d个条目。数据显示在导出窗口中。"

L["Print_CurrentVersion"] = "当前版本：%s"
L["Print_MultipleVersionsLoaded"] = "已加载两个不同版本的sArena。请输入/sarena选择如何继续"

L["Conflict_MultipleVersions"] = "检测到多个sArena版本"
L["Conflict_Warning"] = "|A:services-icon-warning:20:20|a |cffff4444两个不同版本的sArena已启用|r |A:services-icon-warning:20:20|a"
L["Conflict_Explanation"] = "|cffffffff两个不同版本的sArena无法正常一起工作。\n你需要只使用一个。你有3个选项：|r"
L["Conflict_UseOther"] = "|cffffffff使用其他sArena|r"
L["Conflict_UseOther_Desc"] = "这将禁用|cffffffffsArena Updated 2 by sammers并使用你的其他sArena并重载你的UI。"
L["Conflict_UseOther_Confirm"] = "这将禁用|cffffffffsArena Updated 2 by sammers并使用其他sArena并重载你的UI。\n\n继续？"
L["Conflict_UseReloaded_Import"] = "|cffffffff使用sArena Updated 2 by sammers：导入其他设置"
L["Conflict_UseReloaded_Import_Desc"] = "这将复制你当前的配置和来自其他sArena的现有设置，禁用其他sArena以兼容，并重载你的UI以便你可以开始使用sArena Updated 2 by sammers"
L["Conflict_UseReloaded_Import_Confirm"] = "这将复制你当前的配置和来自其他sArena的现有设置，禁用其他sArena以兼容，并重载你的UI以便你可以开始使用sArena Updated 2 by sammers\n\n继续？"
L["Conflict_UseReloaded_NoImport"] = "|cffffffff使用sArena Updated 2 by sammers：不导入其他设置"
L["Conflict_UseReloaded_NoImport_Desc"] = "这将禁用其他sArena以兼容并重载你的UI以便你可以开始使用sArena Updated 2 by sammers而不带你的其他设置。"
L["Conflict_UseReloaded_NoImport_Confirm"] = "这将禁用其他sArena以兼容并重载你的UI以便你可以开始使用sArena Updated 2 by sammers而不带你的其他设置。\n\n继续？"
L["Midnight_UpdateInfo"] = "|cff00ff00更新：午夜现已全部可用。|r\n\n我计划继续为午夜开发|cffffffffsArena Updated 2 by sammers。\n\n一些功能需要调整或移除，但插件会保留。\n午夜仍处于早期Alpha阶段，我还没有开始准备（10月14日），但很快。\n\n计划可能会改变，但我有信心|cffffffffsArena Updated 2 by sammers和我的其他插件\n|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates将为午夜保留（有更改/移除）。\n\n我有很多工作要做，任何支持都非常感谢。（|cff00c0ff@bodify|r）\n当我在几周/几个月后了解更多信息时，我会用更详细的信息更新这部分。"
L["Midnight_BetaInfo"] = "欢迎来到午夜！我的其他插件|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates也在开发中。\n\n在这里开发期间事情会快速变化，特别是当新API可用时。\n这个午夜Beta是过早的，游戏中仍然缺少很多东西。\n我会在午夜发布前尝试很多东西。\n\n目前已更改：\n1) DR现在由暴雪处理，sArena只调整允许的内容。\n 1.1) 间距设置已移除。\n 1.2) 单独大小调整已移除。\n 1.3) 向上/向下增长已移除。\n 1.4) 图标现在是暴雪奇怪的图标，这些设置已移除。\n2) 非CC光环不再显示，只显示暴雪让我们看到的CC。\n3) 框架上的吸收已移除。\n4) 种族冷却无法跟踪，但种族仍然可见。\n5) 驱散已移除。\n\n并非所有内容都完全确定，可能会有新东西，但我们会看到。我会在这里保持更新。"

