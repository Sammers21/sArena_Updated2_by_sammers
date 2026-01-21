-- Russian localization for sArena Updated 2 by sammers
-- sArena Updated 2 by sammers Русская локализация

local locale = GetLocale()
if locale ~= "ruRU" then return end

local L = sArenaMixin.L

---------------------------------------
-- Common Terms
---------------------------------------

L["Yes"] = "Да"
L["No"] = "Нет"
L["Enable"] = "Включить"
L["Disable"] = "Отключить"
L["Reset"] = "Сбросить"
L["Scale"] = "Масштаб"
L["Size"] = "Размер"
L["Width"] = "Ширина"
L["Height"] = "Высота"
L["Horizontal"] = "Горизонтально"
L["Vertical"] = "Вертикально"
L["Spacing"] = "Отступ"
L["Positioning"] = "Расположение"
L["Sizing"] = "Размер"
L["Options"] = "Настройки"
L["BorderSize"] = "Размер рамки"
L["GrowthDirection"] = "Направление роста"
L["AnchorPoint"] = "Точка привязки"

---------------------------------------
-- Directions
---------------------------------------

L["Direction_Down"] = "Вниз"
L["Direction_Up"] = "Вверх"
L["Direction_Right"] = "Вправо"
L["Direction_Left"] = "Влево"
L["Direction_Center"] = "Центр"
L["Direction_TopLeft"] = "Сверху слева"
L["Direction_Top"] = "Сверху"
L["Direction_TopRight"] = "Сверху справа"
L["Direction_BottomLeft"] = "Снизу слева"
L["Direction_Bottom"] = "Снизу"
L["Direction_BottomRight"] = "Снизу справа"

---------------------------------------
-- Font Outlines
---------------------------------------

L["Outline_None"] = "Без обводки"
L["Outline_Normal"] = "Обводка"
L["Outline_Thick"] = "Толстая обводка"

---------------------------------------
-- Messages
---------------------------------------

L["Message_MustLeaveCombat"] = "Сначала выйдите из боя."

---------------------------------------
-- Diminishing Returns Categories
---------------------------------------

L["DR_Stun"] = "Оглушение"
L["DR_Incapacitate"] = "Паралич"
L["DR_Disorient"] = "Дезориентация"
L["DR_Silence"] = "Немота"
L["DR_Root"] = "Обездвиживание"
L["DR_Knock"] = "Отбрасывание"
L["DR_Disarm"] = "Разоружение"
L["DR_Fear"] = "Страх"
L["DR_Horror"] = "Ужас"
L["DR_Cyclone"] = "Циклон"
L["DR_MindControl"] = "Контроль разума"
L["DR_RandomStun"] = "Случайное оглушение"
L["DR_RandomRoot"] = "Случайное обездвиживание"
L["DR_Charge"] = "Рывок"

---------------------------------------
-- Race Names
---------------------------------------

L["Race_Human"] = "Человек"
L["Race_Scourge"] = "Нежить"
L["Race_Dwarf"] = "Дворф"
L["Race_NightElf"] = "Ночной эльф"
L["Race_Gnome"] = "Гном"
L["Race_Draenei"] = "Дреней"
L["Race_Worgen"] = "Ворген"
L["Race_Pandaren"] = "Пандарен"
L["Race_Orc"] = "Орк"
L["Race_Tauren"] = "Таурен"
L["Race_Troll"] = "Тролль"
L["Race_BloodElf"] = "Эльф крови"
L["Race_Goblin"] = "Гоблин"
L["Race_LightforgedDraenei"] = "Озарённый дреней"
L["Race_HighmountainTauren"] = "Таурен Крутогорья"
L["Race_Nightborne"] = "Ночнорождённый"
L["Race_MagharOrc"] = "Маг'хар"
L["Race_DarkIronDwarf"] = "Дворф Чёрного Железа"
L["Race_ZandalariTroll"] = "Зандаларский тролль"
L["Race_VoidElf"] = "Эльф Бездны"
L["Race_KulTiran"] = "Култирасец"
L["Race_Mechagnome"] = "Механогном"
L["Race_Vulpera"] = "Вульпера"
L["Race_Dracthyr"] = "Драктир"
L["Race_EarthenDwarf"] = "Землерождённый"
L["Race_Harronir"] = "Харонир"

---------------------------------------
-- Main Categories
---------------------------------------

L["Category_ArenaFrames"] = "Рамки арены"
L["Category_SpecIcons"] = "Иконки специализаций"
L["Category_Trinkets"] = "Тринкеты"
L["Category_Racials"] = "Расовые способности"
L["Category_Dispels"] = "Рассеивания"
L["Category_CastBars"] = "Полосы применения"
L["Category_DiminishingReturns"] = "Убывающая отдача"
L["Category_Widgets"] = "Виджеты"
L["Category_TextSettings"] = "Настройки текста"
L["Category_ClassIcon"] = "Иконка класса"

