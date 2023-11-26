-- Create a frame
local frame = CreateFrame("Frame", "MainMenuFrame", UIParent, "BasicFrameTemplateWithInset")
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
AuralinVP.topSlider = CreateFrame("Slider", "TopSliderName", frame, "OptionsSliderTemplate")
AuralinVP.topSlider:SetPoint("LEFT", usageLabel, "BOTTOMLEFT", 0, -35)
AuralinVP.topSlider:SetWidth(200)
AuralinVP.topSlider:SetMinMaxValues(0, 500)
AuralinVP.topSlider:SetValueStep(1)
AuralinVP.topSlider:SetObeyStepOnDrag(true)
-- Create a label for the top slider
local topLabel = frame:CreateFontString(nil, "OVERLAY")
topLabel:SetPoint("LEFT", AuralinVP.topSlider, "LEFT", 0, 15)
topLabel:SetFontObject("GameFontHighlight")
topLabel:SetText("Top")
-- Create a FontString for the top slider's value
AuralinVP.topSlider.value = AuralinVP.topSlider:CreateFontString(nil, "OVERLAY")
AuralinVP.topSlider.value:SetPoint("BOTTOM", AuralinVP.topSlider, "TOP", 0, 0)
AuralinVP.topSlider.value:SetFontObject("GameFontHighlight")
-- Create a text input box for top
local topEditBox = CreateFrame("EditBox", "TopEditBoxName", frame, "InputBoxTemplate")
topEditBox:SetSize(50, 20)
topEditBox:SetPoint("LEFT", AuralinVP.topSlider, "RIGHT", 10, 0)
topEditBox:SetAutoFocus(false)
topEditBox:SetMaxLetters(5)
topEditBox:SetNumeric(true)
topEditBox:SetScript("OnEnterPressed", function(self)
    local value = tonumber(self:GetText())
    if value then
        AuralinVP.topSlider:SetValue(value)
    end
    self:ClearFocus()
end)

-- Create a slider for left
AuralinVP.leftSlider = CreateFrame("Slider", "LeftSliderName", frame, "OptionsSliderTemplate")
AuralinVP.leftSlider:SetPoint("LEFT", AuralinVP.topSlider, "BOTTOMLEFT", 0, -50)
AuralinVP.leftSlider:SetWidth(200)
AuralinVP.leftSlider:SetMinMaxValues(0, 500)
AuralinVP.leftSlider:SetValueStep(1)
AuralinVP.leftSlider:SetObeyStepOnDrag(true)
-- Create a label for the left slider
local leftLabel = frame:CreateFontString(nil, "OVERLAY")
leftLabel:SetPoint("LEFT", AuralinVP.leftSlider, "LEFT", 0, 15)
leftLabel:SetFontObject("GameFontHighlight")
leftLabel:SetText("Left")
-- Create a FontString for the left slider's value
AuralinVP.leftSlider.value = AuralinVP.leftSlider:CreateFontString(nil, "OVERLAY")
AuralinVP.leftSlider.value:SetPoint("BOTTOM", AuralinVP.leftSlider, "TOP", 0, 0)
AuralinVP.leftSlider.value:SetFontObject("GameFontHighlight")
-- Create a text input box for left
local leftEditBox = CreateFrame("EditBox", "LeftEditBoxName", frame, "InputBoxTemplate")
leftEditBox:SetSize(50, 20)
leftEditBox:SetPoint("LEFT", AuralinVP.leftSlider, "RIGHT", 10, 0)
leftEditBox:SetAutoFocus(false)
leftEditBox:SetMaxLetters(5)
leftEditBox:SetNumeric(true)
leftEditBox:SetScript("OnEnterPressed", function(self)
    local value = tonumber(self:GetText())
    if value then
        AuralinVP.leftSlider:SetValue(value)
    end
    self:ClearFocus()
end)

