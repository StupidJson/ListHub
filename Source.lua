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

wait(0.4)

function ExploitExecute(ScriptLoadstring)
  ExecuteScript(ScriptLoadstring)
end

function ExecuteScript(Code)
	loadstring(game:HttpGet(Code, true))()
end
