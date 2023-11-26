function UpdateSlidersWithCurrentSettings()
    if ViewPort == nil then
        -- Default values or fetch from saved settings
        AuralinVP.topSlider:SetValue(0)
        AuralinVP.leftSlider:SetValue(0)
        AuralinVP.rightSlider:SetValue(0)
        AuralinVP.bottomSlider:SetValue(112)  -- Use a default value
    else
        -- Set the slider values to those in ViewPort
        AuralinVP.topSlider:SetValue(ViewPort.top)
        AuralinVP.leftSlider:SetValue(ViewPort.left)
        AuralinVP.rightSlider:SetValue(ViewPort.right)
        AuralinVP.bottomSlider:SetValue(ViewPort.bottom)
    end
    -- Update the displayed values
    AuralinVP.topSlider.value:SetText(ViewPort.top)
    AuralinVP.leftSlider.value:SetText(ViewPort.left)
    AuralinVP.rightSlider.value:SetText(ViewPort.right)
    AuralinVP.bottomSlider.value:SetText(ViewPort.bottom)
end

-- Update the displayed top value when the slider value changes
AuralinVP.topSlider:SetScript("OnValueChanged", function(self, value)
    -- Ensure value is within valid range
    value = max(0, min(value, UIParent:GetHeight()/2))

    -- Round value to nearest integer
    value = math.floor(value + 0.5)

    -- Store the old viewport settings
    local oldViewPort = {bottom = ViewPort.bottom, top = ViewPort.top, left = ViewPort.left, right = ViewPort.right}

    -- Try to update the viewport
    local success, error = pcall(function()
        self.value:SetText(value)
        ViewPort.top = value
        Auralin_Viewport_Settings.top = value  -- Update the SavedVariable
        UpdateWorldFrame()  -- Update the WorldFrame with the new ViewPort settings
    end)

    -- If the viewport update caused an error, revert the changes and display a message
    if not success then
        ViewPort = oldViewPort
        Auralin_Viewport_Settings = oldViewPort
        UpdateWorldFrame()
        print("Error updating viewport: " .. error)
    end
end)

-- Update the displayed left value when the slider value changes
AuralinVP.leftSlider:SetScript("OnValueChanged", function(self, value)
    -- Ensure value is within valid range
    value = max(0, min(value, UIParent:GetWidth()/2))

    -- Round value to nearest integer
    value = math.floor(value + 0.5)

    -- Store the old viewport settings
    local oldViewPort = {bottom = ViewPort.bottom, top = ViewPort.top, left = ViewPort.left, right = ViewPort.right}

    -- Try to update the viewport
    local success, error = pcall(function()
        self.value:SetText(value)
        ViewPort.left = value 
        Auralin_Viewport_Settings.left = value  -- Update the SavedVariable
        UpdateWorldFrame()  -- Update the WorldFrame with the new ViewPort settings
    end)

    -- If the viewport update caused an error, revert the changes and display a message
    if not success then
        ViewPort = oldViewPort
        Auralin_Viewport_Settings = oldViewPort
        UpdateWorldFrame()
        print("Error updating viewport: " .. error)
    end
end)

-- Update the displayed right value when the slider value changes
AuralinVP.rightSlider:SetScript("OnValueChanged", function(self, value)
    -- Ensure value is within valid range
    value = max(0, min(value, UIParent:GetWidth()/2))

    -- Round value to nearest integer
    value = math.floor(value + 0.5)

    -- Store the old viewport settings
    local oldViewPort = {bottom = ViewPort.bottom, top = ViewPort.top, left = ViewPort.left, right = ViewPort.right}

    -- Try to update the viewport
    local success, error = pcall(function()
        self.value:SetText(value)
        ViewPort.right = value 
        Auralin_Viewport_Settings.right = value  -- Update the SavedVariable
        UpdateWorldFrame()  -- Update the WorldFrame with the new ViewPort settings
    end)

    -- If the viewport update caused an error, revert the changes and display a message
    if not success then
        ViewPort = oldViewPort
        Auralin_Viewport_Settings = oldViewPort
        UpdateWorldFrame()
        print("Error updating viewport: " .. error)
    end
end)
-- Update the displayed bottom value when the slider value changes
AuralinVP.bottomSlider:SetScript("OnValueChanged", function(self, value)
    -- Ensure value is within valid range
    value = max(0, min(value, UIParent:GetHeight()/2))

    -- Round value to nearest integer
    value = math.floor(value + 0.5)

    -- Store the old viewport settings
    local oldViewPort = {bottom = ViewPort.bottom, top = ViewPort.top, left = ViewPort.left, right = ViewPort.right}

    -- Try to update the viewport
    local success, error = pcall(function()
        self.value:SetText(value)
        ViewPort.bottom = value  -- Replace "bottom" with the appropriate property for this slider
        Auralin_Viewport_Settings.bottom = value  -- Update the SavedVariable
        UpdateWorldFrame()  -- Update the WorldFrame with the new ViewPort settings
    end)

    -- If the viewport update caused an error, revert the changes and display a message
    if not success then
        ViewPort = oldViewPort
        Auralin_Viewport_Settings = oldViewPort
        UpdateWorldFrame()
        print("Error updating viewport: " .. error)
    end
end)