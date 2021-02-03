GameScripts = {
  RagdollEngine = {
		PlaceID = {2041312716},
		Loadstring = "https://raw.githubusercontent.com/StupidJson/RagdollEngine-List/main/source.lua",
	},
  AlchemyOnline = {
		PlaceID = {5986049891},
		Loadstring = "https://raw.githubusercontent.com/StupidJson/AlchemyOnline-List/main/source.lua",
	},
  AdoptMe = {
		PlaceID = {920587237},
		Loadstring = "https://raw.githubusercontent.com/StupidJson/AdoptMe-List/main/source.lua",
	}
}

function ExecuteScript(Code)
	loadstring(game:HttpGet(Code))()
end

function ExploitExecute(ScriptLoadstring)
    ExecuteScript(ScriptLoadstring)
end

wait(0.4)

for _, GS in pairs(GameScripts) do
		if table.find(Test.PlaceID, game.PlaceId) then
			ExploitExecute(GS.Loadstring)
			break
		end
end
