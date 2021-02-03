GameScripts = {
  RagdollEngine = {
		PlaceIds = {2041312716},
		Loadstring = "https://raw.githubusercontent.com/StupidJson/RagdollEngine-List/main/source.lua",
	},
  AlchemyOnline = {
		PlaceIds = {5986049891},
		Loadstring = "https://raw.githubusercontent.com/StupidJson/AlchemyOnline-List/main/source.lua",
	},
}

function ExecuteScript(Code)
	loadstring(game:HttpGet(Code))()
end

function ExploitExecute(ScriptLoadstring)
    ExecuteScript(ScriptLoadstring)
end

wait(0.4)

for _, Test in pairs(GameScripts) do
		if table.find(Test.PlaceIds, game.PlaceId) then
			ExploitExecute(Test.Loadstring)
			break
		end
end