---------------------------------------
-- Textures
---------------------------------------

L["Textures"] = "Текстуры"
L["Texture_General"] = "Основная текстура"
L["Texture_General_Desc"] = "Совет: Если вы заменили стандартные текстуры WoW на пользовательские и хотите их использовать, выберите \"Blizzard Raid Bar\"."
L["Texture_Healer"] = "Текстура лекаря"
L["Texture_Healer_Desc"] = "Совет: Активируется только при наличии классового дублирования. Снимите флажок \"Только классовое дублирование\", если хотите всегда менять текстуру."
L["Texture_ClassStackingOnly"] = "Только классовое дублирование"
L["Texture_ClassStackingOnly_Desc"] = "Изменять текстуру лекаря только при классовом дублировании.\n\nНапример, когда во вражеской команде есть и рестор, и ферал друид."
L["Texture_Background"] = "Фоновая текстура"
L["Texture_Background_Desc"] = "Текстура для подложки полос здоровья/энергии."
L["Texture_BackgroundColor"] = "Цвет фона"
L["Texture_BackgroundColor_Desc"] = "Цвет подложки полос здоровья/энергии."

---------------------------------------
-- Arena Frames Options
---------------------------------------

L["Option_ReplaceClassIcon"] = "Заменить иконку класса"
L["Option_ReplaceClassIcon_Desc"] = "Заменить иконку класса на иконку специализации и скрыть маленькую \"кнопку иконки спека\""
L["Option_GrowthDirection"] = "Направление роста"
L["Option_SpacingBetweenFrames"] = "Отступ между рамками арены"
L["Option_SpacingBetweenFrames_Desc"] = "Расстояние между рамками арены"
L["Option_ClassIconCDFontSize"] = "Размер шрифта КД иконки класса"
L["Option_ClassIconCDFontSize_Desc"] = "Работает только со стандартным отсчётом Blizzard (не OmniCC)"
L["Option_FontSize"] = "Размер шрифта"
L["Option_FontSize_Desc"] = "Работает только со стандартным отсчётом Blizzard (не OmniCC)"
L["Option_MirroredFrames"] = "Зеркальные рамки"
L["Option_PowerBarHeight"] = "Высота полосы энергии"
L["Option_SpecTextOnManabar"] = "Текст спека на полосе маны"
L["Option_CropIcons"] = "Обрезать иконки"
L["Option_PixelBorderSize"] = "Размер пиксельной рамки"
L["Option_PixelBorderOffset"] = "Смещение пиксельной рамки"
L["Option_DRPixelBorderSize"] = "Размер пиксельной рамки DR"
L["Option_HideNameBackground"] = "Скрыть фон имени"
L["Option_BigHealthbar"] = "Большая полоса здоровья"
L["Option_TrinketCircleBorder"] = "Круглая рамка тринкета"
L["Option_TrinketCircleBorder_Desc"] = "Включить круглую рамку для иконок тринкета"
L["Option_DisableOvershields"] = "Отключить перещиты"
L["Option_DisableOvershields_Desc"] = "Отключить отображение поглощения в обратную сторону на полосе здоровья, когда поглощение превышает максимальное здоровье"

---------------------------------------
-- Cast Bars
---------------------------------------

L["Castbar_Look"] = "Внешний вид полосы применения"
L["Castbar_UseModern"] = "Использовать современные полосы"
L["Castbar_UseModern_Desc"] = "Использовать новые современные полосы применения retail."
L["Castbar_KeepDefaultModernTextures"] = "Сохранить стандартные современные текстуры"
L["Castbar_KeepDefaultModernTextures_Desc"] = "Сохранить новые современные текстуры для полос применения. Игнорирует установленную текстуру."
L["Castbar_Simple"] = "Простая полоса применения"
L["Castbar_Simple_Desc"] = "Скрывает фон текста полосы применения и перемещает текст внутрь полосы."
L["Castbar_HideShield"] = "Скрыть щит на непрерываемых"
L["Castbar_HideShield_Desc"] = "Скрывает текстуру щита вокруг иконки заклинания на непрерываемых кастах."
L["Castbar_HideSpark"] = "Скрыть искру полосы"
L["Castbar_HideSpark_Desc"] = "Скрывает бегущую искру на полосе применения"
L["Castbar_HideIcon"] = "Скрыть иконку полосы"
L["Castbar_HideIcon_Desc"] = "Скрывает иконку заклинания на полосе применения"
L["Castbar_Texture"] = "Текстура полосы применения"
L["Castbar_UninterruptibleTexture"] = "Текстура непрерываемого"
L["Castbar_Colors"] = "Цвета полосы применения"
L["Castbar_RecolorCastbar"] = "Перекрасить полосу применения"
L["Castbar_RecolorCastbar_Desc"] = "Включить пользовательские цвета полосы применения"
L["Castbar_Cast"] = "Применение"
L["Castbar_Channeled"] = "Поддержание"
L["Castbar_Uninterruptible"] = "Непрерываемое"
L["Castbar_InterruptNotReady"] = "Прерывание не готово"
L["Castbar_EnableNoInterruptColor"] = "Включить цвет отсутствия прерывания"
L["Castbar_EnableNoInterruptColor_Desc"] = "Включите, чтобы окрашивать полосу применения этим цветом, когда прерывание не готово"
L["Castbar_InterruptNotReadyColor"] = "Цвет неготового прерывания"
L["Castbar_Position"] = "Позиция полосы применения"
L["Castbar_IconPosition"] = "Позиция иконки"
L["Castbar_CastbarSize"] = "Размер полосы применения"
L["Castbar_IconSize"] = "Размер иконки"
L["Castbar_IconScale"] = "Масштаб иконки"

