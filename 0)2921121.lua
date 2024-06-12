--[[ annotations go here
goals 
player, MID TEIR SHOULD BE DONE FIRST
combat , HARD SHOULD BE DONE FIRST 
utils , 
teleports ,
misc , 


trolling Easy SHOULD BE DONE LAST



 






--]]
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KaidoAWK/dMNwre/main/jwaa", true))()

local Legit = library:AddWindow('Aimbot')
local Rage = library:AddWindow('Rage')
local AntiAim = library:AddWindow('Anti-Aim') -- Correct identifier
local watermark = library:AddWatermark('')

local e = Legit:AddSection('Aimbot')

e:AddLabel('Template Label') 
-- to make a label you do AddLabel('')

e:AddButton('Test button', false, nil, function() 
  print('a') 
end)

-- a button that when you click will print 'a'

e:AddToggle('Testing Toggle', true, Enum.KeyCode.LeftControl, function(v) 
    print(v)
end)

-- This is a TOGGLE KEYBIND
-- it will print True/false when you activate it with your keybind

e:AddToggle('Testing Toggle', true, nil, function(v)
    print(v)
end)
-- Will print (True) or (False)

-- look below

e:AddSlider('Template Slider', 100, 10, 50, function(c) 
end)

-- The first (100) is the max
-- The second (10) is the minimum 
-- The third (50) is the default 
-- Works with decimals,
-- Will print the number that you got

local visible = true
e:AddKeyBind('Template Keybind', Enum.KeyCode.Y, function() 
    -- When you press Y, it will disable the UI library and the watermark
    if watermark:Visible() then
        watermark:Visible(false) 
        visible = not visible
    else
        watermark:Visible(true) 
        visible = not visible
    end
end)

-- this is for the watermark and UI library keybind

e:AddColorPallete('Testing Color Pallete', Color3.fromRGB(150, 20, 208), function(a) 
  print(a)
end)
-- Will print the RGB that you chose

e:AddTextBox('No filter', nil, false, 5, function(a) print(a) end)
-- A textbox with no filter means you can do anything in it.

e:AddTextBox('Only numbers', nil, false, 1, function(a) print(a) end)
-- A textbox that you can only place numbers in it, no other thing 

e:AddTextBox('No special chars', nil, false, 2, function(a) print(a) end)
-- No special things like %&@#$%#!@$%@@#^

e:AddTextBox('Only nums+chars', nil, false, 3, function(a) print(a) end)
-- only text and numbers

e:AddTextBox('Only Chars', nil, false, 4, function(a) print(a) end)
-- only text 

e:AddSeparateBar()
-- To add a little bar to separate

e:AddDropdown('Testing Dropdown', {'opt1', 'opt2', 'opt3'}, 'opt2', function(a) print(a) end)

-- A dropdown to choose options, 
-- The options are in these ( {'opt1', 'opt2', 'opt3'} ) 
-- And the option chosen by default is just after it ('opt2')

-- For watermark stuff 
e:UpdateValue(true)  -- Corrected 'te' to 'e'
local ms = library.ms or 'hehe wha'

spawn(function()
    while wait(1) do
        local fps = library.fps
        local t = ''
        if #fps < 2 then
            t = 'FPS: '..'0'..fps..'| MS: '..ms
        else
            t = 'FPS: '..fps..'| MS: '..ms
        end
        watermark:ChangeText('i love femboy bro pls I NEED MONEY TO MAKE MY NEW UI TO GET SCRIPT PLEASE GIVE MONEY GUYS '..t)
    end
end)

wait(4)

wait(2)
watermark:Visible(true)
