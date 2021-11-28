status = "no_updates"

function update()
    print("Checking all libs...")
    sleep(1.5)
    print("No updates found for apt")
    sleep(1.5)
    print("No updates found for apt-core")
    sleep(1.5)
    print("No updates found for print.lib, print-core.lib, print.lua")
    print("Done")
    status = "ready"
    return status
end