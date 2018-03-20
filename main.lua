-----------------------------------------------------------------------------------------
--
-- main.Lua
--
-- show if the number is negative or postive
--
--
-- Created by: Fawaz Mezher
-- Created on: March 2018 
-----------------------------------------------------------------------------------------

-- instrcution
local InstructionTextField = display.newText( "Enter any real number.", display.contentCenterX - 500, display.contentCenterY - 500, native.systemFont, 70 )
-- the text boxes
local numberBox
local numberBoxTextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY - 300, 450, 150 )
numberBoxTextField.id = "length textField"
--clickbutton
local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX +700
calculateButton.y = display.contentCenterY +500
calculateButton.id = "calculate button"


local answerToNumber 
--function
local function calculateButtonTouch( event )
    -- this function tells if it postive or negative
 	numberBox = numberBoxTextField.text 
    local answerToNumber = tonumber(numberBox)
    
    if answerToNumber == 0 then
    	display.newText( "it is neither postive nor negative", display.contentCenterX, display.contentCenterY + 200, native.systemFont, 100 )
    elseif answerToNumber >=0 then
    	display.newText( "it is postive ", display.contentCenterX, display.contentCenterY + 500, native.systemFont, 150 )
    else 
    	display.newText( "it is negative", display.contentCenterX, display.contentCenterY + 500, native.systemFont, 150 )
    end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )