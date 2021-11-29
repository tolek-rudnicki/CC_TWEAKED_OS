--print("Loading /bin/libs/apt.lua        ")
--print("Loading /bin/libs/apt-core.lua   ")

function load()
    os.loadAPI("bin/apis/apt.lua")
    os.loadAPI("system/run.lua")
    run.start("load (boot/UCCOS/load.lua: 6)", -1)
end
load()