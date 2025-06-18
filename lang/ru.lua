local language = {

    -- MESSAGES
    AL_MSG_FIRSTSTART =
    "Если вы используете Wizard's Wardrobe впервые, обязательно ознакомьтесь с FAQ и списком функций на %s. Там уже есть ответы на большинство вопросов.",
    AL_MSG_ENOENT = "Такой записи нет.",
    AL_MSG_ERROR = "ОШИБКА!",
    AL_MSG_LOADSETUP = "Загрузка набора [%s] из [%s].",
    AL_MSG_LOADINFIGHT = "Загрузка набора [%s] из [%s] после боя.",
    AL_MSG_SAVESETUP = "Сохранение набора [%s].",
    AL_MSG_DELETESETUP = "Удаление набора [%s].",
    AL_MSG_EMPTYSETUP = "Пустой набор.",
    AL_MSG_FOODENOENT = "Не удалось найти подходящую еду для баффа в инвентаре!",
    AL_MSG_NOFOODRUNNING =
    "Не работает еда. Съешьте ее и попробуйте еще раз или перетащите ее на соответствующую кнопку.",
    AL_MSG_NOTFOOD = "Этот предмет не является расходником для баффов или в настоящее время не поддерживается.",
    AL_MSG_LOADSKILLS = "Загрузка навыков %s из [%s].",
    AL_MSG_SAVESKILLS = "Сохранение навыков для набора %s.",
    AL_MSG_SKILLENOENT = "Неквозможно установить умение [%s]. Оно не изучено.",
    AL_MSG_SKILLSTUCK = "Неквозможно установить умение [%s].",
    AL_MSG_LOADGEAR = "Загрузка экипировки %s из [%s].",
    AL_MSG_SAVEGEAR = "Сохранение экипировки для набора %s.",
    AL_MSG_GEARENOENT = "Не получается найти %s в вашем инвентаре!",
    AL_MSG_GEARSTUCK = "Невозможно переместить %s.",
    AL_MSG_FULLINV = "Ваш инвентарь полон. Возможно, экипировка была перемещена неправильно.",
    AL_MSG_LOADCP = "Загрузка CP %s из [%s].",
    AL_MSG_SAVECP = "Сохранение CP для набора %s.",
    AL_MSG_CPENOENT = "Не удалось поставить [%s] потому что созвездие не разблокировано.",
    AL_MSG_CPNOTSLOTTABLEINFO = "Could not slot [%s]. Star is not slottable.", -- Need help in translation
    AL_MSG_CPCOOLDOWN = "Созвездия будут изменены через %ss.",
    AL_MSG_CPCOOLDOWNOVER = "Созвездия изменены.",
    AL_MSG_TOGGLEAUTOEQUIP = "Автопереключение %s.",
    AL_MSG_TOGGLEAUTOEQUIP_ON = "включено",
    AL_MSG_TOGGLEAUTOEQUIP_OFF = "выключено",
    AL_MSG_CLEARQUEUE = "%d записи в очереди очищены.",
    AL_MSG_NOREPKITS = "Не удалось найти ремонтных наборов в вашем инвентаре!",
    AL_MSG_NOTENOUGHREPKITS = "Недостаточно ремонтных наборов в вашем инвентаре!",
    AL_MSG_NOSOULGEMS = "Не удалось найти камни душ в вашем инвентаре!",
    AL_MSG_NOTENOUGHSOULGEMS = "Недостаточно камней душ в вашем инвентаре!",
    AL_MSG_NOPOISONS = "Не удалось найти яды в вашем инвентаре!",
    AL_MSG_IMPORTSUCCESS = "Все предметы успешно импортированы.",
    AL_MSG_IMPORTGEARENOENT =
    "Какие-то предметы не могут быть импортированы. Убедитесь, что в вашем инвентаре или банке есть все необходимые предметы. Особенности не имеют значения.",
    AL_MSG_WITHDRAW_SETUP = "Перемещение набора [%s] из банка.",
    AL_MSG_WITHDRAW_PAGE = "Перемещение всех наборов [%s] из банка.",
    AL_MSG_WITHDRAW_FULL = "Не удалось переместить предметы. Убедитесь, что в вашем инвентаре достаточно места.",
    AL_MSG_WITHDRAW_ENOENT = "Не все предметы можно найти в банке.",
    AL_MSG_DEPOSIT_SETUP = "Перемещение набора [%s] в банк.",
    AL_MSG_DEPOSIT_PAGE = "Перемещение всех наборов [%s] в банк.",
    AL_MSG_DEPOSIT_FULL = "Не удалось перемести предметы в банк. Убедитесь, что места достаточно.",
    AL_MSG_TRANSFER_FINISHED = "Все предметы были успешно перемещены.",
    AL_MSG_TRANSFER_TIMEOUT = "Как минимум, один предмет застрял. Пожалуйста, попробуйте еще раз.",
    AL_MSG_FOOD_FADED = "Ваш бафф еды закончился. Наслаждайтесь %s!",
    AL_MSG_FOOD_COMBAT =
    "Ваш бафф еды закончился посреди боя. AL обновит баф от %s после сражения, если это потребуется.",
    AL_MSG_NOFOOD = "В инвентаре не найдена указанная вами еда.",
    AL_MSG_SWAPFAIL = "%s in your Setup failed to swap, attempting workaround, please wait a few seconds",
    AL_MSG_SWAPFAIL_DISABLED = "%s in your Setup failed to swap",
    AL_MSG_SWAPSUCCESS = "Setup successfully loaded",
    AL_MSG_SWAP_FIX_FAIL = "All workarounds have failed, please try to manually unequip the stuck piece",
    AL_MSG_BLOCK_WARN = "DO NOT BLOCK!",


    -- ADDON MENU
    AL_MENU_GENERAL = "Настройки",
    AL_MENU_PRINTCHAT = "Писать уведомления в чат",
    AL_MENU_OVERWRITEWARNING = "Показывать предупреждение при перезаписи",
    AL_MENU_OVERWRITEWARNING_TT = "Отображает предупреждение, если уже сохраненный набор перезаписывается.",
    AL_MENU_INVENTORYMARKER = "Пометка в инвентаре",
    AL_MENU_INVENTORYMARKER_TT =
    "Показывает небольшой значок в инвентаре рядом с предметами, которые сохранены в сэтапах.",
    AL_MENU_UNEQUIPEMPTY = "Снять пустые слоты",
    AL_MENU_UNEQUIPEMPTY_TT =
    "Если что-то сохранено как пустое в наборе, предмет/навык/созвездие то это не будет экипировано.",
    AL_MENU_IGNORE_TABARDS = "Игнорировать пустые слоты гербовой накидки",
    AL_MENU_IGNORE_TABARDS_TT =
    "Если наряд сохраняется без гербовой накидки, не снимайте ни одну надетую на данный момент гербовую накидку.",
    AL_MENU_RESETUI = "Перезапустить UI",
    AL_MENU_RESETUI_TT =
    "|cFF0000Это сбрасывает окно AL и все его позиции в интерфейсах.|r\nВ дальнейшем его нужно снова открыть с помощью /wizard или горячей клавиши.",
    AL_MENU_AUTOEQUIP = "Автоматизация",
    AL_MENU_AUTOEQUIP_DESC = "Эти опции отвечают за то, что именно будет загружается/сохраняется в сэтапах.",
    AL_MENU_AUTOEQUIP_GEAR = "Экипировка",
    AL_MENU_AUTOEQUIP_SKILLS = "Навыки",
    AL_MENU_AUTOEQUIP_CP = "Звезды системы героя",
    AL_MENU_AUTOEQUIP_BUFFFOOD = "Бафф еды",
    AL_MENU_SUBSTITUTE = "Альтернативные сэтапы",
    AL_MENU_SUBSTITUTE_OVERLAND = "Локации",
    AL_MENU_SUBSTITUTE_OVERLAND_TT = "Логова и публичные подземелья относятся к локациям.",
    AL_MENU_SUBSTITUTE_DUNGEONS = "Подземелья",
    AL_MENU_SUBSTITUTE_WARNING =
    "Эта опция позволяет загружать запасные альтернативные сэтапы вне поддерживаемых зон. Это |cFF0000экспериментальная опция|r, которая может не работать на определенных боссах. В новых подземельях она работает намного лучше, чем в старых.",
    AL_MENU_PANEL = "Панель информации",
    AL_MENU_PANEL_ENABLE = "Включить панель информации",
    AL_MENU_PANEL_ENABLE_TT =
    "Показывает название сэтапа, страницы, а также текущую зону.\n|cF8FF70Желтое|r название сэтапа указывает на его отложенную загрузку (в очереди). |cFF7070Красное|r название сэтапа означает, что он больше не соответствует сохраненным данным.",
    AL_MENU_PANEL_MINI = "Легкий режим",
    AL_MENU_PANEL_MINI_TT = "Скрывает значок AL и уменьшает размер панели информации.",
    AL_MENU_PANEL_LOCK = "Блокировка перемещения UI",
    AL_MENU_MODULES = "Модули",
    AL_MENU_CHARGEWEAPONS = "Автоматически заряжать оружие",
    AL_MENU_REPAIRARMOR = "Автоматически ремонтировать броню",
    AL_MENU_REPAIRARMOR_TT = "Ремонт у продавца и использование ремонтных наборов.",
    AL_MENU_FILLPOISONS = "Автоматически пополнять яды",
    AL_MENU_FILLPOISONS_TT =
    "Автоматически пытается пополнить яды из инвентаря.\n|H1:item:76827:308:50:0:0:0:0:0:0:0:0:0:0:0:0:36:1:0:0:0:138240|h|h также меняется с |H1:item:79690:6:1:0:0:0:0:0:0:0:0:0:0:0:1:36:0:1:0:0:0|h|h и наоборот если иное не доступно.",
    AL_MENU_BUFFFOOD = "Автоматически обновлять бафф еды",
    AL_MENU_BUFFFOOD_TT =
    "Автоматически использует подходящую провизию когда ее бафф заканчивается. Работает только в испытаниях и подземельях.\nЗагляните в \"AutoLogConst.lua\", чтобы узнать, какие расходники поддерживаются. Их добавление в процессе.",
    AL_MENU_FIXES_FIXSURFINGWEAPONS = "Fix surfing on weapons",
    AL_MENU_FIXES_FIXSURFINGWEAPONS_TT =
    "This will toggle \"Hide Your Helm\" twice every zone swap in order to fix the weapon surf bug.",
    AL_MENU_WEAPON_GEAR_FIX = "Fix failed gear swaps.",
    AL_MENU_WEAPON_GEAR_FIX_TT = "Automates the steps we take to fix failed gear swaps",
    AL_MENU_VALIDATION_DELAY = "Validation delay",
    AL_MENU_VALIDATION_DELAY_TT = "Chose here the amount of MS after which the setup validation takes place",
    AL_MENU_VALIDATION_DELAY_WARN =
    "The longer the delay the lower the chance to have false positives. If its too low, it might cause unintended behavior.",
    AL_MENU_COMPARISON_DEPTH = "Comparison depth",
    AL_MENU_COMPARISON_DEPTH_EASY = "Easy",
    AL_MENU_COMPARISON_DEPTH_DETAILED = "Detailed",
    AL_MENU_COMPARISON_DEPTH_THOROUGH = "Thorough",
    AL_MENU_COMPARISON_DEPTH_EASY_TT = "Will only check the weapon type and the set.",
    AL_MENU_COMPARISON_DEPTH_DETAILED_TT = "Will check the trait, the weapon type, the set and quality.",
    AL_MENU_COMPARISON_DEPTH_THOROUGH_TT = "Will check the trait, the weapon type, the set, quality and enchantment.",
    AL_MENU_COMPARISON_IGNORE_COSTUME_SLOTS = "Ignore costumes",
    AL_MENU_COMPARISON_IGNORE_COSTUME_SLOTS_TT = "If set to on costumes will be ignored.",
    AL_MENU_COMPARISON_IGNORE_POISON_SLOTS = "Ignore poisons",
    AL_MENU_COMPARISON_IGNORE_POISON_SLOTS_TT = "If set to on poisons will be ignored.",


    -- USER INTERFACE
    AL_CHANGELOG =
    "Внимание! Эта версия Wizard's Wardrobe содержит некоторые важные изменения. Пожалуйста, ознакомьтесь с текущим журналом обновления, так как некоторые вещи теперь могут работать не так, как раньше.",
    AL_BUTTON_HELP = "|cFFFFFF[Нажмите]|r, чтобы открыть Wiki.",
    AL_BUTTON_SETTINGS = "Настройки",
    AL_BUTTON_CLEARQUEUE =
    "Сбросить очередь\n(Можно использовать, если в очереди поставлено слишком много изменений сэтапа.)",
    AL_BUTTON_UNDRESS = "Раздеться",
    AL_BUTTON_PREBUFF = "Пребафф",
    AL_BUTTON_LABEL = "|cFFFFFF[ЛКМ]|r загрузить набор",
    AL_BUTTON_BANKING =
    "|cFFFFFF[ЛКМ]|r для снятия экипировки\n|cFFFFFF[Shift + ЛКМ]|r для складывания экипировки в банк",
    AL_BUTTON_PREVIEW = "Предпросмотр",
    AL_BUTTON_SAVE = "Сохранить",
    AL_BUTTON_MODIFY = "Изменить",
    AL_BUTTON_RENAME = "Редактировать название",
    AL_BUTTON_REARRANGE_PAGES = "Порядок страницы",
    AL_BUTTON_REARRANGE_SETUPS = "Порядок сэтапов",
    AL_BUTTON_TOGGLEAUTOEQUIP = "Автопереключение наборов",
    AL_BUTTON_ADDPAGE = "Добавить страницу",
    AL_BUTTON_ADDSETUP = "Добавить сэтап",
    AL_BUTTON_GEAR =
    "Экипировка не сохранена!\nНажмите |cFFFFFF[Shift + ЛКМ]|r, чтобы сохранить текущую экипировку, или перетащите ее элементы на эту кнопку.",
    AL_BUTTON_SKILLS =
    "Навыки не сохранены!\nНажмите |cFFFFFF[Shift + ЛКМ]|r, чтобы сохранить текущие панели умений, или перетащите навыки в соответствующие ячейки сэтапа.",
    AL_BUTTON_CP =
    "Звезды системы героя не сохранены!\nНажмите |cFFFFFF[Shift + ЛКМ]|r, чтобы сохранить текущие панели звезд.",
    AL_BUTTON_BUFFFOOD =
    "Еда не сохранена!\nНажмите |cFFFFFF[Shift + ЛКМ]|r, чтобы сохранить текущую еду, или перетащите ее на эту кнопку.",
    AL_RENAME_PAGE = "Введите новое название для страницы:",
    AL_DELETEPAGE_WARNING = "Действительно удалить страницу [%s]?",
    AL_OVERWRITESETUP_WARNING = "Действительно перезаписать набор [%s]?",
    AL_DELETE = "Удалить",
    AL_ENABLE = "Активировать",
    AL_DISABLE = "Деактивировать",
    AL_MISSING_GEAR_TT = "Отсутствуют следующие предметы:\n\n%s\n\n|cFFFFFF[ЛКМ]|r, чтобы обновить",
    AL_SUBSTITUTE_EXPLAIN =
    "Эти настройки загружаются, если на выбранном сэтапе нет сохраненных настроек.\nЕсли вы не хотите использовать эту функцию, просто оставьте это поле пустым.",
    AL_CONDITION_NAME = "Назв.",
    AL_CONDITION_BOSS = "Босс",
    AL_CONDITION_AFTER = "После",
    AL_CONDITION_NONE = "Нет",
    AL_CONDITION_EVERYWHERE = "Повсюду",
    AL_IMPORT = "Импорт",
    AL_IMPORT_HELP =
    "Вставить |cFFFFFF[CTRL + V]|r экспортируемый текст здесь. Убедитесь, что текст не изменен, иначе импорт может завершиться неудачно.\nВам понадобятся все предметы в инвентаре. Особенности экспортированных наборов будут иметь приоритет, но если предмет в инвентаре не имеет правильную особенность, будут использоваться предмет с «неверной» особенностью.",
    AL_IMPORT_TT = "|cFF0000Внимание! Это перезапишет выбранные наборы.|r",
    AL_EXPORT = "Экспорт",
    AL_EXPORT_HELP =
    "Скопируйте выделенный текст с помощью |cFFFFFF[CTRL + C]|r и поделитесь им с другими.\nОн содержит экипировку, навыки и CP в компактном формате для импорта в другое место.",
    AL_CUSTOMCODE = "Код Lua",
    AL_CUSTOMCODE_HELP = "Этот код выполняется после загрузки сэтапа.",
    AL_DUPLICATE = "Дублировать",
    AL_DUPLICATE_NAME = "Копия %s",
    AL_LINK_IMPORT = "Добавить в AL",
    AL_PREBUFF_HELP =
    "Перетащите навыки на панели пребаффа.\nЕсли флажок установлен, они останутся на панели умений, пока вы снова не нажмете соответстввующий бинд. В противном случае после произнесения они будут удалены из соответствующих ячеек.\nЗадержка для «обычных» умений составляет ~500 мс. Заклинания, у которых есть время подготовки/поддержания требуют больше времени.",


    -- BOSS & TRIAL NAMES
    AL_PAGE = "Страница %s",
    AL_EMPTY = "Пусто",
    AL_UNNAMED = "Безымянный",
    AL_TRASH = "Зачистка",

    AL_GENERAL = "Общее",

    AL_SUB_NAME = "Альтернативные Наборы",
    AL_SUB_BOSS = "Альтернативный Босс",
    AL_SUB_TRASH = "Альтернативная Зачистка",

    AL_PVP_NAME = "PvP",

    AL_AA_NAME = "Этерианский Архив",
    AL_AA_STORMATRO = "Грозовой Атронах",
    AL_AA_STONEATRO = "Каменный Атронах",
    AL_AA_VARLARIEL = "Варлариэль",
    AL_AA_MAGE = "Маг",

    AL_SO_NAME = "Санктум-Офидия",
    AL_SO_MANTIKORA = "Одержимая Мантикора",
    AL_SO_TROLL = "Тролль Камнелом",
    AL_SO_OZARA = "Озара",
    AL_SO_SERPENT = "Змей",

    AL_HRC_NAME = "Цитадель Хель-Ра",
    AL_HRC_RAKOTU = "Ра-Коту",
    AL_HRC_LOWER = "Йокеда Рок'дун",
    AL_HRC_UPPER = "Йокеда Кай",
    AL_HRC_WARRIOR = "Воин",

    AL_MOL_NAME = "Пасть Лоркаджа",
    AL_MOL_ZHAJHASSA = "Жай'хасса Забытый",
    AL_MOL_TWINS = "Братья-близнецы",
    AL_MOL_RAKKHAT = "Ракхат",

    AL_HOF_NAME = "Залы Фабрикации",
    AL_HOF_HUNTERKILLER = "Охотники-убийцы Негатрикс",
    AL_HOF_HUNTERKILLER_DN = "Охотники-убийцы",
    AL_HOF_FACTOTUM = "Вершинный Фактотум",
    AL_HOF_SPIDER = "Архистраж",
    AL_HOF_COMMITEE = "Реактор",
    AL_HOF_COMMITEE_DN = "Комитет",
    AL_HOF_GENERAL = "Сборочный Генерал",

    AL_AS_NAME = "Изоляционный Санктуарий",
    AL_AS_OLMS = "Святой Олмс",
    AL_AS_FELMS = "Святой Фелмс",
    AL_AS_LLOTHIS = "Святой Ллотис",

    AL_CR_NAME = "Клаудрест",
    AL_CR_GALENWE = "Тень Галенве",
    AL_CR_RELEQUEN = "Тень Релеквина",
    AL_CR_SIRORIA = "Тень Сирории",
    AL_CR_ZMAJA = "З'Маджа",

    AL_SS_NAME = "Солнечный Шпиль",
    AL_SS_LOKKESTIIZ = "Локкестииз",
    AL_SS_YOLNAHKRIIN = "Йолнакриин",
    AL_SS_NAHVIINTAAS = "Наавинтас",

    AL_KA_NAME = "Эгида Кин",
    AL_KA_YANDIR = "Яндир Мясник",
    AL_KA_VROL = "Капитан Врол",
    AL_KA_FALGRAVN = "Лорд Фальгравн",

    AL_RG_NAME = "Каменная Роща",
    AL_RG_OAXILTSO = "Оазилцо",
    AL_RG_BAHSEI = "Басей Вестница Пламени",
    AL_RG_XALVAKKA = "Залвакка",
    AL_RG_SNAKE = "Нежится-со-Змеями",
    AL_RG_ASHTITAN = "Пепельный титан",

    AL_DSR_NAME = "Риф Зловещих Парусов",
    AL_DSR_LYLANARTURLASSIL = "Лиланар",
    AL_DSR_LYLANARTURLASSIL_DN = "Лиланар и Турлассил",
    AL_DSR_GUARDIAN = "Страж Рифа",
    AL_DSR_TALERIA = "Талерия Рожденная Приливом",
    AL_DSR_SAILRIPPER = "Разрывательница Парусов",
    AL_DSR_BOWBREAKER = "Крушитель Форштевней",

    AL_MSA_NAME = "Вихревая Арена",

    AL_VH_NAME = "Дебри Ватешранов",

    AL_DSA_NAME = "Драгонстар Арена",

    AL_BRP_NAME = "Тюрьма Черная Роза",
    AL_BRP_FIRST = "Боевой маг Эннодиус",
    AL_BRP_SECOND = "Укрощает-Зверя",
    AL_BRP_THIRD = "Леди Минара",
    AL_BRP_FOURTH = "Все боссы",
    AL_BRP_FIFTH = "Дракех Освобожденный",
    AL_BRP_FINALROUND = "Финальный Раунд",


    -- KEYBINDS
    SI_BINDING_NAME_AL_HOTKEY_SHOW_UI = "Открыть Wizard's Wardrobe",
    SI_BINDING_NAME_AL_HOTKEY_FIXES_FLIP_SHOULDERS = "Фикс Наплечника разрушения",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_1 = "Набор 1 (Треш)",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_2 = "Набор 2",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_3 = "Набор 3",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_4 = "Набор 4",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_5 = "Набор 5",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_6 = "Набор 6",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_7 = "Набор 7",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_8 = "Набор 8",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_9 = "Набор 9",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_10 = "Набор 10",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_11 = "Набор 11",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_12 = "Набор 12",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_13 = "Набор 13",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_14 = "Набор 14",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_15 = "Набор 15",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_16 = "Набор 16",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_17 = "Набор 17",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_18 = "Набор 18",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_19 = "Набор 19",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_20 = "Набор 20",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_21 = "Набор 21",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_22 = "Набор 22",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_23 = "Набор 23",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_24 = "Набор 24",
    SI_BINDING_NAME_AL_HOTKEY_SETUP_25 = "Набор 25",
    SI_BINDING_NAME_AL_HOTKEY_PREBUFF_1 = "Пребафф 1",
    SI_BINDING_NAME_AL_HOTKEY_PREBUFF_2 = "Пребафф 2",
    SI_BINDING_NAME_AL_HOTKEY_PREBUFF_3 = "Пребафф 3",
    SI_BINDING_NAME_AL_HOTKEY_PREBUFF_4 = "Пребафф 4",
    SI_BINDING_NAME_AL_HOTKEY_PREBUFF_5 = "Пребафф 5",
}

for key, value in pairs(language) do
    SafeAddVersion(key, 1)
    ZO_CreateStringId(key, value)
end