-- Create a slider for right
AuralinVP.rightSlider = CreateFrame("Slider", "RightSliderName", frame, "OptionsSliderTemplate")
AuralinVP.rightSlider:SetPoint("LEFT", AuralinVP.leftSlider, "BOTTOMLEFT", 0, -50)
AuralinVP.rightSlider:SetWidth(200)
AuralinVP.rightSlider:SetMinMaxValues(0, 500)
AuralinVP.rightSlider:SetValueStep(1)
AuralinVP.rightSlider:SetObeyStepOnDrag(true)
-- Create a label for the right slider
local rightLabel = frame:CreateFontString(nil, "OVERLAY")
rightLabel:SetPoint("LEFT", AuralinVP.rightSlider, "LEFT", 0, 15)
rightLabel:SetFontObject("GameFontHighlight")
rightLabel:SetText("Right")
-- Create a FontString for the right slider's value
AuralinVP.rightSlider.value = AuralinVP.rightSlider:CreateFontString(nil, "OVERLAY")
AuralinVP.rightSlider.value:SetPoint("BOTTOM", AuralinVP.rightSlider, "TOP", 0, 0)
AuralinVP.rightSlider.value:SetFontObject("GameFontHighlight")
texture:SetColorTexture(0,0,0,1)
-- Create a text input box for right
local rightEditBox = CreateFrame("EditBox", "RightEditBoxName", frame, "InputBoxTemplate")
rightEditBox:SetSize(50, 20)
rightEditBox:SetPoint("LEFT", AuralinVP.rightSlider, "RIGHT", 10, 0)
rightEditBox:SetAutoFocus(false)
rightEditBox:SetMaxLetters(5)
rightEditBox:SetNumeric(true)
rightEditBox:SetScript("OnEnterPressed", function(self)
    local value = tonumber(self:GetText())
    if value then
        AuralinVP.rightSlider:SetValue(value)
    end
    self:ClearFocus()
end)

-- Create a slider for bottom
AuralinVP.bottomSlider = CreateFrame("Slider", "BottomSliderName", frame, "OptionsSliderTemplate")
AuralinVP.bottomSlider:SetPoint("LEFT", AuralinVP.rightSlider, "BOTTOMLEFT", 0, -50)
AuralinVP.bottomSlider:SetWidth(200)
AuralinVP.bottomSlider:SetMinMaxValues(0, 500)
AuralinVP.bottomSlider:SetValueStep(1)
AuralinVP.bottomSlider:SetObeyStepOnDrag(true)
-- Create a label for the bottom slider
local bottomLabel = frame:CreateFontString(nil, "OVERLAY")
bottomLabel:SetPoint("LEFT", AuralinVP.bottomSlider, "LEFT", 0, 15)
bottomLabel:SetFontObject("GameFontHighlight")
bottomLabel:SetText("Bottom")
-- Create a FontString for the bottom slider's value
AuralinVP.bottomSlider.value = AuralinVP.bottomSlider:CreateFontString(nil, "OVERLAY")
AuralinVP.bottomSlider.value:SetPoint("BOTTOM", AuralinVP.bottomSlider, "TOP", 0, 0)
AuralinVP.bottomSlider.value:SetFontObject("GameFontHighlight")
-- Create a text input box for bottom
local bottomEditBox = CreateFrame("EditBox", "BottomEditBoxName", frame, "InputBoxTemplate")
bottomEditBox:SetSize(50, 20)
bottomEditBox:SetPoint("LEFT", AuralinVP.bottomSlider, "RIGHT", 10, 0)
bottomEditBox:SetAutoFocus(false)
bottomEditBox:SetMaxLetters(5)
bottomEditBox:SetNumeric(true)
bottomEditBox:SetScript("OnEnterPressed", function(self)
    local value = tonumber(self:GetText())
    if value then
        AuralinVP.bottomSlider:SetValue(value)
    end
    self:ClearFocus()
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

local MenuConfig = {
    topSlider = AuralinVP.topSlider,
    leftSlider = AuralinVP.leftSlider,
    rightSlider = AuralinVP.rightSlider,
    bottomSlider = AuralinVP.bottomSlider
}
return MenuConfig
