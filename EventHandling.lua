local eventFrame = CreateFrame("Frame")

-- Register the PLAYER_ENTERING_WORLD event
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

eventFrame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
        -- Call a function to update the sliders.
        UpdateSlidersWithCurrentSettings()
    end
end)
