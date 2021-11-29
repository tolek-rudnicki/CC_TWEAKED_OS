os.loadAPI("system/draw.lua")
m = peripheral.find("monitor")
sizeX, sizeY = m.getSize()

function drawGUI()
    m.clear()
    print(m.getSize())
    draw.init()
    while (true) do
        event, side, x, y = os.pullEvent("monitor_touch")
        if event == "monitor_touch" then
            -- button events
            draw.settings("settings", 11, 1, x, y)
            draw.close(" x", 21, 5, x, y)
            draw.list("list ", 46, 1, x, y)
            draw.shutdown("shutdown", 42, 2, x, y)
            draw.reboot("reboot", 44, 3, x, y)
            draw.setBackClr("set backgound color: " .. m.getBackgroundColor(), 13, 7, x, y)

            -- To implement: only on first boot run init(), add to bin/apis/vars.lua and it will contain all impportant vars. eg.: wasFirstBoot, background_color: 
            -- and use background_color in every printText() method other than the top bar
            draw.setColor("White", 31, 8, x, y, 1)
            draw.setColor("Orange", 31, 9, x, y, 2)
            draw.setColor("Magenta", 31, 10, x, y, 4)
            draw.setColor("Light Blue", 31, 11, x, y, 8)
            draw.setColor("Yellow", 31, 12, x, y, 16)
            draw.setColor("lime", 31, 13, x, y, 32)
            draw.setColor("pink", 31, 14, x, y, 64)
            draw.setColor("gray", 31, 15, x, y, 128)
            draw.setColor("Light Gray", 31, 16, x, y, 256)
            draw.setColor("Cyan", 31, 17, x, y, 512)
            draw.setColor("Purple", 31, 18, x, y, 1024)
            draw.setColor("Blue", 31, 19, x, y, 2048)
            draw.setColor("Brown", 31, 20, x, y, 4096)
            draw.setColor("Green", 31, 21, x, y, 8192)
            draw.setColor("Red", 31, 22, x, y, 16384)
            draw.setColor("Black", 31, 23, x, y, 32768)
        end
    end
end

function checkStatusAndReturn(func, exit_code)
    if string.len("function: " .. func .. ", exit code: " .. exit_code) > sizeX then
        draw.printText("function: " .. func, 1, 1, true, 1, 32768, true)
        draw.printText("exit code: " .. exit_code, 1, 2, true, 1, 32768, false)
    else
        return "function: " .. func .. ", exit code: " .. exit_code
    end
end
    
function start(functionOnStart, startstatus)
    exit_code = startstatus
    if exit_code == -1 then
        drawGUI()
    else
        draw.printText(checkStatusAndReturn(functionOnStart, exit_code), 1, 1, true, 1, 32768, true)
        print(checkStatusAndReturn(functionOnStart, exit_code))
    end
end