---------------------------------------
-- Diminishing Returns Options
---------------------------------------

L["DR_BrightBorder"] = "Яркая рамка DR"
L["DR_BlackBorder"] = "Чёрная рамка DR"
L["DR_BlackBorder_Desc"] = "Делает рамки DR чёрными. Комбинируйте с настройкой показа текста DR"
L["DR_ShowText"] = "Показывать текст DR"
L["DR_ShowText_Desc"] = "Показывать текст на иконках DR, отображающий текущий статус DR."
L["DR_DisableBorderGlow"] = "Отключить свечение рамки DR"
L["DR_ThickPixelBorder"] = "Толстая пиксельная рамка"
L["DR_ThinPixelBorder"] = "Тонкая пиксельная рамка"
L["DR_DisableBorder"] = "Отключить рамку DR"
L["DR_DisableBorder_Desc"] = "Полностью скрывает рамки DR"
L["DR_BorderSize"] = "Размер рамки"
L["DR_SpecificSizeAdjustment"] = "Индивидуальная настройка размера DR"

---------------------------------------
-- Widgets
---------------------------------------

L["Widget_CombatIndicator"] = "Индикатор боя"
L["Widget_CombatIndicator_Enable"] = "Включить индикатор боя"
L["Widget_CombatIndicator_Desc"] = "Показывает иконку еды, когда враг вне боя"
L["Widget_TargetIndicator"] = "Индикатор цели"
L["Widget_TargetIndicator_Enable"] = "Включить индикатор цели"
L["Widget_TargetIndicator_Desc"] = "Показывает иконку на вашей текущей цели"
L["Widget_FocusIndicator"] = "Индикатор фокуса"
L["Widget_FocusIndicator_Enable"] = "Включить индикатор фокуса"
L["Widget_FocusIndicator_Desc"] = "Показывает иконку на вашем текущем фокусе"
L["Widget_PartyTargetIndicators"] = "Индикаторы целей группы"
L["Widget_PartyTargetIndicators_Enable"] = "Включить индикаторы целей группы"
L["Widget_PartyTargetIndicators_Desc"] = "Показывает иконки цвета класса на рамках арены, которых атакуют члены вашей группы"

---------------------------------------
-- Text Settings
---------------------------------------

L["Text_Fonts"] = "Шрифты"
L["Text_ChangeFont"] = "Изменить шрифт"
L["Text_ChangeFont_Desc"] = "Изменить шрифты, используемые sArena"
L["Text_FrameFont"] = "Шрифт рамки"
L["Text_FrameFont_Desc"] = "Используется для надписей: имя, значения здоровья/энергии, текст каста и т.д."
L["Text_CooldownFont"] = "Шрифт перезарядки"
L["Text_CooldownFont_Desc"] = "Используется для чисел перезарядки (тринкет, DR, расовые и т.д.)."
L["Text_FontOutline"] = "Обводка шрифта"
L["Text_FontOutline_Desc"] = "Выберите стиль обводки для всех текстовых элементов."
L["Text_NameText"] = "Текст имени"
L["Text_HealthText"] = "Текст здоровья"
L["Text_ManaText"] = "Текст маны"
L["Text_SpecNameText"] = "Текст названия спека"
L["Text_CastbarText"] = "Текст полосы применения"
L["Text_DRText"] = "Текст DR"
L["Text_AnchorPoint"] = "Точка привязки"

---------------------------------------
-- Status Text
---------------------------------------

L["Status_Health"] = "Здоровье"
L["Status_Power"] = "Энергия"
L["Status_HealthPercent"] = "Здоровье в процентах"
L["Status_PowerPercent"] = "Энергия в процентах"
L["Status_HealthAndPower"] = "Здоровье и энергия"
L["Status_HealthAndPowerPercent"] = "Здоровье и энергия в процентах"

---------------------------------------
-- Additional Options and Messages
---------------------------------------

L["Layout_Settings"] = "Настройки раскладки"
L["Layout_Settings_Desc"] = "Эти настройки применяются только к выбранной раскладке"
L["Global_Settings"] = "Глобальные настройки"
L["Global_Settings_Desc"] = "Эти настройки применяются ко всем раскладкам"

L["Text_ShowOnMouseover_Desc"] = "Если отключено, текст показывается только при наведении"
L["Text_FormatLargeNumbers_Desc"] = "Форматировать большие числа. 18888 K -> 18.88 M"
L["Text_HidePowerText"] = "Скрыть текст энергии"
L["Text_HidePowerText_Desc"] = "Скрыть текст маны/ярости/энергии"

L["DarkMode_Enable"] = "Включить тёмный режим"
L["DarkMode_Enable_Desc"] = "Включить тёмный режим для рамок арены."
L["DarkMode_Value"] = "Значение тёмного режима"
L["DarkMode_Value_Desc"] = "Установить уровень затемнения для рамок в тёмном режиме (0 = чёрный, 1 = нормальная яркость)."
L["DarkMode_Desaturate_Desc"] = "Удалить все цвета с текстур в тёмном режиме.\n\n|cff888888Это поведение по умолчанию, но с некоторыми раскладками вы можете предпочесть сохранить немного оригинального цвета.|r"

L["ClassColor_Healthbars"] = "Полосы здоровья цвета класса"
L["ClassColor_Healthbars_Desc"] = "Когда отключено, полосы здоровья будут зелёными"
L["ClassColor_FrameTexture"] = "Текстура рамки цвета класса"
L["ClassColor_FrameTexture_Desc"] = "Применить цвета классов к текстурам рамок (рамки)"
L["ClassColor_OnlyClassIcon"] = "Только иконка класса"
L["ClassColor_OnlyClassIcon_Desc"] = "Применять цвет класса только к рамке иконки класса, а не к другим текстурам рамок"
L["ClassColor_HealerGreen"] = "Окрашивать лекаря зелёным"
L["ClassColor_HealerGreen_Desc"] = "Изменить рамки лекарей на ярко-зелёный вместо цвета класса"
L["ClassColor_NameText"] = "Текст имени цвета класса"
L["ClassColor_NameText_Desc"] = "Когда включено, имена игроков будут окрашены по классу"

L["Icon_ReplaceHealerWithHealerIcon"] = "Заменить иконку лекаря на иконку лекаря"
L["Icon_ReplaceHealerWithHealerIcon_Desc"] = "Заменить иконку класса/специализации лекарей на иконку лекаря."
L["Healthbar_ReverseFill"] = "Обратное заполнение полосы здоровья"
L["Healthbar_ReverseFill_Desc"] = "Заполнять полосы здоровья и энергии справа налево вместо слева направо"
L["ClassIcon_HideAndShowOnlyAuras"] = "Скрыть иконку класса, показывать только ауры"
L["ClassIcon_HideAndShowOnlyAuras_Desc"] = "Скрыть иконку класса и показывать только ауры, когда они активны."
L["ClassIcon_DontShowAuras"] = "Не показывать ауры на иконке класса"
L["ClassIcon_DontShowAuras_Desc"] = "Не показывать ауры на иконках классов, всегда показывать иконку класса/специализации."

L["Trinket_MinimalistDesign"] = "Минималистичный дизайн тринкета"
L["Trinket_MinimalistDesign_Desc"] = "Заменить текстуру тринкета на сплошной зелёный цвет, когда он готов, и красный, когда на перезарядке."
L["MysteryPlayer_GrayBars"] = "Серые полосы неизвестных игроков"
L["MysteryPlayer_GrayBars_Desc"] = "Окрашивает неизвестных игроков серыми полосами статуса вместо их цветов классов. Неизвестные игроки — это невидимые игроки, например до открытия ворот и стелсеры."

L["Cooldown_ShowDecimalsThreshold_Desc"] = "Показывать десятичные, когда оставшееся время ниже этого порога. По умолчанию 6 секунд."
L["Cooldown_DisableBrightEdge"] = "Отключить яркий край на спиралях перезарядки"
L["Cooldown_DisableBrightEdge_Desc"] = "Отключает яркий край на спиралях перезарядки для всех иконок."
L["Cooldown_DisableClassIconSwipe"] = "Отключить анимацию иконки класса"
L["Cooldown_DisableClassIconSwipe_Desc"] = "Отключает спиральную анимацию перезарядки на иконке класса."
L["Cooldown_DisableDRSwipe"] = "Отключить анимацию DR"
L["Cooldown_DisableDRSwipe_Desc"] = "Отключает спиральную анимацию перезарядки на иконках DR."
L["Cooldown_DisableTrinketRacialSwipe"] = "Отключить анимацию тринкета и расовой"
L["Cooldown_DisableTrinketRacialSwipe_Desc"] = "Отключает спиральную анимацию перезарядки на иконках тринкета и расовой способности."
L["Cooldown_ReverseClassIcon"] = "Обратить перезарядку иконки класса"
L["Cooldown_ReverseClassIcon_Desc"] = "Меняет направление перезарядки иконки класса. Изменяет начальное состояние: пустое с заполнением или заполненное с опустошением."
L["Cooldown_ReverseDR"] = "Обратить перезарядку DR"
L["Cooldown_ReverseDR_Desc"] = "Меняет направление анимации перезарядки DR."
L["Cooldown_ReverseTrinketRacial"] = "Обратить перезарядку тринкета и расовой"
L["Cooldown_ReverseTrinketRacial_Desc"] = "Меняет направление перезарядки тринкета и расовой способности. Изменяет начальное состояние: пустое с заполнением или заполненное с опустошением."

L["Masque_Support"] = "Включить поддержку Masque"
L["Masque_Support_Desc"] = "Нажмите для включения поддержки Masque для изменения рамок иконок.\n\nВ настоящее время требуется отключить Backdrop в настройках Masque для корректного отображения. Не уверен, что найду время для улучшения, так как потребуется много переработки."
L["Trinket_HideWhenNoTrinket"] = "Скрыть тринкет, когда не экипирован"
L["Trinket_HideWhenNoTrinket_Desc"] = "Скрыть белый флаг в слоте тринкета (обозначающий отсутствие тринкета). Вместо этого не будет показано никакой текстуры."
L["Trinket_DesaturateOnCD"] = "Обесцветить тринкет на КД"
L["Trinket_DesaturateOnCD_Desc"] = "Обесцветить иконку тринкета, когда он на перезарядке."
L["Dispel_DesaturateOnCD"] = "Обесцветить рассеивание на КД"
L["Dispel_DesaturateOnCD_Desc"] = "Обесцветить иконку рассеивания, когда оно на перезарядке."

L["DR_ClassSpecific"] = "Категории DR для класса"
L["DR_ClassSpecific_Desc"] = "Когда включено, категории DR ниже становятся специфичными для вашего текущего класса.\n\n|cff888888Включает все стандартные категории, поэтому вы не увидите немедленных изменений, нужно вручную изменить те, которые хотите настроить.|r"
L["DR_SpecSpecific"] = "Категории DR для специализации"
L["DR_SpecSpecific_Desc"] = "Когда включено, категории DR ниже становятся специфичными для вашей текущей специализации.\n\n|cff888888Включает все стандартные категории, поэтому вы не увидите немедленных изменений, нужно вручную изменить те, которые хотите настроить.|r"
L["DR_FixedIcons"] = "Фиксированные иконки DR"
L["DR_FixedIcons_Desc"] = "Иконки DR всегда будут использовать определённую иконку для каждой категории DR."
L["DR_ClassSpecificIcons"] = "Иконки DR для класса"
L["DR_ClassSpecificIcons_Desc"] = "Когда включено, иконки ниже становятся специфичными для вашего текущего класса.\n\n|cff888888Включает все стандартные иконки, поэтому вы не увидите немедленных изменений, нужно вручную изменить те, которые хотите настроить.|r"
L["DR_SpecSpecificIcons"] = "Иконки DR для специализации"
L["DR_SpecSpecificIcons_Desc"] = "Когда включено, иконки ниже становятся специфичными для вашей текущей специализации.\n\n|cff888888Включает все стандартные иконки, поэтому вы не увидите немедленных изменений, нужно вручную изменить те, которые хотите настроить.|r"

L["Racial_ShowInTrinketSlot"] = "Показывать расовую в слоте тринкета, когда нет тринкета"
L["Racial_ShowInTrinketSlot_Desc"] = "Если у врага нет тринкета, убрать пробел и показать расовую способность на месте тринкета."
L["Human_AlwaysShowTrinket"] = "Всегда показывать тринкет Альянса для людей"
L["Human_AlwaysShowTrinket_Desc"] = "Всегда показывать текстуру тринкета Альянса на игроках-людях, даже если у них нет тринкета."

L["Drag_Hint"] = "Ctrl+Shift+Клик для перетаскивания"

