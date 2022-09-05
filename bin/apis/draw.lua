local background = 32768
local text = 1
local rs_list = false
local settings_open = false
local dropped = false
local droppedDown = false
m = peripheral.find("monitor")
sizeX, sizeY = m.getSize()
os.loadAPI("bin/apis/userApi.lua")

function printText(text, posX, posY, usePos, txtColor, backColor, clear)
    --print(text, posX, posY, usePos, txtColor, backColor, clear)
    if usePos == true then
        if clear == true then
            m.clear()
            m.setCursorPos(posX, posY)
            m.setBackgroundColor(backColor)
            m.setTextColor(txtColor)
            m.write(text)
        else
            m.setCursorPos(posX, posY)
            m.setBackgroundColor(backColor)
            m.setTextColor(txtColor)
            m.write(text)
        end
    else
        if clear == true then
            m.clear()
            m.setBackgroundColor(backColor)
            m.setTextColor(txtColor)
            m.write(text)
        else
            m.setBackgroundColor(backColor)
            m.setTextColor(txtColor)
            m.write(text)
        end
    end
end

function settings(tag, xpos, ypos, x, y)
    lenght = string.len(tag)
    if xpos == nil or ypos == nil then
    else
        if x > xpos and x < lenght + xpos and y == ypos then 
            printText("settings", 13, 5, true, text, background                       , false)
            printText("x", 40, 4, true, text, 16384, false)
            m.setBackgroundColor(32768)
            backcg = {
                [1] = "White",
                [2] = "Orange",
                [4] = "Magenta",
                [8] = "Light Blue",
                [16] = "Yellow",
                [32] = "Lime",
                [64] = "Pink",
                [128] = "Gray",
                [256] = "Light Gray",
                [512] = "Cyan",
                [1024] = "Purple",
                [2048] = "Blue",
                [4096] = "Brown",
                [8192] = "Green",
                [16384] = "Red",
                [32768] = "Black"
            }
            printText("background color: " .. backcg[background], 13, 6, true, text, background, false)
            printText("set backgound color: " .. backcg[background], 13, 7, true, text, background, false)
            settings_open = true
        end
    end
end

function setBackClr(tag, xpos, ypos, x, y)
    if settings_open == false then
    else
        lenght = string.len(tag)
        if xpos == nil or ypos == nil then
        else
            if x > xpos and x < lenght + xpos and y == ypos then
                if dropped == false then
                    printText("White", 31, 8, true, 32768, 1, false)
                    printText("Orange", 31, 9, true, text, 2, false)
                    printText("Magenta", 31, 10, true, text, 4, false)
                    printText("Light Blue", 31, 11, true, text, 8, false)
                    printText("Yellow", 31, 12, true, text, 16, false)
                    printText("Lime", 31, 13, true, text, 32, false)
                    printText("Pink", 31, 14, true, text, 64, false)
                    printText("Gray", 31, 15, true, text, 128, false)
                    printText("Light Gray", 31, 16, true, text, 256, false)
                    printText("Cyan", 31, 17, true, text, 512, false)
                    printText("Purple", 31, 18, true, text, 1024, false)
                    printText("Blue", 31, 19, true, text, 2048, false)
                    printText("Brown", 31, 20, true, text, 4096, false)
                    printText("Green", 31, 21, true, text, 8192, false)
                    printText("Red", 31, 22, true, text, 16384, false)
                    printText("Black", 31, 23, true, 1, 32768, false)
                    dropped = true
                    --print(dropped)
                else
                    printText("     ", 31, 8, true, 1, background                       , false)
                    printText("      ", 31, 9, true, 1, background                       , false)
                    printText("       ", 31, 10, true, 1, background                       , false)
                    printText("          ", 31, 11, true, 1, background                       , false)
                    printText("      ", 31, 12, true, 1, background                       , false)
                    printText("    ", 31, 13, true, 1, background                       , false)
                    printText("    ", 31, 14, true, 1, background                       , false)
                    printText("    ", 31, 15, true, 1, background                       , false)
                    printText("          ", 31, 16, true, 1, background                       , false)
                    printText("    ", 31, 17, true, 1, background                       , false)
                    printText("      ", 31, 18, true, 1, background                       , false)
                    printText("    ", 31, 19, true, 1, background                       , false)
                    printText("     ", 31, 20, true, 1, background                       , false)
                    printText("     ", 31, 21, true, 1, background                       , false)
                    printText("   ", 31, 22, true, 1, background                       , false)
                    printText("     ", 31, 23, true, 1, background                       , false)
                    dropped = false
                    --print(dropped)
                end
            end
        end
    end
end

