os.loadAPI("system/draw.lua")
m = peripheral.find("monitor")

function drawGUI()
    sizeX, sizeY = m.getSize()
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
        end
    end
end

function checkStatusAndReturn(func, exit_code)
    return "func: " .. func .. ", exit code: " .. exit_code
end
    
function start(functionOnStart, startstatus)
    exit_code = startstatus
    if exit_code == -1 then
        drawGUI()
    else
        m.write(checkStatusAndReturn(functionOnStart, exit_code))
    end
end
