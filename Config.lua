-- Create a frame
local frame = CreateFrame("Frame", "MyFrameName", UIParent, "BasicFrameTemplateWithInset")
frame:SetSize(300, 400)
frame:SetPoint("CENTER")
frame:Hide()  -- Hide the frame by default
frame.title = frame:CreateFontString(nil, "OVERLAY")
local texture = frame:CreateTexture(nil,"BACKGROUND")
frame.title:SetFontObject("GameFontHighlight")
frame.title:SetPoint("LEFT", frame.TitleBg, "LEFT", 5, 0)
frame.title:SetText("Auralin Viewport")

-- Create a texture for the frame
texture:SetAllPoints(frame)

-- Create a frame to handle events
local button = CreateFrame("Button", "SaveButtonName", frame, "UIPanelButtonTemplate")
button:SetPoint("BOTTOM", frame, "BOTTOM", 0, 10)

--Create Usage instructions
local usageLabel = frame:CreateFontString(nil, "OVERLAY")
usageLabel:SetPoint("TOP", frame, "TOP", 0, -35)
usageLabel:SetFontObject("GameFontHighlight")
usageLabel:SetJustifyH("LEFT")
usageLabel:SetJustifyV("TOP")
usageLabel:SetText("|cffdc143cWarning:|r This add-on adjusts the size of the\nframe the used by the game client to render\nthe game-world. To avoid the client from\ncrashing you are recommended to\n'Save & Reload' after every change.")

-- Create a slider for top
local topSlider = CreateFrame("Slider", "TopSliderName", frame, "OptionsSliderTemplate")
topSlider:SetPoint("LEFT", usageLabel, "BOTTOMLEFT", 0, -35)
topSlider:SetWidth(200)
topSlider:SetMinMaxValues(0, 500)
topSlider:SetValueStep(1)
topSlider:SetObeyStepOnDrag(true)
-- Create a label for the top slider
local topLabel = frame:CreateFontString(nil, "OVERLAY")
topLabel:SetPoint("LEFT", topSlider, "LEFT", 0, 15)
topLabel:SetFontObject("GameFontHighlight")
topLabel:SetText("Top")
-- Create a FontString for the top slider's value
topSlider.value = topSlider:CreateFontString(nil, "OVERLAY")
topSlider.value:SetPoint("BOTTOM", topSlider, "TOP", 0, 0)
topSlider.value:SetFontObject("GameFontHighlight")
-- Create a text input box for top
local topEditBox = CreateFrame("EditBox", "TopEditBoxName", frame, "InputBoxTemplate")
topEditBox:SetSize(50, 20)
topEditBox:SetPoint("LEFT", topSlider, "RIGHT", 10, 0)
topEditBox:SetAutoFocus(false)
topEditBox:SetMaxLetters(5)
topEditBox:SetNumeric(true)
topEditBox:SetScript("OnEnterPressed", function(self)
    local value = tonumber(self:GetText())
    if value then
        topSlider:SetValue(value)
    end
    self:ClearFocus()
end)

-- Create a slider for left
local leftSlider = CreateFrame("Slider", "LeftSliderName", frame, "OptionsSliderTemplate")
leftSlider:SetPoint("LEFT", topSlider, "BOTTOMLEFT", 0, -50)
leftSlider:SetWidth(200)
leftSlider:SetMinMaxValues(0, 500)
leftSlider:SetValueStep(1)
leftSlider:SetObeyStepOnDrag(true)
-- Create a label for the left slider
local leftLabel = frame:CreateFontString(nil, "OVERLAY")
leftLabel:SetPoint("LEFT", leftSlider, "LEFT", 0, 15)
leftLabel:SetFontObject("GameFontHighlight")
leftLabel:SetText("Left")
-- Create a FontString for the left slider's value
leftSlider.value = leftSlider:CreateFontString(nil, "OVERLAY")
leftSlider.value:SetPoint("BOTTOM", leftSlider, "TOP", 0, 0)
leftSlider.value:SetFontObject("GameFontHighlight")
-- Create a text input box for left
local leftEditBox = CreateFrame("EditBox", "LeftEditBoxName", frame, "InputBoxTemplate")
leftEditBox:SetSize(50, 20)
leftEditBox:SetPoint("LEFT", leftSlider, "RIGHT", 10, 0)
leftEditBox:SetAutoFocus(false)
leftEditBox:SetMaxLetters(5)
leftEditBox:SetNumeric(true)
leftEditBox:SetScript("OnEnterPressed", function(self)
    local value = tonumber(self:GetText())
    if value then
        leftSlider:SetValue(value)
    end
    self:ClearFocus()
end)

