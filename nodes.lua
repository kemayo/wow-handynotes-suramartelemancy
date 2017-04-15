local myname, ns = ...

-- localization (enUS/enGB used as default)
local L = {
	[40956] = "Ruins of Elune'eth",
	[42230] = "Falanaar",
	[42487] = "Waning Crescent",
	[44084] = "Twilight Vineyards",
	[42889] = "Evermoon Terrace",
	[44740] = "Astravar Harbor",
	[43808] = "Moon Guard Stronghold",
	[43809] = "Tel'anor",
	[43813] = "Sanctum of Order",
	[43811] = "Lunastre Estate",
	[41575] = "Felsoul Hold",
	[4380800] = "Moon Guard (entrance)",
	[4381300] = "Sanctum of Order (entrance)",
}

if GetLocale() == "deDE" then
	L[40956] = "Ruinen von Elune'eth"
	L[42230] = "Falanaar"
	L[42487] = "Mondsichelforum"
	L[44084] = "Zwielichtrebg\195\164rten"
	L[42889] = "Immermondterrasse"
	L[44740] = "Hafen der Astravar"
	L[43808] = "Mondwachenfestung"
	L[43809] = "Tel'anor"
	L[43813] = "Sanktum der Ordnung"
	L[43811] = "Anwesen der Lunastres"
	L[41575] = "Teufelsseelenbastion"
	L[4380800] = "Mondwachenfestung (Eingang)"
	L[4381300] = "Sanktum der Ordnung (Eingang)"
elseif GetLocale() == "itIT" then
	L[40956] = "Rovine di Elune'eth"
	L[42230] = "Falanaar"
	L[42487] = "Mezzaluna Crescente"
	L[44084] = "Vigne del crepuscolo"
	L[42889] = "Terrazza di Lunavespro"
	L[44740] = "Porto di Astravar"
	L[43808] = "Forte delle guardie della luna"
	L[43809] = "Tel'anor"
	L[43813] = "Santuario dell'ordine"
	L[43811] = "Tenuta dei Lunastra"
	L[41575] = "Forte Vilanima"
	L[4380800] = "Forte delle guardie della luna (entrata)"
	L[4381300] = "Santuario dell'ordine (entrata)"
elseif GetLocale() == "ptBR" then
	L[40956] = "Ruinas de Elune'eth"
	L[42230] = "Falanaar"
	L[42487] = "Lua Minguante"
	L[44084] = "Vinhedo do Crepusculo"
	L[42889] = "Terraco da Lua Perene"
	L[44740] = "Porto de Astravar"
	L[43808] = "Fortaleza da Guarda da Lua"
	L[43809] = "Tel'anor"
	L[43813] = "Sacrario da Ordem"
	L[43811] = "Propriedade dos Lunastre"
	L[41575] = "Castelo Almavil"
	L[4380800] = "Guarda da Lua (Entrada)"
	L[4381300] = "Sacrario da Ordem (Entrada)"
elseif GetLocale() == "esMX" then
	L[40956] = "Ruinas de Elune'eth"
	L[42230] = "Falanaar"
	L[42487] = "Cuarto Menguante"
	L[44084] = "Vi\195\177edos del Crepusculo"
	L[42889] = "Evermoon Terrace" -- needs translation
	L[44740] = "Astravar Harbor" -- needs translation
	L[43808] = "Fuerte de Guardia Lunar"
	L[43809] = "Tel'anor"
	L[43813] = "Sagrario de la Orden"
	L[43811] = "Dominios de Lunastre"
	L[41575] = "Bastion Almavil"
	L[4380800] = "Fuerte de Guardia Lunar (Entrada)"
	L[4381300] = "Sagrario de la Orden (Entrada)"
elseif GetLocale() == "frFR" then
	L[40956] = "Ruines d’Elune’eth"
	L[42230] = "Falanaar"
	L[42487] = "Lune descendante"
	L[44084] = "Vignobles du Crépuscule"
	L[42889] = "Terrasse de Sempiterlune"
	L[44740] = "Palais Sacrenuit"
	L[43808] = "Garde de la Lune"
	L[43809] = "Tel’anor"
	L[43813] = "Sanctum de l’ordre"
	L[43811] = "Domaine Lunastre"
	L[41575] = "Bastion Gangrâme"
	L[4380800] = "Garde de la Lune (Entrée)"
	L[4381300] = "Sanctum de l’ordre (Entrée)"
