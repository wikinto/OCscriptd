local component = require("component")
local radiationInfo = component.nc_geiger_counter.getChunkRadiationLevel()
while true do
    print(radiationInfo)
    os.sleep(1)
    while radiationInfo < 3 do
        computer.beep(500)
        computer.beep(2000)
    end
end

