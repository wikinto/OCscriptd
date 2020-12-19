local event = require("event")
local io = require("io")
while true do
  local _,_, x, y, z, name = event.pull("motion")
  local f = io.open("logs.txt","a")
  print(name)
  f:write(name.."\n")
  f:close()

  if name ~= "wikinto" then
    os.execute("tape play")
    os.execute("tape speed 0.8")
    os.sleep(190)
    os.execute("tape rewind")
    os.execute("tape stop")
    os.sleep(5)
  end
  os.sleep(2)
end