elseif GetLocale() == "ruRU" then
	L[40956] = "Руины Элуны"
	L[42230] = "Фаланар"
	L[42487] = "Лунный полумрак"
	L[44084] = "Сумеречные виноградники"
	L[42889] = "Терраса Вечной Луны"
	L[44740] = "Порт Астравар"
	L[43808] = "Лунные стражи"
	L[43809] = "Тел'анор"
	L[43813] = "Святилище порядка"
	L[43811] = "Поместье Лунархов"
	L[41575] = "Оплот Оскверненной Души"
	L[4380800] = "Лунные стражи (Вход)"
	L[4381300] = "Святилище порядка (Вход)"
elseif GetLocale() == "zhTW" then
	L[40956] = "伊露恩斯遺址"
	L[42230] = "法拉納爾"
	L[42487] = "弦月旅店"
	L[44084] = "暮光葡萄園"
	L[42889] = "永月露臺"
	L[44740] = "艾斯特瓦港"
	L[43808] = "月之守衛要塞"
	L[43809] = "泰爾亞諾"
	L[43813] = "秩序聖所"
	L[43811] = "路納斯特莊園"
	L[41575] = "魔魂堡"
	L[4380800] = "月之守衛 (入口)"
	L[4381300] = "秩序聖所 (入口)"
end

--[[ structure:
    [mapFil00] = { -- "_terrain1" etc will be stripped from attempts to fetch this
        [coord] = {
            label=[string], -- label: text that'll be the label, optional
            item=[id], -- itemid
            quest=[id], -- will be checked, for whether character already has it
            achievement=[id], -- will be shown in the tooltip
            junk=[bool], -- doesn't count for achievement
            npc=[id], -- related npc id, used to display names in tooltip
            note=[string], -- some text which might be helpful
        },
    },
--]]
ns.points = {
    ["Suramar"] = {
        [36204710] = { quest=40956, label=L[40956], hide_before=40956, }, -- Ruins of Elune'eth, storyline: Survey Says...
        [22903580] = { quest=42230, label=L[42230], hide_before=42228, }, -- Falanaar, storyline: Valewalker's Burden, hidden until Hidden City
        [47508200] = { quest=42487, label=L[42487], hide_after=43569, hide_before=42486, }, --Waning Crescent, storyline: Friends on the Outside, hidden until Little One Lost, hidden after Arluin's Request
        [64006040] = { quest=44084, label=L[44084], hide_before=42838, }, -- Twilight Vineyards, storyline: Vengeance for Margaux, hidden until Reversal
        [52007800] = { quest=42889, label=L[42889], hide_before=43569, }, -- Evermoon Terrace, storyline: The Way Back Home, hidden until 38694
        [54496943] = { quest=44740, label=L[44740], hide_before=44738, }, -- Astravar Harbor, storyline: Staging Point, hidden until Full Might of the Elves
        -- These ones are general-access after Ruins is opened:
        [30801090] = { quest=43808, label=L[43808], hide_before=40956, }, -- Moon Guard Stronghold
        [42203540] = { quest=43809, label=L[43809], hide_before=40956, }, -- Tel'anor
        [43406070] = { quest=43813, label=L[43813], hide_before=40956, }, -- Sanctum of Order
        [43607910] = { quest=43811, label=L[43811], hide_before=40956, }, -- Lunastre Estate
        [35808210] = { quest=41575, label=L[41575], hide_before=40956, }, -- Felsoul Hold
        -- entrances
        [27802230] = { quest=43808, entrance=true, label=L[4380800], hide_before=40956, }, -- Moon Guard (entrance)
        [42606170] = { quest=43813, entrance=true, label=L[4381300], hide_before=40956, }, -- Sanctum of Order (entrance)
    },
    ["FalanaarTunnels"] = { -- Fal'adore
        [40901350] = { quest=42230, label=L[42230], level=32, hide_before=42228 }, -- Falanaar
    },
    ["SuramarLegionScar"] = { -- The Fel Breach
        [53403680] = { quest=41575, label=L[41575], hide_before=40956 }, -- Felsoul Hold
    },
}