L["Option_AddonConflict"] = "Конфликт аддонов"
L["Option_Layout"] = "Раскладка"
L["Option_Test"] = "Тест"
L["Option_Hide"] = "Скрыть"
L["Option_ArenaFrames"] = "Рамки арены"
L["Option_StatusText"] = "Текст статуса"
L["Option_AlwaysShow"] = "Всегда показывать"
L["Option_UsePercentage"] = "Использовать проценты"
L["Option_FormatNumbers"] = "Форматировать числа"
L["Option_DarkMode"] = "Тёмный режим"
L["Option_Desaturate"] = "Обесцветить"
L["Option_ClassColorNames"] = "Имена цвета класса"
L["Option_ReplaceHealerIcon"] = "Заменить иконку лекаря"
L["Option_ShowNames"] = "Показывать имена"
L["Option_ShowArenaNumber"] = "Показывать номер арены"
L["Option_ReverseBarsFill"] = "Обратное заполнение полос"
L["Option_HideClassIconShowAurasOnly"] = "Скрыть иконку класса (только ауры)"
L["Option_DisableAurasOnClassIcon"] = "Отключить ауры на иконке класса"
L["Option_ShadowsightTimer"] = "Включить таймер Shadowsight"
L["Option_ShadowsightTimer_Desc"] = "Показать таймер в верхней части экрана для появления баффов Shadowsight на арене"
L["Shadowsight_Ready"] = "Shadowsight готов"
L["Shadowsight_SpawnsIn"] = "Shadowsight появится через %d сек"
L["Option_ColorTrinket"] = "Цветной тринкет"
L["Option_ColorNonVisibleFramesGray"] = "Окрашивать невидимые рамки серым"
L["Option_ShowDecimalsOnClassIcon"] = "Показывать десятичные на иконке класса"
L["Option_DecimalThreshold"] = "Порог десятичных"
L["Option_SwipeAnimations"] = "Анимации перезарядки"
L["Option_DisableCooldownSwipeEdge"] = "Отключить край анимации перезарядки"
L["Option_DisableClassIconSwipe"] = "Отключить анимацию иконки класса"
L["Option_DisableDRSwipeAnimation"] = "Отключить анимацию DR"
L["Option_DisableTrinketRacialSwipe"] = "Отключить анимацию тринкета и расовой"
L["Option_ReverseClassIconSwipe"] = "Обратить анимацию иконки класса"
L["Option_ReverseDRSwipeAnimation"] = "Обратить анимацию DR"
L["Option_ReverseTrinketRacialSwipe"] = "Обратить анимацию тринкета и расовой"
L["Option_Miscellaneous"] = "Разное"
L["Option_EnableMasqueSupport"] = "Включить поддержку Masque"
L["Option_RemoveUnEquippedTrinketTexture"] = "Убрать текстуру неэкипированного тринкета"
L["Option_DesaturateTrinketCD"] = "Обесцветить тринкет на КД"
L["Option_DesaturateDispelCD"] = "Обесцветить рассеивание на КД"
L["Option_DRResetTime"] = "Время сброса DR"
L["Option_ShowDecimalsOnDRs"] = "Показывать десятичные на DR"
L["Option_ColorDRCooldownText"] = "Окрашивать текст КД DR по серьёзности"
L["Option_ColorDRCooldownText_Desc"] = "Окрашивает текст обратного отсчёта DR в зависимости от серьёзности убывающей отдачи.\n\n|cff00ff00Зелёный|r для ½ эффекта\n|cffffff00Жёлтый|r для ¼ эффекта\n|cffff0000Красный|r для иммунитета"
L["Option_ColorDRCooldownText_Desc_Midnight"] = "Окрашивает текст обратного отсчёта DR в зависимости от серьёзности убывающей отдачи.\n\n|cff00ff00Зелёный|r для ½ эффекта\n|cffff0000Красный|r для иммунитета"
L["Option_DRCategories"] = "Категории DR"
L["Option_PerClass"] = "Для класса"
L["Option_PerSpec"] = "Для специализации"
L["Option_DRIcons"] = "Иконки DR"
L["Option_EnableStaticIcons"] = "Включить статичные иконки"
L["Option_Categories"] = "Категории"
L["Option_SwapMissingTrinketWithRacial"] = "Заменить отсутствующий тринкет расовой"
L["Option_ForceShowTrinketOnHuman"] = "Принудительно показать тринкет на человеке"
L["Option_ReplaceHumanRacialWithTrinket"] = "Заменить расовую человека на тринкет"
L["Option_ShowDispels"] = "Показывать рассеивания"
L["Option_HealerDispels"] = "Рассеивания лекарей"
L["Option_DPSDispels"] = "Рассеивания ДД"
L["Option_OthersArena"] = "Другой sArena"
L["Option_ImportSettings"] = "Импортировать настройки"
L["Option_ShareProfile"] = "Поделиться профилем"
L["Option_ExportCurrentProfile"] = "Экспортировать текущий профиль"
L["Option_ExportString"] = "Строка экспорта"
L["Option_PasteProfileString"] = "Вставить строку профиля"
L["Option_ImportDescription"] = "Это импортирует ваши настройки другого sArena в новую версию sArena Updated 2 by sammers .\n\nУбедитесь, что оба аддона включены, затем нажмите кнопку ниже."
L["Message_NoLayoutSettings"] = "Выбранная раскладка, похоже, не имеет настроек."
L["Option_ReplaceHumanRacialWithTrinket_Desc"] = "Заменить расовую способность человека на текстуру тринкета Альянса в слоте расовой."
L["Option_ShowDispels_Desc"] = "Включите для показа перезарядки рассеивания на рамках арены."
L["Option_OthersArena_Desc"] = "Импортировать настройки из другого sArena"
L["Option_ImportSettings_Desc"] = "Импортировать настройки из другой версии sArena."
L["Option_MidnightPlans_Desc"] = "Планы World of Warcraft: Midnight"
L["Option_ShareProfile_Desc"] = "Экспортировать или импортировать профиль sArena"
L["Option_ExportString_Desc"] = "|cff32f795Ctrl+A|r чтобы выделить всё, |cff32f795Ctrl+C|r чтобы скопировать"
L["Option_PasteProfileString_Desc"] = "|cff32f795Ctrl+V|r чтобы вставить скопированную строку профиля"
L["Option_TrinketCircleBorder_Desc"] = "Включить круглую рамку для иконок тринкета"
L["Option_DefaultIcon_Desc"] = "Иконка по умолчанию: %s |T%s:24|t"
L["Option_ImportProfile_Desc"] = "Импортировать настройки профиля %s.\n\n%swww.twitch.tv/%s|r"
L["Option_DPSDispelsNote"] = "|cFFFFFF00Примечание:|r Рассеивания ДД появляются только после первого использования."
L["Option_DispelsBetaNotice"] = "\n|cFF808080Рассеивания в БЕТА-версии.\nНужно подтвердить некоторые ID заклинаний, особенно в Mists of Pandaria.\nНужно больше тестирования (ожидание PTR), возможны изменения.\nЕсли хотите помочь с информацией/отзывами/ID заклинаний — пишите!|r"
L["Option_ExportProfileHeader"] = "|cffffff00Экспорт профиля:|r"
L["Option_ImportProfileHeader"] = "|cffffff00Импорт профиля:|r"
L["Option_StreamerProfilesHeader"] = "|cffffff00Профили стримеров:|r"

