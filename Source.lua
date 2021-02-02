local RagdollEngine = 2041312716
local AlchemyOnline = 5986049891

if game.PlaceId == RagdollEngine then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/StupidJson/RagdollEngine-List/main/source.lua"))()
else
  wait()
  if game.PlaceId == AlchemyOnline then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/StupidJson/AlchemyOnline-List/main/source.lua"))()
  else
    print("No game Detect")
  end
end
