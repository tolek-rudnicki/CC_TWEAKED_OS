order = 0
username = ""
password = ""
cpassword = ""

function toChar(key)
    local keyCodes = {
        [30] = "a",
        [48] = "b",
        [46] = "c",
        [32] = "d",
        [18] = "e",
        [33] = "f",
        [34] = "g",
        [35] = "h",
        [23] = "i",
        [36] = "j",
        [37] = "k",
        [38] = "l",
        [50] = "m",
        [49] = "n",
        [24] = "o",
        [25] = "p",
        [16] = "q",
        [19] = "r",
        [31] = "s",
        [20] = "t",
        [22] = "u",
        [47] = "v",
        [17] = "w",
        [45] = "x",
        [21] = "y",
        [44] = "z",
        [2] = "1",
        [3] = "2",
        [4] = "3",
        [5] = "4",
        [6] = "5",
        [7] = "6",
        [8] = "7",
        [9] = "8",
        [10] = "9",
        [11] = "0",
        [12] = "-",
        [13] = "=",
        [26] = "[",
        [27] = "]",
        [39] = ";",
        [40] = "'",
        [51] = ",",
        [52] = ".",
        [53] = "/",
        [15] = "\t",
        [57] = " ",
        [28] = "\n"
    }
    if keyCodes[key] then return keyCodes[key]
    else return ""
    end
end

function addUser(keyCode)
    local char = toChar(keyCode)
    if char == "\n" then
        if order == 2 then
            print("User " .. username .. " created with password " .. password)
            
        end
        order = order + 1
        return
    end
    if order == 0 then
        username = username .. char
        print(order)
        print("Username: " .. username)
    end 
    if order == 1 then
        password = password .. char
        print("Password: " .. password:gsub(".", "*"))
    end 
    if order == 2 then
        cpassword = cpassword .. char
        print("Confirm password: " .. cpassword:gsub(".", "*"))
    end
end

function checkIfUserExists(username)

end

function logIn(username, password)

end

function input(echo)
    local s = ""
    repeat
        local _, key = os.pullEvent("key")
        if echo then
            print(toChar(key))
        end
        if key == 28 then
            return s
        end
        s = s .. toChar(key)
    until false
end