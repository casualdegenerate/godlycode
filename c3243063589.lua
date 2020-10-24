asdf={}
for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v:IsA("ClickDetector") then
        table.insert(asdf,_,v)
    end
end
getgenv().cd = asdf
game:GetService("Players").LocalPlayer.Backpack.ChildAdded:connect(function(c)
	if c:IsA("Tool") then
		fwait()c.Parent = game:GetService("Players").LocalPlayer.Character
		fwait()c.Parent = workspace
	end
end)

coroutine.resume(coroutine.create(function()
if syn_checkcaller then fire_click_detector=fireclickdetector end
while true do fwait()
	for _,v in pairs(cd) do
		if v:IsA("ClickDetector") then 
			fire_click_detector(v,1) 
		end 
	end
end
end))

if syn_checkcaller then print("I do not have a version of this for SynX.") return end --Only works on proto
if not is_protosmasher_caller then print("Only works on Proto") return end --Only works on proto
last = 0
coroutine.resume(coroutine.create(function()
while true do 
	local h = game:HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId="..tostring(game.PlaceId).."&startIndex=0")
	local j = game:GetService("HttpService"):JSONDecode(h)
	for _,v in pairs(j.Collection) do
		if v.Guid == game.JobId and v.Fps ~= last then
			last = v.Fps
			lchat(tostring(v.Fps))
		end
	end
wait(1)end
end))