function setColor(tag, xpos, ypos, x, y, clr)
    if settings_open == false then
    else
        lenght = string.len(tag)
        if xpos == nil or ypos == nil then
        else
            if x > xpos and x < xpos + lenght and y == ypos then
                background = clr
                if clr == 1 then 
                    text = 32768 
                else 
                    text = 1
                end
                m.setBackgroundColor(clr)
                initWithoutFlash()
            end
        end
    end
end

function closeSettings(tag, xpos, ypos, x, y)
    if settings_open == false then
    else
        lenght = string.len(tag)
        if xpos == nil or ypos == nil then
        else
            if x > xpos and x < lenght + xpos and y == ypos then
                --printText("                                                               ", xpos - 29, ypos, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 1, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 2, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 3, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 4, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 5, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 6, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 7, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 8, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 9, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 10, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 11, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 12, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 13, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 14, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 15, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 16, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 17, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 18, true, 32768, background                       , false)
                --printText("                                                               ", xpos - 29, ypos + 19, true, 32768, background                       , false)
                os.reboot()
            end
        end
    end
end

function shutdown(tag, xpos, ypos, x, y)
    if rs_list == false then
    else
        lenght = string.len(tag)
        if xpos == nil or ypos == nil then
        else
            if x > xpos and x < xpos + lenght and y == ypos then
                m.setTextColor(1)
                m.setBackgroundColor(32768)
                m.clear()
                os.shutdown()
            end
        end
    end
end

function reboot(tag, xpos, ypos, x, y)
    if rs_list == false then
    else
        lenght = string.len(tag)
        if xpos == nil or ypos == nil then
        else
            if x > xpos and x < xpos + lenght and y == ypos then
                m.setTextColor(1)
                m.setBackgroundColor(32768)
                m.clear()
                os.reboot()
            end
        end
    end
end

function list(tag, xpos, ypos, x, y)
    lenght = string.len(tag)
    if xpos == nil or ypos == nil then
    else
        if x > xpos and x < xpos + lenght and y == ypos then
            rs_list = true
            if droppedDown == false then
                printText("shutdown", 43, 2, true, text, background, false)
                printText("reboot", 45, 3, true, text, background, false)
                droppedDown = true
            else
                printText("        ", 43, 2, true, 512, background, false)
                printText("      ", 45, 3, true, 512, background, false)
                droppedDown = false
            end
        end
    end
end

function setUpFile()
    local f = fs.open("system/system.cfg", "w")
    f.write("wasFirstBoot= fasle")
    f.close()
end

function checkFile()
    if fs.exists("system/system.cfg") then
        local f = fs.open("system/system.cfg", "r")
        local ins = 0
        for i in string.gmatch(f.readAll(), "%S+") do
            if ins == 1 then
                return i
            else
                ins = 1
            end
        end
    else
    end
end

function login()

end

function initWithoutFlash()
    rs_list = false
    settings_open = false

    draw.printText("T OS v1.0 ", 1, 1, true, 512, 32768, true)
    draw.printText(" settings                           ", 11, 1, true, 1, 32768, false)
    draw.printText("list", 47, 1, true, 512, 32768, false)
end

function init()
    local cf = checkFile()
    if cf == "true" then
        initWithoutFlash()
        setUpFile()
    else
        sleep(2)
        printText("_", 1, 1, true, 1, 1, true)
        printText("_", 2, 1, true, 2, 2, false)
        printText("_", 3, 1, true, 4, 4, false)
        printText("_", 4, 1, true, 8, 8, false)
        printText("_", 5, 1, true, 16, 16, false)
        printText("_", 6, 1, true, 32, 32, false)
        printText("_", 7, 1, true, 64, 64, false)
        printText("_", 8, 1, true, 128, 128, false)
        printText("_", 9, 1, true, 256, 256, false)
        printText("_", 10, 1, true, 512, 512, false)
        printText("_", 11, 1, true, 1024, 1024, false)
        printText("_", 12, 1, true, 2048, 2048, false)
        printText("_", 13, 1, true, 4096, 4096, false)
        printText("_", 14, 1, true, 8192, 8192, false)
        printText("_", 15, 1, true, 16384, 16384, false)
        printText("_", 16, 1, true, 32768, 32768, false)
        printText("_Loading... Please wait", 18, 1, true, 1, 32768, false)
        sleep(2.5)
        m.clear()
        printText("_", 1, 1, true, 1, 1, true)
        m.clear()
        sleep(0.2)
        printText("_", 1, 1, true, 32768, 32768, true)
        m.clear()
        printText("Please enter you username and password on the", 1, 1, true, 1, 32768)
        printText("computer", 1, 2, true, 1, 32768)
        print("Please enter you username and password")
        print("Username: ")
        local username = userApi.input(true)
        print("Password: ")
        local password = userApi.input(false)
        print("User " .. username .. " created with password " .. password)
        local f = fs.open("system/users.tos", "w")
        f.write(username .. "|" .. password)
        f.close()
        setUpFile()
        os.reboot()
    end
end