-- Create a slider for right
local rightSlider = CreateFrame("Slider", "RightSliderName", frame, "OptionsSliderTemplate")
rightSlider:SetPoint("LEFT", leftSlider, "BOTTOMLEFT", 0, -50)
rightSlider:SetWidth(200)
rightSlider:SetMinMaxValues(0, 500)
rightSlider:SetValueStep(1)
rightSlider:SetObeyStepOnDrag(true)
-- Create a label for the right slider
local rightLabel = frame:CreateFontString(nil, "OVERLAY")
rightLabel:SetPoint("LEFT", rightSlider, "LEFT", 0, 15)
rightLabel:SetFontObject("GameFontHighlight")
rightLabel:SetText("Right")
-- Create a FontString for the right slider's value
rightSlider.value = rightSlider:CreateFontString(nil, "OVERLAY")
rightSlider.value:SetPoint("BOTTOM", rightSlider, "TOP", 0, 0)
rightSlider.value:SetFontObject("GameFontHighlight")
texture:SetColorTexture(0,0,0,1)
-- Create a text input box for right
local rightEditBox = CreateFrame("EditBox", "RightEditBoxName", frame, "InputBoxTemplate")
rightEditBox:SetSize(50, 20)
rightEditBox:SetPoint("LEFT", rightSlider, "RIGHT", 10, 0)
rightEditBox:SetAutoFocus(false)
rightEditBox:SetMaxLetters(5)
rightEditBox:SetNumeric(true)
rightEditBox:SetScript("OnEnterPressed", function(self)
    local value = tonumber(self:GetText())
    if value then
        rightSlider:SetValue(value)
    end
    self:ClearFocus()
end)

-- Create a slider for bottom
local bottomSlider = CreateFrame("Slider", "BottomSliderName", frame, "OptionsSliderTemplate")
bottomSlider:SetPoint("LEFT", rightSlider, "BOTTOMLEFT", 0, -50)
bottomSlider:SetWidth(200)
bottomSlider:SetMinMaxValues(0, 500)
bottomSlider:SetValueStep(1)
bottomSlider:SetObeyStepOnDrag(true)
-- Create a label for the bottom slider
local bottomLabel = frame:CreateFontString(nil, "OVERLAY")
bottomLabel:SetPoint("LEFT", bottomSlider, "LEFT", 0, 15)
bottomLabel:SetFontObject("GameFontHighlight")
bottomLabel:SetText("Bottom")
-- Create a FontString for the bottom slider's value
bottomSlider.value = bottomSlider:CreateFontString(nil, "OVERLAY")
bottomSlider.value:SetPoint("BOTTOM", bottomSlider, "TOP", 0, 0)
bottomSlider.value:SetFontObject("GameFontHighlight")
-- Create a text input box for bottom
local bottomEditBox = CreateFrame("EditBox", "BottomEditBoxName", frame, "InputBoxTemplate")
bottomEditBox:SetSize(50, 20)
bottomEditBox:SetPoint("LEFT", bottomSlider, "RIGHT", 10, 0)
bottomEditBox:SetAutoFocus(false)
bottomEditBox:SetMaxLetters(5)
bottomEditBox:SetNumeric(true)
bottomEditBox:SetScript("OnEnterPressed", function(self)
    local value = tonumber(self:GetText())
    if value then
        bottomSlider:SetValue(value)
    end
    self:ClearFocus()
end)

local eventFrame = CreateFrame("Frame")

-- Register the PLAYER_ENTERING_WORLD event
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")

-- Set the event handler
eventFrame:SetScript("OnEvent", function(self, event)
    -- When the PLAYER_ENTERING_WORLD event fires
    if event == "PLAYER_ENTERING_WORLD" then
        -- Update the slider's value with the current ViewPort setting
        if ViewPort == nil then
        	topSlider:SetValue(0)
        	leftSlider:SetValue(0)
        	rightSlider:SetValue(0)
            bottomSlider:SetValue(112)  -- Use a default value
        else
        	topSlider:SetValue(ViewPort.top)
        	leftSlider:SetValue(ViewPort.left)
        	rightSlider:SetValue(ViewPort.right)
            bottomSlider:SetValue(ViewPort.bottom)
        end
        topSlider.value:SetText(ViewPort.top)
        leftSlider.value:SetText(ViewPort.left)
        rightSlider.value:SetText(ViewPort.right)
        bottomSlider.value:SetText(ViewPort.bottom)
    end
end)
-- Update the displayed top value when the slider value changes
topSlider:SetScript("OnValueChanged", function(self, value)
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
leftSlider:SetScript("OnValueChanged", function(self, value)
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
rightSlider:SetScript("OnValueChanged", function(self, value)
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
bottomSlider:SetScript("OnValueChanged", function(self, value)
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

-- Create a button for saving and reloading UI
button:SetSize(100, 22)
button:SetText("Save & Reload")
button:SetScript("OnClick", function()
    -- Update Auralin_Viewport_Settings with the current ViewPort settings
    Auralin_Viewport_Settings = ViewPort
    -- Reload the UI
    ReloadUI()
end)