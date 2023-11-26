local eventFrame = CreateFrame("Frame")

-- Register the PLAYER_ENTERING_WORLD event
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

-- Register the ADDON_LOADED event
eventFrame:RegisterEvent("ADDON_LOADED")

eventFrame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_ENTERING_WORLD" then
        -- Call a function to update the sliders.
        UpdateSlidersWithCurrentSettings()
    end
end)

function UpdateWorldFrame()
    local screenWidth, screenHeight = GetPhysicalScreenSize()
    local bottom = ViewPort.bottom
    local top = ViewPort.top
    local left = ViewPort.left
    local right = ViewPort.right

    -- Set the WorldFrame to the new viewport settings
    WorldFrame:ClearAllPoints()
    WorldFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", left, -top)
    WorldFrame:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -right, bottom)
end

-- Set the event handler
eventFrame:SetScript("OnEvent", function(self, event, addonName)
    -- When the ADDON_LOADED event fires for this addon
    if event == "ADDON_LOADED" and addonName == "Auralin_Viewport" then
        -- Initialize Auralin_Viewport_Settings if it's nil
        if Auralin_Viewport_Settings == nil then
            Auralin_Viewport_Settings = { bottom = 112, top = 0, left = 0, right = 0 }
        end

        -- Set ViewPort to Auralin_Viewport_Settings
        ViewPort = Auralin_Viewport_Settings
    end
    UpdateWorldFrame()
end)