-- Add a slash command for showing/hiding the options menu
SLASH_AVP1 = "/avp"
SlashCmdList["AVP"] = function()
    if MainMenuFrame:IsShown() then
        MainMenuFrame:Hide()
    else
        MainMenuFrame:Show()
        UpdateSlidersWithCurrentSettings()
    end
end