L["Message_InvalidFormat"] = "Неверный формат."
L["Message_DecompressionError"] = "Ошибка распаковки: %s"
L["Message_DeserializationError"] = "Ошибка десериализации или неверный формат."
L["Message_ImportFailed"] = "|cffff4040Импорт не удался:|r"
L["Message_ExportFailed"] = "Экспорт не удался:"
L["Message_NoProfileFound"] = "Профиль для текущего персонажа не найден."
L["Message_ProfileDataNotFound"] = "Данные профиля не найдены."
L["Message_IncorrectDataType"] = "Неверный тип данных."
L["Message_ProfileOverwrite"] = "У вас уже есть профиль %s. Повторный импорт перезапишет все ваши настройки для этого профиля. Вы уверены, что хотите продолжить?"
L["ImportExport_DialogTitle"] = "Подтверждение импорта sArena"
L["Message_MidnightWarningTitle"] = "|cffa020f0Предупреждение беты Midnight|r"
L["Message_MidnightWarningText"] = "Midnight в бете и режим редактирования вызывает\nошибки новых DR.\n\n|cffFFFF00Перезагрузите интерфейс для исправления.|r\n\nЭто предупреждение будет удалено, как только\nBlizzard исправит режим редактирования и DR."
L["Button_ReloadUI"] = "Перезагрузить интерфейс"
L["DR_CategoriesPerSpec"] = "Категории (Для спека: %s)"
L["DR_CategoriesPerClass"] = "Категории (Для класса: %s)"
L["DR_CategoriesGlobal"] = "Категории (Глобально)"
L["DR_IconsPerSpec"] = "Настроить иконки DR (Для спека: %s)"
L["DR_IconsPerClass"] = "Настроить иконки DR (Для класса: %s)"
L["DR_IconsGlobal"] = "Настроить иконки DR (Глобально)"
L["Option_ShowDecimalsOnClassIcon_Desc"] = "Показывать десятичные на иконке класса, когда длительность меньше 6 секунд.\n\nТолько для пользователей без OmniCC."
L["Option_ShowDecimalsOnDRs_Desc"] = "Показывать десятичные на DR, когда длительность меньше 6 секунд.\n\nТолько для пользователей без OmniCC."
L["Option_StreamerProfiles_Desc"] = "Импортировать предустановленные профили популярных стримеров.\nВы сохраните все текущие профили, включая активный \"|cff00ff00%s|r\".\nЧтобы снова сменить профиль, перейдите на вкладку Профили."
L["Unknown"] = "Неизвестно"
L["Unknown_Spell"] = "Неизвестное заклинание"
L["Cooldown_Seconds"] = "Перезарядка: %d секунд"
L["SelectAll"] = "Выбрать всё"

---------------------------------------
-- Data Collection
---------------------------------------

L["DataCollection_NotEnabled"] = "Сбор данных не включён. Сначала установите db.collectData = true."
L["DataCollection_NoDataYet"] = "Данные заклинаний ещё не собраны."
L["DataCollection_ExportTitle"] = "Собранные данные заклинаний sArena"
L["DataCollection_ExportComplete"] = "Собрано %d записей. Данные отображены в окне экспорта."

L["Print_CurrentVersion"] = "Текущая версия: %s"
L["Print_MultipleVersionsLoaded"] = "Загружены две разные версии sArena. Пожалуйста, выберите, как продолжить, введя /sarena"

L["Conflict_MultipleVersions"] = "Обнаружено несколько версий sArena"
L["Conflict_Warning"] = "|A:services-icon-warning:20:20|a |cffff4444Включены две разные версии sArena|r |A:services-icon-warning:20:20|a"
L["Conflict_Explanation"] = "|cffffffffДве разные версии sArena не могут работать вместе корректно.\nВам нужно использовать только одну. У вас 3 варианта:|r"
L["Conflict_UseOther"] = "|cffffffffИспользовать другой sArena|r"
L["Conflict_UseOther_Desc"] = "Это отключит |cffffffffsArena Updated 2 by sammers  и вместо этого использует ваш другой sArena и перезагрузит интерфейс."
L["Conflict_UseOther_Confirm"] = "Это отключит |cffffffffsArena Updated 2 by sammers  и использует другой sArena и перезагрузит интерфейс.\n\nПродолжить?"
L["Conflict_UseReloaded_Import"] = "|cffffffffИспользовать sArena Updated 2 by sammers : Импортировать другие настройки"
L["Conflict_UseReloaded_Import_Desc"] = "Это скопирует ваш текущий профиль и настройки из другого sArena, отключит другой sArena для совместимости и перезагрузит интерфейс для начала использования sArena Updated 2 by sammers "
L["Conflict_UseReloaded_Import_Confirm"] = "Это скопирует ваш текущий профиль и настройки из другого sArena, отключит другой sArena для совместимости и перезагрузит интерфейс для начала использования sArena Updated 2 by sammers \n\nПродолжить?"
L["Conflict_UseReloaded_NoImport"] = "|cffffffffИспользовать sArena Updated 2 by sammers : Не импортировать другие настройки"
L["Conflict_UseReloaded_NoImport_Desc"] = "Это отключит другой sArena для совместимости и перезагрузит интерфейс для начала использования sArena Updated 2 by sammers  без ваших других настроек."
L["Conflict_UseReloaded_NoImport_Confirm"] = "Это отключит другой sArena для совместимости и перезагрузит интерфейс для начала использования sArena Updated 2 by sammers  без ваших других настроек.\n\nПродолжить?"
L["Midnight_UpdateInfo"] = "|cff00ff00ОБНОВЛЕНИЕ: Всё теперь доступно в Midnight.|r\n\nЯ планирую продолжить разработку |cffffffffsArena Updated 2 by sammers  для Midnight.\n\nНекоторые функции нужно будет адаптировать или удалить, но аддон останется.\nMidnight ещё в ранней альфе, и я ещё не начал подготовку (14 октября), но скоро начну.\n\nПланы могут измениться, но я уверен, что |cffffffffsArena Updated 2 by sammers  и мои другие аддоны\n|A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates останутся для Midnight (с изменениями/удалениями).\n\nМне предстоит много работы, и любая поддержка очень ценится. (|cff00c0ff@bodify|r)\nЯ обновлю этот раздел более подробной информацией, когда узнаю больше через несколько недель/месяцев."
L["Midnight_BetaInfo"] = "Добро пожаловать в Midnight! Мои другие аддоны |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rFrames & |A:gmchat-icon-blizz:16:16|aBetter|cff00c0ffBlizz|rPlates тоже в разработке.\n\nВо время разработки здесь всё будет быстро меняться, особенно с появлением нового API.\nЭта бета Midnight преждевременная, и многое ещё отсутствует в игре.\nЯ буду экспериментировать со многими вещами до релиза Midnight.\n\nСейчас изменилось следующее:\n1) DR теперь обрабатываются Blizzard, sArena только настраивает в допустимых пределах.\n 1.1) Настройка промежутков убрана.\n 1.2) Индивидуальный размер убран.\n 1.3) Рост вверх/вниз убран.\n 1.4) Иконки теперь странные иконки Blizzard, эти настройки убраны.\n2) Не-CC ауры больше не показываются, только CC, которые Blizzard позволяет видеть.\n3) Поглощение на рамках убрано.\n4) Перезарядку расовых нельзя отследить, но расовые всё ещё видны.\n5) Рассеивания убраны..\n\nНе всё окончательно определено, могут появиться новые вещи, посмотрим. Буду обновлять информацию здесь."

