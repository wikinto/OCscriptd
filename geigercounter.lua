local component = require("component")
local computer = require("computer")
local radiationInfo = component.nc_geiger_counter.getChunkRadiationLevel()
while true do
    print(radiationInfo)
    os.sleep(1)
    if radiationInfo < 3 then
        computer.beep(500)
        computer.beep(2000)
    end
end

