-- Certain persons are doing very unfair things competition wise like:
--     C_AddOns.DisableAddOn("sArena")
--     C_AddOns.DisableAddOn("sArena_Updated2_by_sammers")
--     sArena_ReloadedDB.reOpenOptions = true
--     ReloadUI()
-- So lets fight them back with their own weapon

function addonProtection()
    if C_AddOns.IsAddOnLoaded("sArena_Reloaded") then
        C_AddOns.DisableAddOn("sArena_Reloaded")
        ReloadUI()
    end
end

addonProtection()