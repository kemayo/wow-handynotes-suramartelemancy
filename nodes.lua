local myname, ns = ...

ns.points = {
    --[[ structure:
    [mapFile] = { -- "_terrain1" etc will be stripped from attempts to fetch this
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
    ["Suramar"] = {
        [31301078] = { quest=43808, label="Moon Guard Stronghold", },
        [22683642] = { quest=42230, label="Falanaar", },
        [42073491] = { quest=43809, label="Tel'anor", },
        [36614654] = { quest=40956, label="Ruins of Elune'eth", },
        [45806442] = { quest=43813, label="Sanctum of Order", },
        [43077691] = { quest=43811, label="Lunastre Estate", },
        [38197713] = { quest=41575, label="Felsoul Hold", },
        [46668100] = { quest=42487, label="Waning Crescent", },
        [64006040] = { quest=44084, label="Twilight Vineyards", },
    },
}
