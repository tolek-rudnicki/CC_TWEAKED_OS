local droppedDown = false
m = peripheral.find("monitor")
sizeX, sizeY = m.getSize()

function printText(text, posX, posY, usePos, txtColor, backColor, clear)
    print(text, posX, posY, usePos, txtColor, backColor, clear)
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
            printText("settings", 13, 5, true, 1, 32768, false)
            printText("x", 22, 5, true, 1, 16384, false)
            m.setBackgroundColor(32768)
            printText("background color: " .. m.getBackgroundColor(), 13, 6, true, 1, 32768, false)
            printText("set backgound color: " .. m.getBackgroundColor(), 13, 7, true, 1, 32768, false)

        end
    end
end

function setBackClr(tag, xpos, ypos, x, y)
    dropped = false
    lenght = string.len(tag)
    if xpos == nil or ypos == nil then
    else
        if x > xpos and x < lenght + xpos and y == ypos then
            if dropped == false then
                printText("White", 31, 8, true, 1, 32768, false)
                printText("Orange", 31, 9, true, 1, 32768, false)
                printText("Magenta", 31, 10, true, 1, 32768, false)
                printText("Light Blue", 31, 11, true, 1, 32768, false)
                printText("Yellow", 31, 12, true, 1, 32768, false)
                printText("Lime", 31, 13, true, 1, 32768, false)
                printText("Pink", 31, 14, true, 1, 32768, false)
                printText("Gray", 31, 15, true, 1, 32768, false)
                printText("Light Gray", 31, 16, true, 1, 32768, false)
                printText("Cyan", 31, 17, true, 1, 32768, false)
                printText("Purple", 31, 18, true, 1, 32768, false)
                printText("Blue", 31, 19, true, 1, 32768, false)
                printText("Brown", 31, 20, true, 1, 32768, false)
                printText("Green", 31, 21, true, 1, 32768, false)
                printText("Red", 31, 22, true, 1, 32768, false)
                printText("Black", 31, 23, true, 1, 32768, false)
                dropped = true
            else
                printText("     ", 31, 8, true, 1, 32768, false)
                printText("      ", 31, 9, true, 1, 32768, false)
                printText("       ", 31, 10, true, 1, 32768, false)
                printText("          ", 31, 11, true, 1, 32768, false)
                printText("      ", 31, 12, true, 1, 32768, false)
                printText("    ", 31, 13, true, 1, 32768, false)
                printText("    ", 31, 14, true, 1, 32768, false)
                printText("    ", 31, 15, true, 1, 32768, false)
                printText("          ", 31, 16, true, 1, 32768, false)
                printText("    ", 31, 17, true, 1, 32768, false)
                printText("      ", 31, 18, true, 1, 32768, false)
                printText("    ", 31, 19, true, 1, 32768, false)
                printText("     ", 31, 20, true, 1, 32768, false)
                printText("     ", 31, 21, true, 1, 32768, false)
                printText("   ", 31, 22, true, 1, 32768, false)
                printText("     ", 31, 23, true, 1, 32768, false)
                dropped = false
            end
        end
    end
end

function close(tag, xpos, ypos, x, y)
    lenght = string.len(tag)
    if xpos == nil or ypos == nil then
    else
        if x > xpos and x < lenght + xpos and y == ypos then
            printText("                                                   ", xpos - 29, ypos, true, 32768, 32768, false)
        end
    end
end

function shutdown(tag, xpos, ypos, x, y)
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

function reboot(tag, xpos, ypos, x, y)
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

function list(tag, xpos, ypos, x, y)
    lenght = string.len(tag)
    if xpos == nil or ypos == nil then
    else
        if x > xpos and x < xpos + lenght and y == ypos then
            if droppedDown == false then
                printText("shutdown", 43, 2, true, 512, 32768, false)
                printText("reboot", 45, 3, true, 512, 32768, false)
                droppedDown = true
            else
                printText("        ", 43, 2, true, 512, 32768, false)
                printText("      ", 45, 3, true, 512, 32768, false)
                droppedDown = false
            end
        end
    end
end

function init()
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
    draw.printText("T OS v1.0", 1, 1, true, 512, 32768, true)
    draw.printText("settings", 11, 1, true, 1, 32768, false)
    draw.printText("list", 47, 1, true, 512, 32768, false)
end

function initWithoutFlash()
    draw.printText("T OS v1.0", 1, 1, true, 512, 32768, true)
    draw.printText("settings", 11, 1, true, 1, 32768, false)
    draw.printText("list", 47, 1, true, 512, 32768, false)
end