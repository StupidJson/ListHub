--[[local RagdollEngine = 2041312716
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
end]]

GameScripts = {
  RagdollEngine = {
		PlaceId = {2041312716},
		Loadstring = "https://raw.githubusercontent.com/StupidJson/RagdollEngine-List/main/source.lua",
	},
  AlchemyOnline = {
    PlaceId = {5986049891},
    Loadstring = "https://raw.githubusercontent.com/StupidJson/AlchemyOnline-List/main/source.lua",
  },
}

for _, GS in pairs(GameScripts) do
		if table.find(GS.PlaceId,game.PlaceId) then
			ExploitExecute(GS.Loadstring)
			break
		end
end

function ExploitExecute(ScriptLoadstring)
  ExecuteScript(ScriptLoadstring)
end

function ExecuteScript(Code)
	loadstring(game:HttpGet(Code, true))()
end
print("Hi")
