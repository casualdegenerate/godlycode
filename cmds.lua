repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
repeat wait() until game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")
loadstring(game:HttpGet("https://raw.githubusercontent.com/casualdegenerate/cd/master/Better%20Proto%20API"))()
if not rconsoleprint then
    lchat("Run it on SynX you idiot. Only works on SynX.",Color3.new(1,0,0))
    return
end

if not isfile("cd") then
    lchat("Welcome newcomer!",Color3.new(0,1,0))
    makefolder("cd")
    repeat wait() until isfile("cd")
    writefile("cd/cmds.lua",game:HttpGet("https://raw.githubusercontent.com/casualdegenerate/godlycode/main/cmds.lua"))
    writefile("cd/Log.txt","Will be used later to log any errors!")
    writefile("cd/README.txt","If you have anything to ask, just message CasualDegenerate on roblox or DM me on discord @casual_degenerate@7475 (586141923048161291)")
    makefolder("cd/Cache")
    repeat wait() until isfile("cd/Cache")
    makefolder("cd/Config")
    repeat wait() until isfile("cd/Config")
    writefile("cd/Config/cmds.settings",
[[settings = {
    servers = {
        colorFriends = true,
        nameOnlyFriends = true,
        namePlayers = false,
    },
    autoupdate = true,
}]]
)
    writefile("cd/Config/Music.txt","5580376560\n5833642888\n1064109642\n535308988\n554711853")
    makefolder("cd/Downloads")
    repeat wait() until isfile("cd/Downloads")
    makefolder("cd/Lighting")
    repeat wait() until isfile("cd/Lighting")
    makefolder("cd/Outfits")
    repeat wait() until isfile("cd/Outfits")
    makefolder("cd/Scripts")
    repeat wait() until isfile("cd/Scripts")
end
loadstring(readfile("cd/Config/cmds.settings"))()

if not isfile("cd/README.txt") then
    writefile("cd/README.txt","If you have anything to ask, just message CasualDegenerate on roblox or DM me on discord @casual_degenerate@7475 (586141923048161291)")
end
if not isfile("cd/cmds.lua") then
    writefile("cd/cmds.lua",game:HttpGet("https://raw.githubusercontent.com/casualdegenerate/godlycode/main/cmds.lua"))
	fspawn(function()loadstring(readfile("cd/cmds.lua"))()end)
	return
end

if readfile("cd/cmds.lua") ~= game:HttpGet("https://raw.githubusercontent.com/casualdegenerate/godlycode/main/cmds.lua") and settings.autoupdate then
    writefile("cd/cmds.lua",game:HttpGet("https://raw.githubusercontent.com/casualdegenerate/godlycode/main/cmds.lua"))
	fspawn(function()loadstring(readfile("cd/cmds.lua"))()end)
	return
end



lchat("2.2.11")

local rconsoleprint = function(input,color)
    if color then
        rconsoleprint(color)
    else
        rconsoleprint("@@WHITE@@")
    end
    rconsoleprint(input.."\n")
    fwait()
    rconsoleprint("@@WHITE@@")
end
local lplr = game:GetService("Players").LocalPlayer or game:GetService("Players"):GetPropertyChangedSignal("LocalPlayer"):wait()
rconsolename("cmds.lua")

rconsoleprint("Loaded!\nType \"commands\" to get a list of commands ✨✨✨","@@GREEN@@")
local lplr = game:GetService("Players").LocalPlayer
if not kek then 
    tchat("Loaded .\\cd\\cmds.lua") 
end
local cd = Instance.new("Folder") cd.Name = "cd" cd.Parent = Lighting
getgenv().kek=true
debug = true
function dprint(t)if debug then print(t)end end
local Fetch = {}
Fetch.Get = function(a)local succ,err = game:HttpGet(a) if err then return("err"..err) else return(succ)end end
local JSOND = function(a)return game:GetService("HttpService"):JSONDecode(a)end
local cwarn = function(input)
    lchat("cd/warn/: "..input)
end
local cerror = function(input)
    rchat("cd/error/: "..input)
end
function GetPlayer(a)local b={}local c=a:lower()if c=="all"then for d,e in pairs(game.Players:GetPlayers())do table.insert(b,e)end elseif c=="others"then for d,e in pairs(game.Players:GetPlayers())do if e.Name~=game.Players.LocalPlayer.Name then table.insert(b,e)end end elseif c=="me"then for d,e in pairs(game.Players:GetPlayers())do if e.Name==game.Players.LocalPlayer.Name then table.insert(b,e)end end else for d,e in pairs(game.Players:GetPlayers())do if e.Name:lower():sub(1,#a)==a:lower()then table.insert(b,e)end end end;if unpack(b) == nil then cwarn("No players in-game goes by that name") end return b end

local CheckGamepass=function(userid,gamepass)
	local g = game:HttpGet("https://inventory.roblox.com/v1/users/"..tostring(userid).."/items/GamePass/"..tostring(gamepass)):sub(65)
	if g ~= "" then return true
	else return false
    end
end;

local hasAsset = function(userId,assetId)
    local h = Fetch.Get("https://api.roblox.com/ownership/hasasset?userId="..tostring(userId).."&assetId="..tostring(assetId))
    return h
end

--[[Will use in new logs patch when it works...
function filt(txt)local o=''
    local t=tick()
    local ok='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-.,;:{}()^*~\\/!"#¤%&=?><|€'
    local function x(xa)
      for j=1,#ok do
        if xa:byte()==ok:sub(j,j)then
          return true
        end
      end
      return false
    end
    if type(txt)=='string'then
      for i=1,#txt do
        if x(txt:sub(i,i))then
          o=o..txt:sub(i,i)
        end
      end
    end
    return o,tick()-t
end
--]]

--GPI is an acronym for GetProductInfo
local gpi = function(id)
    return game:GetService("MarketplaceService"):GetProductInfo(tonumber(id))
end



local antilogger1 = "000000000000"
local gf=game:GetService("Workspace").Terrain._Game
local camera = game:GetService("Workspace").Camera
local VS = camera.ViewportSize --This is used to make the patched logs the 'right size' when using it. 




--This is why I prefer SynX.
if lplrPG then
    getgenv().lplrPG:Disable()
end
if nameNil then
    getgenv().nameNil:Disable()
end
if lplrCAdded then
    getgenv().lplrCAdded:Disable()
end
if lplrChatted then
    getgenv().lplrChatted:Disable()
end
if gffCAdded then
    getgenv().gffCAdded:Disable()
end
if lunpunish then
    getgenv().lunpunish:Disable()
end
if active then
    getgenv().active=false
end
if antifling then
    getgenv().antifling=false
end
if logsA then
    getgenv().logsA:Disable()
end
if serverc then
    getgenv().serverc = false
end
if rep then
    getgenv().rep = false
end
if logslast then
    getgenv().logslast = ""
end
if giga1 then
    getgenv().giga1 = false
end
if giga2 then
    getgenv().giga2 = false
end
if giga3 then
    getgenv().giga3 = false
end
if giga4 then
    getgenv().giga4 = false
end
if giga5 then
    getgenv().giga5 = false
end
if giga6 then
    getgenv().giga6 = false
end
if OT then
    getgenv().OT:Disable()
end












wait(1)
rconsoleprint("Passed reset!","@@LIGHT_GRAY@@")


getgenv().Punished = {}
getgenv().bypassmusic = {
--removed?    "5600019442",
    "5299353763",
--removed?    "9482839292",
    "3861919998", 
    "5116089511",
    "4840878880",
    "5222738370",
    "5495218248",
    "5517718752",
    "5629710122",
    "4449249912",
    "5515902212",
    "5650070170",

}

getgenv().hentai = {5707097328}
getgenv().songs = readfile("cd/Config/Music.txt"):split("\n")

getgenv().fix = {
    speed = false
}
getgenv().Music = false
getgenv().power=1
getgenv().tps=0.1
getgenv().musiclprev=""
getgenv().charnil=false
getgenv().antifling=false
getgenv().localunpunish=false
getgenv().logsscramble=false
getgenv().logss=100
getgenv().logse=1000
getgenv().active=true
getgenv().annoy=false
getgenv().antifling=false



getgenv().Commands = {
    ["snipe"] = {
        toggle = true, --It's a one command and next. 
        description = "Test command(copied from Kuzo) will snipe <args2>(plr)",
        funk = function(args)
            args[2] = GetPlayer(args[2])
            for _,v in pairs(args[2]) do v = v.Name
                rchat("jail "..v)
                rchat("ff "..v.." "..v.." "..v)
                rchat("freeze "..v.." "..v.." "..v)
                for i=1,2000 do --wait()
                    rchat("explode "..v.." "..v.." "..v)
                end
            end
        end,
    },
    ["regen"] = {
        description = "Presses the regen button(Resets admin pads).",
        funk = function()
            if not gf.Admin:FindFirstChild("Regen") then
                rconsoleprint("WARNING: Regen does not exist? Removed by someone?","@@YELLOW@@")
                return
            end
            fireclickdetector(gf.Admin.Regen.ClickDetector,1)
        end,
    },
    ["reset"] = {
        allies = {"re"},
        description = "Reset your character from the I/O.",
        funk = function()
            rchat("reset me")
        end,
    },
    --[[Old command.
    ["exit"] = function()
        Punished = {}
        Music = false
        power=1
        tps=0.1
        musiclprev=""
        charnil=false
        logsscramble=false
        active=false
        lplrPG:Disable()
        nameNil:Disable()
        lplrCAdded:Disable()
        lplrChatted:Disable()
        gffCAdded:Disable()
        lunpunish:Disable()

    end,
    --]]
    --[[["audio"] = function()
        local site = game:HttpGet("https://roblox.com/library/"..gf.Folder.Sound.SoundId)
        local find = "MediaPlayerIcon icon-play"
        local lines = site:split("\n")
        for _,v in pairs(lines) do
            if v.find(find) then
                print(v)
            end
        end
    end,--]]
    ["permpunish"] = {
        allies = {"pp"},
        description = "Keeps a person punished.",
        toggle = true,
        funk = function(args)
            if args[2] then
                for _,v in pairs(GetPlayer(args[2])) do
                    table.insert(Punished,v.UserId,true)
                    pcall(function()
                        while Punished[v.UserId] do wait(0.3)
                            if v.Character.Parent ~= game:GetService("Lighting") then
                                rchat("punish "..v.Name)
                            end
                        end
                    end)
                end
            else
                rconsoleprint("[cmds.lua]: You need to add a player name b-baka! >_<","@@RED@@")
            end
        end,
    },
    ["unpermpunish"] = {
        allies = {"unpp"},
        description = "Will unpermpunish the player.",
        funk = function(args)
            if args[2] then
                for _,v in pairs(GetPlayer(args[2])) do
                    Punished[v.UserId]=nil
                    wait()rchat("unpunish "..v.Name)
                end
            else
                rconsoleprint("[cmds.lua]: You need to add a player name b-baka! >_<","@@RED@@")
            end
        end,
    },
    ["klown"] = {
        allies = {"klwn","clown"},
        description = "Turn args<2>(plr) into a clown.",
        funk = function(args)
            args[2] = GetPlayer(args[2])
            for _,v in pairs(args[2]) do
                fchat("Since "..v.Name..", wants to be a clown, take this mask!")
                rchat("hat "..v.Name.." 5230747378")
            end
        end,
    },
    --[[["jspp"] = function(args)
        local json = game:GetService("HttpService"):JSONEncode(Punished)
        setclipboard(json)
    end,--]]
    ["visualize"] = {
        allies = {"visualizer"--[[lol +r]],"visu"},
        description = "Visualizer with the sun and moon.",
        funk = function(args)
            if not Music then Music = true
                if args[2] ~= nil then rchat("music "..args[2]) end
                local s = gf.Folder:WaitForChild("Sound",10)
                while Music do
                    local s = gf.Folder:WaitForChild("Sound")
                    --[[
                    if s.PlaybackLoudness*power/150 > 10 then
                        spawn(function() --print("HIT")
                            rchat("fogstart 0")
                            wait(0.5)
                            rchat("fix")
                        end)
                    end
                    --]]
                    r=tostring(s.PlaybackLoudness*power/150):sub(1,3)
                    if r~=musiclprev then
                        getgenv().musiclprev=r
                        rchat("time "..r)
                        print("time "..r)
                    end
                    wait(tps) 
                end
            end
        end,
    },
    ["unvisualize"] = {
        allies = {"unvisualizer"--[[lol +r]],"unvisu"},
        description = "Turns off visualizer.",
        funk = function(args)
            Music = false
            if args[2] == "m" then 
                rchat("stopmusic") 
            end
        end,
    },
    ["con"] = function(args)
        if args[2] == "pow" and args[3] ~= nil then
            getgenv().power = tonumber(args[3])
        elseif args[2] == "tps" and args[3] ~= nil then
            getgenv().tps = tonumber(args[3])
        end
    end,
    ["cn"] = {
        --description = "Will hide your character until you toggle it o",
        funk = function()
            charnil=true
        end,
    },
    ["uncn"] = function()
        selfNil:Disable()
    end,
    --[[I'm an idiot.
    ["h3"] = function()
        for i=1,math.random(1,100) do
            rchat("tshirt me "..math.random(100000,999999))
        end
        rchat("tshirt me 22222222")
        wait()
        for i=1,math.random(1,100) do
            rchat("tshirt me "..math.random(100000,999999))
        end
    end,
    --]]
    ["?"] = {
        description = "Set's your clipboard to the current song playing if any.",
        funk = function()
            --[[for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("Sound") then 
                    sounds = v.SoundId
                end
            end--]]
            song = gf.Folder:WaitForChild("Sound",10).SoundId:sub(-10):gsub("=","")
            if song == nil then
                rconsoleprint("[cd.lua]: Aaaaaah! There is no song! ;-;")
            end
            rconsoleprint("This song is "..gpi(song).Name.." | [cd.lua]: Say Y if you want it on your clipboard(say anything else if you don't...) *v*")
            if rconsoleinput:sub(1,1):lower() == "y" then
                setclipboard(tostring(song))
            end
        end,
    },
    ["mimic"] = function(args)
        local a = function(id)
            local h = game:HttpGet("https://avatar.roblox.com/v1/users/"..tostring(id).."/avatar")
            local j = game:GetService("HttpService"):JSONDecode(h)
            local hats = {8}
            for i=41,47 do 
                table.insert(hats,i)
            end
            local content={{}}
            for _,v in pairs(j.assets) do
                for k,f in pairs(hats) do
                    if v.assetType.id == f then
                        table.insert(content[1],v.id)
                    end
                end
                if v.assetType.name == "Shirt" then
                    content[2] = v.id
                elseif v.assetType.name == "Pants" then
                    content[3] = v.id
                elseif v.assetType.name == "Face" then
                    content[4] = v.id
                end
            end
            for _,v in pairs(content) do
                if _ == 1 then
                    for o,p in pairs(v) do
                        rchat("hat me "..p)
                    end
                elseif _ == 2 then
                    rchat("shirt me "..v)
                elseif _ == 3 then
                    rchat("pants me "..v)
                elseif _ == 4 then
                    rchat("unface me")
                    rchat("face me "..v)
                end
            end
        end
        for _,u in pairs(args) do dprint("args check",u)
            if u:find("+e") then dprint("+E")
                rchat("unshirt me")
                rchat("unpants me")
                rchat("unhat me")
            end
            if u:find("+f") then dprint("+F")
                if tonumber(args[2]) ~= nil then
                    osidfje = args[2]
                else
                    local h = Fetch.Get("https://api.roblox.com/users/get-by-username?username="..args[2])
                    local j = JSOND(h)
                    osidfje = j.Id
                end
            end
        end
        if not osidfje then print("no osidfje")
            for _,v in pairs(GetPlayer(args[2])) do
                osidfje = v.UserId
            end
        end
        a(osidfje)
        osidfje=nil
    end,
    ["cd"] = function(args) print(args)
        if isfile("cd/Lighting/"..args[2]..".lua") then
            loadstring(readfile("cd/Lighting/"..args[2]..".lua"))()
        end
    end,
    ["outfit"] = {
        description = "Set's cd/Outfits/<args[2]>.cd as your outfit.",
        funk = function(args)
            local input = tostring(args[2])
            reeeeeeee=false
            for _,v in pairs(args) do
                if v:find("+random") then reeeeeeee=true
                    local c = listfiles("cd/Outfits")[math.random(1,#listfiles("cd/Outfits"))]
                    local c = c:gsub("\\","/")
                    Outfit=loadstring(readfile(c))()
                    spawn(function()wait(1)rchat("h "..c:split("/")[3])end)
                end
            end
            if not reeeeeeee then
                local err = pcall(function()Outfit=loadstring(readfile("cd/Outfits/"..input..".cd"))()end)
                if not err then
                    rconsoleprint("ERROR: Outfit Input Invalid \(Does Not Exist!!\)","@@RED@@")
                    return
                end
            end
            for _,v in pairs(args) do
                if v:find("+e") then
                    rchat("unhat me")
                    rchat("unshirt me")
                    rchat("unpants me")
                end
            end
            rchat("unface me")
            
            for _,v in pairs(Outfit.Hat) do
                rchat("hat me "..v)
            end
            rchat("shirt me "..Outfit.Shirt)
            rchat("pants me "..Outfit.Pants)
            rchat("face me "..Outfit.Face)
            if Outfit.Creator then rchat("h "..Outfit.Creator) end
        end,
    },
    ["nn"] = function(args)
        namenil=true
    end,
    ["unnn"] = function()
        namenil=false
    end,
    ["lunp"] = function()
        localunpunish = true
    end,
    ["unlunp"] = function()
        localunpunish = false
    end,
    ["rainbow"] = function()
        rchat("gear me 18474459")
        local t = lplr.Backpack:WaitForChild("PaintBucket")
        fwait()t.Parent = lplr.Character
        wait(0.5)
        local function color(part,c)
            local ohTable2 = {
                ["Part"] = part,
                ["Color"] = c
            }
            local ohString1 = "PaintPart"
            spawn(function()t.Remotes.ServerControls:InvokeServer(ohString1, ohTable2)end)
        end
        for aaaa=1,1 do 
        for _,v in pairs(game:GetService("Workspace").Terrain._Game:GetDescendants()) do if v:IsA("BasePart") then
            spawn(function()
                for i=0,1,0.04 do fwait()
                    color(v,Color3.fromHSV(i,1,1))
                end
            end)

        end end
        end
    end,
    ["csl"] = function()
        local output=""
        for _,v in pairs(GetPlayer("all")) do
            output = output..v.Name..";"
        end
        setclipboard(output)
    end,
    ["logsscramble"] = function()
        if logsscramble then logsscramble=false else logsscramble=true end
    end,
    ["cdcommands"] = function()
        local index = 0
        local space = "\n"
        local command = ""
        for _,v in pairs(Commands) do
            index++
            command = command.."["..tostring(_).."]".."\n"
        end
        rchat("music "..space:rep(200)..command.."\nIndex: "..index)
    end,
    ["bypass"] = function()
        rchat("music "..antilogger1..bypassmusic[math.random(1,#bypassmusic)])
    end,
    ["cd-a"] = function()
        local s = ""
        for i=1,50000 do
            s = s..string.char(math.random(1,255))
        end
        rchat("music "..s)
    end,
    ["c"] = function(args)
        local s = "cd/COM/robot.txt\n"..lplr.Name..": "
        local msg = ""
        for _,v in pairs(args) do
            if _ ~= 1 then
                msg = msg..v.." "
            end
        end

        rchat("music "..s..msg:sub(1,msg:len()-1).."\n")
    end,
    ["fix"] = function(args)
        if args[2] == "speed" then
            if fix.speed == false then fix.speed = true else fix.speed = false end
            if args[3] == nil then args[3] = 16 end
            fspawn(function()
                while fix.speed do fwait()
                    if lplr.Character.Humanoid.WalkSpeed ~= args[3] then lplr.Character.Humanoid.WalkSpeed = args[3] end
                end
            end)
        --[[elseif args[2] == "anchor" then
            if args[3] == nil or args[3] == "1" then args[3] = 
            
        elseif args[2] == "cam" then
            for _v, in pairs(game:GetService("Workspace").Camera:GetChildren()) do 
                if v.Name == "GrayScale" then
                    v.Parent = nil
                end
            end--]]
        end
    end,
    ---[[
    ["cache"] = {
        --allies = {"rj"},
        description = "Will download the player's entire outfits list and check if they have an email on that player. ",
        funk = function(args)
            local eh = function(idname,userid,plr)local idname, userid = tostring(idname), tostring(userid) 
                fspawn(function()if hasAsset(userid,102611803) == "true" then
                    rconsoleprint("["..idname.."]: I'm Verified!","@@GREEN@@") 
                else
                    rconsoleprint("["..idname.."]: I'm Not verified?","@@RED@@") 
                end;end)
                --[[for er,ij in pairs(args) do
                    if ij:find("+d") then
                        dprint(plr) 
                        if not plr then return end
                        local id = tostring(tick())
                        makefolder("cd/Downloads/"..tostring(userid).." "..idname)
                        
                        if not plr.Character then return end
                        if plr.Character:FindFirstChild("Shirt") then dprint('shirt') local s = plr.Character.Shirt.ShirtTemplate:sub(33,plr.Character.Shirt.ShirtTemplate:len()) dprint(s)
                            writefile("cd/Downloads/"..tostring(userid).." "..idname.."/"..id.." Shirt"..".png",Fetch.Get("https://assetdelivery.roblox.com/v1/asset/?id="..s))
                        else
                            writefile("cd/Downloads/"..tostring(userid).." "..idname.."/"..id.." Shirt"..".png","")
                        end
                        if plr.Character:FindFirstChild("Pants") then dprint('pants') local p = plr.Character.Pants.PantsTemplate:sub(33,plr.Character.Pants.PantsTemplate:len()) dprint(p)
                            writefile("cd/Downloads/"..tostring(userid).." "..idname.."/"..id.." Pants"..".png",Fetch.Get("https://assetdelivery.roblox.com/v1/asset/?id="..p))
                        else
                            writefile("cd/Downloads/"..tostring(userid).." "..idname.."/"..id.." Pants"..".png","")
                        end
                        return
                    end
                end--]]
                local f = "cd/cache/Outfits "..tostring(tick()).." "..idname.." "..userid..".txt"
                local h = Fetch.Get("https://avatar.roblox.com/v1/users/"..userid.."/outfits?itemsPerPage=50")
                --dprint(h)
                local u = JSOND(h)
                if #u.data == 0 then
                    rconsoleprint("["..idname.."]: I have no outfits!","@@RED@@")
                elseif #u.data == 1 then
                    rconsoleprint("["..idname.."]: I have only one outfit!","@@YELLOW@@")
                else
                    rconsoleprint("["..idname.."]: I have "..tostring(#u.data).." outfits!","@@GREEN@@")
                end
                local id = ""
                local images = ""
                local data = ""
                if u.data[1] == nil then writefile(f,"") return end
                for _,v in pairs(u.data) do
                    id = id..v.id..","
                end
                local id = id:sub(1,id:len()-1)
                local h = Fetch.Get("https://thumbnails.roblox.com/v1/users/outfits?userOutfitIds="..id.."&size=420x420&format=png")
                local j = JSOND(h)
                for _,v in pairs(j.data) do --print(v.targetId,v.imageUrl)
                --    table.insert(images,v.imageUrl)
                    if v.targetId and v.imageUrl then 
                        images = images.."[".._.."] "..v.targetId.." "..v.imageUrl.." | "..u.data[_].name.."\n" 
                    elseif not v.targetId and v.imageUrl then
                        images = images.."[".._.."] Id lost... "..v.imageUrl.."\n" 
                    elseif v.targetId and not v.imageUrl then
                        images = images.."[".._.."] "..v.targetId.." Image lost...\n" 
                    end
                end
                --for _,v in pairs(images) do
                --    local h = game:HttpGet(v)
                --    
                --end
                --writefile("cd/cache/"..v.Name..v.UserId)
                local id = id:split(",")
                for _,v in pairs(id) do --print(v)
                    local h = Fetch.Get("https://avatar.roblox.com/v1/outfits/"..v.."/details")
                    local j = JSOND(h)
                    data = data.."[".._.."]\n"
                    for a,b in pairs(j.assets) do
                        data = data..b.name.." "..b.id.." | "..b.assetType.name.."\n"
                    end
                end
                --print(images)
                --print(data)
                

                writefile(f,images..data:sub(1,data:len()-1))
            end
            for _,v in pairs(args) do
                if v:find("+f") then
                    if tonumber(args[2]) == nil then
                        local h = Fetch.Get("https://api.roblox.com/users/"..args[2])
                        local j = JSOND(h)
                        eh(j.Username,args[2],GetPlayer(j.Username))
                    else
                        local h = Fetch.Get("https://api.roblox.com/users/get-by-username?username="..args[2])
                        local j = JSOND(h)
                        eh(args[2],j.Id,GetPlayer(args[2]))
                    end
                end
            end
            for _,v in pairs(GetPlayer(args[2])) do
                fspawn(function()eh(v.Name,v.UserId)end)
            end
        end,
    },
    ["check"] = {
        --allies = {"rj"},
        description = "Shows you who has admin and who does not.",
        funk = function(args) --dprint("check")
            local a = {66254, 64354}
            local p = {35748, 37127}
            for _,v in pairs(GetPlayer(args[2])) do --dprint('found',v.Name)
                fspawn(function()
                    for i,aa in pairs(a) do
                        if CheckGamepass(v.UserId,aa) then
                            rconsoleprint("["..v.Name.."]: I have perm admin!","@@GREEN@@") --dprint("perm")
                            return
                        end
                    end
                    for i,aa in pairs(p) do
                        if CheckGamepass(v.UserId,aa) then
                            rconsoleprint("["..v.Name.."]: I have person's admin!","@@YELLOW@@") --dprint("person's")
                            return
                        end
                    end
                    rconsoleprint("["..v.Name.."]: I do not have any admin!","@@RED@@") --dprint("none")
                end)
            end
        end,
    },
    ["logss"] = function(args) 
        getgenv().logss = tonumber(args[2])
    end,
    ["logse"] = function(args)
        getgenv().logse = tonumber(args[2])
    end,
    ["cdfunni"] = function()
        print('a')
    end,
    ["rejoin"] = {
        allies = {"rj"},
        description = "Kicks you and puts you back in the same server.",
        funk = function()
            lplr:Kick("You have been kicked due to unexpected client behavior.")
            game:GetService("TeleportService"):Teleport(game.PlaceId, lplr)
        end,
    },
    --[[
    ["demon"] = function(args)
        rchat("time -----------------------------------------------------------------------------------------------------")
        rchat("light me ")
    end,
    --]]
---]]
    ["dcache"] = function(args)
        --local f = "<meta property=\"og:image\" content=\"https://t0.rbxcdn.com/"
        for _,v in pairs(GetPlayer(args[2])) do dprint(v) local id = tostring(tick())
            makefolder("cd/Downloads/"..tostring(v.UserId).." "..v.Name)
            --repeat wait() until 
            if v.Character:FindFirstChild("Shirt") then dprint('shirt') local s = v.Character.Shirt.ShirtTemplate:sub(33,v.Character.Shirt.ShirtTemplate:len()) dprint(s)
                local s = Fetch.Get("https://assetdelivery.roblox.com/v1/asset/?id="..s)
                --wait(1) --[[Tried to use waits() to minmalize dataloss]]
                writefile("cd/Downloads/"..tostring(v.UserId).." "..v.Name.."/"..id.." Shirt"..".png",s)
            else
                writefile("cd/Downloads/"..tostring(v.UserId).." "..v.Name.."/"..id.." Shirt"..".png","")
            end
            if v.Character:FindFirstChild("Pants") then dprint('pants') local p = v.Character.Pants.PantsTemplate:sub(33,v.Character.Pants.PantsTemplate:len()) dprint(p)
                local p = Fetch.Get("https://assetdelivery.roblox.com/v1/asset/?id="..p)
                --wait(1)
                writefile("cd/Downloads/"..tostring(v.UserId).." "..v.Name.."/"..id.." Pants"..".png",p)
            else
                writefile("cd/Downloads/"..tostring(v.UserId).." "..v.Name.."/"..id.." Pants"..".png","")
            end
        end
    end,
    ["ro"] = function(args)
        if Workspace.Terrain._Game.Workspace.Obby:FindFirstChild("Jump1") then
            for _,v in pairs(Workspace.Terrain._Game.Workspace.Obby:GetChildren()) do
                if v:FindFirstChild("TouchInterest") then
                    v.TouchInterest:Destroy()
                end
            end
        --[[else
            for _,v in pairs(cd:GetChildren()) do
                v.Parent = Workspace.Terrain._Game.Workspace.Obby
            end--]]
        end
    end,
    ["freeze"] = {
        allies = {"anticheat"},
        description = "Freezes everyone",
        toggle = true,
        funk = function(args)
            if annoy then getgenv().annoy = false return else getgenv().annoy = true
                while annoy do 
                    rchat("unskydive all all all robot.txt")
                wait()end
            end
        end,
    },
    ["antifling"] = {
        allies = {"af"},
        description = "Checks velocity and stops it if it reaches a certain range.",
        toggle = true,
        funk = function(args)
            if antifling then getgenv().antifling = false else getgenv().antifling = true end
            if antifling == true then
				rconsoleprint("Antifling/On","@@GREEN@@")
			else
				rconsoleprint("Antifling/Off","@@RED@@")
			end
            while antifling do
                local h = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart",2)
                if h then
                    if h.Velocity.X > 100 or h.Velocity.Y > 500 or h.Velocity.Z > 100 then
                        h.Velocity = Vector3.new(0,0,0)
                    end
                end
            fwait()end
        end,
    },
    ["pads"] = {
        --allies = {"l"},
        description = "Takes pads.",
        toggle = true,
        funk = function(args)
            if autopads then 
                rconsoelprint("Pads/Off","@@RED@@")
                getgenv().autopads = false
                wait(1)
                fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
                return 
            else 
                rconsoleprint("Pads/On","@@GREEN@@")
                getgenv().autopads = true 
            end
            while autopads do
                for _,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
                    if v.Name:sub(1,lplr.Name:len()) ~= lplr.Name then
                        local hit = lplr.Character:WaitForChild("Head",2)
                        if hit then
                            fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
                            for _,v in pairs(game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()) do
                                firetouchinterest(hit,v.Head,0)
                                firetouchinterest(hit,v.Head,1)
                                firetouchinterest(hit,v.Head,0)
                            end
                        else
                            rconsoleprint("[cmds.lua]: local player head does not exist? lol??","@@RED@@")
                        end
                    end
                end
            fwait()end
        end,
    },
    ["logs"] = {
        allies = {"l"},
        description = "Patched logs.",
        funk = function(args)
            rchat("logs robot.txt")
            if logsA then
                getgenv().logsA:Disable()
            end
            if lplr.PlayerGui:FindFirstChild("ScrollGui") then
                local disapear = lplr.PlayerGui.ScrollGui
                repeat disapear:Destroy()fwait() until disapear.Parent == nil
            end
            local l = lplr.PlayerGui:WaitForChild("ScrollGui",5)
            if not l then cwarn("Logs was not created?") return end
            l.TextButton.Frame.Size = UDim2.new(0,VS.X,0,VS.Y-300)
            l.TextButton.Size = UDim2.new(0,VS.X-15,0,20)
            l.TextButton.Position = UDim2.new(0,0,0,269)
            l.TextButton.BackgroundTransparency = .8

            l.TextButton.Frame.Frame.ChildAdded:connect(function(c)
                if c.Text == logslast then
                    fwait()
                    getgenv().logslast = c.Text
                    c:Destroy()
                end
                if c.Text:find("robot.txt") or c.Text:find("[CasualDegenerate]:") or c.Text:find(antilogger1) then
                    fwait()c:Destroy()
                end
                if c.Text:len() > 200 then 
                    c.Text = c.Text:sub(1,200) 
                end
            end)
            for i,connection in pairs(getconnections(l.TextButton.Frame.Frame.ChildAdded)) do
                if i==1 then getgenv().logsA = connection end
            end
        end,
    },
    ["server"] = {
        allies = {"status"},
        description = "Prints the server's FPS and ping in I/O.",
        funk = function(args)
            local last = 0
            local h = JSOND(Fetch.Get("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
            for _,server in pairs(h.data) do
                if server.id == game.JobId and last ~= server.fps then
                    last = server.fps
                    if server.fps > 50 then
                    rconsoleprint("FPS: "..server.fps,"@@GREEN@@")
                    elseif server.fps < 49 and server.fps > 30 then
                        rconsoleprint("FPS: "..server.fps,"@@LIGHT_RED@@")
                    elseif server.fps < 29 then
                        rconsoleprint("FPS: "..server.fps,"@@RED@@")
                    end
                    if server.ping < 49 then
                        rconsoleprint("Ping: "..server.ping,"@@GREEN@@")
                    elseif server.ping > 50 and server.ping < 99 then
                        rconsoleprint("Ping: "..server.ping,"@@YELLOW@@")
                    elseif server.ping > 100 and server.ping < 199 then
                        rconsoleprint("Ping: "..server.ping,"@@LIGHT_RED@@")
                    elseif server.ping > 200 then
                        rconsoleprint("Ping: "..server.ping,"@@RED@@")
                    end
                end
            end
        end,
    },
    ["shuffle"] = {
        --allies = {""},
        description = "Plays a random song.",
        funk = function(args)
            local song = songs[math.random(1,#songs)]
            rchat("music "..song)
            rconsoleprint("Playing "..gpi(song).Name.." |[cd.lua]: ^-^")
        end,
    },
    ["clear"] = {
        allies = {"clr"},
        description = "Clears I/O.",
        funk = function(args)
            rconsoleclear()
        end,
    },
    ["repeat"] = {
        allies = {"rep"},
        description = "Spams chat with <args2>(cmd) <args3>(plr) <args4>(time in seconds).",
        toggle = true,
        funk = function(args)
            if rep or args[2] == nil then getgenv().rep = false return else getgenv().rep = true end
            if tonumber(args[4]) == nil then args[4] = 0.03 end

            while rep do
                rchat(args[2].." "..args[3].." "..args[3].." "..args[3].." robot.txt")
            wait(args[4])end
        end,
    },
    ["discord"] = {
        allies = {"disc","d"},
        description = "Doxxes casual's own discord in-game chat.",
        funk = function(args)
            tchat("h @casual_degenerate#7475")
            rchat("m Check logs for my # if it's tagged.")
        end,
    },
    ["commands"] = {
        allies = {"cmds","cummands"},
        description = "List all commands in I/O.",
        funk = function(args)
            local cmd = ""
            for _,command in pairs(Commands) do
                if type(command) == "function" then
                    cmd=cmd..("[".._.."]:\n\tType: OLD\n")
                elseif type(command) == "table" then
                    local a1 = ""
                    if not command.description then
                        command.description = "NaN"
                    end
                    if not command.allies then
                        a1 = "NaN"
                    else
                        for _1,v1 in pairs(command.allies) do
                            a1 = a1..tostring(v1)..", "
                        end
                        a1 = a1:sub(1,a1:len()-2)
                    end
                    if not command.toggle then
                        command.toggle = false
                    end
                    cmd=cmd..("[".._.."]:\n\tType: NEW\n\tDescription: "..command.description.."\n\tAllies: "..a1.."\n\tToggle: "..tostring(command.toggle).."\n")
                end
            end
            rconsoleprint(cmd,"@@BLUE@@")
        end,
    },
    ["annoy"] = {
        --allies = {},
        description = "Plays an annoying audio.",
        funk = function(args)
            rchat("music "..antilogger1.."1506110848")
        end,
    },
    ["music"] = {
        funk = function(args)
            if args[2] == nil then
                for _,song in pairs(songs) do
                    local asset = gpi(song)
                    rconsoleprint("[".._.."]: "..asset.Name,"@@MAGENTA@@")
                end
                local choice = rconsoleinput()
                if choice == "0" then return end
                rchat("music "..tostring(songs[tonumber(choice)]))
            else
                rchat("music "..tostring(songs[tonumber(args[2])]))
            end
        end,
    },
    ["giga"] = {
        --allies = {""},
        description = "Giga's script :D Thanks!",
        funk = function(args)
            if giga1 then
                getgenv().giga1 = false
            end
            if giga2 then
                getgenv().giga2 = false
            end
            if giga3 then
                getgenv().giga3 = false
            end
            if giga4 then
                getgenv().giga4 = false
            end
            if giga5 then
                getgenv().giga5 = false
            end
            if giga6 then
                getgenv().giga6 = false
                rconsoleprint("Giga Script/OFF","@@RED@@")
                return
            end
            rconsoleprint("Giga Script/ON","@@GREEN@@")
            local respawnpos
            local cameracframe
            lplr.CharacterAdded:connect(function(a)
                a:WaitForChild("Humanoid").Died:connect(function()
                    if lplr.Character:FindFirstChild("HumanoidRootPart") then
                        lplr.Character.HumanoidRootPart.Anchored = true
                        respawnpos = lplr.Character.HumanoidRootPart.CFrame
                    end
                    cameracframe = camera.CFrame
                    rchat("respawn me")
                end)
                for i,connection in pairs(getconnections(a:WaitForChild("Humanoid").Died)) do
                    if i==1 then getgenv().giga1 = connection end
                end
            end)
            for i,connection in pairs(getconnections(lplr.CharacterAdded)) do
                if i==1 then getgenv().giga2 = connection end
            end
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                v.Chatted:connect(function(msg)
                    if msg:lower():find("respawn") or msg:lower():find("char") or msg:lower():find("reload") or msg:lower():find("reset") or msg:lower():find("tp") or msg:lower():find("teleport") then
                        respawnpos = lplr.Character.HumanoidRootPart.CFrame
                        cameracframe = camera.CFrame
                    end
                end)
                for i,connection in pairs(getconnections(v.Chatted)) do
                    if i==1 then getgenv().giga3 = connection end
                end
            end
            game:GetService("Players").PlayerAdded:connect(function(v)
                v.Chatted:connect(function(msg)
                    if msg:lower():find("respawn") or msg:lower():find("char") or msg:lower():find("reload") or msg:lower():find("reset") or msg:lower():find("tp") or msg:lower():find("teleport") then
                        respawnpos = lplr.Character.HumanoidRootPart.CFrame
                        cameracframe = camera.CFrame
                    end
                end)
                for i,connection in pairs(getconnections(v.Chatted)) do
                    if i==1 then getgenv().giga4 = connection end
                end
            end)
            for i,connection in pairs(getconnections(game:GetService("Players").PlayerAdded)) do
                if i==1 then getgenv().giga5 = connection end
            end
            lplr.CharacterAdded:connect(function(c)
                if respawnpos ~= nil then
                    c:WaitForChild("HumanoidRootPart").CFrame = respawnpos
                end
                if cameracframe ~= nil then 
                    fwait()
                    camera.CFrame = cameracframe
                end
            end)
            for i,connection in pairs(getconnections(lplr.CharacterAdded)) do
                if i==1 then getgenv().giga6 = connection end
            end
            rchat("reset me")
        end
    },
    ["servers"] = {
        funk = function(args)
            local h
            local asdf1
            local asdf2
            pcall(function()
                local r = Fetch.Get("https://games.roblox.com/v1/games/"..tostring(game.PlaceId).."/servers/Public?sortOrder=Asc&limit=100")
                h = JSOND(r)
            end)
            for _,server in pairs(h.data) do
                if args[2] == server.id then 
                    if server.fps > 50 then
                        rconsoleprint("FPS: "..server.fps,"@@GREEN@@")
                    elseif server.fps < 49 and server.fps > 30 then
                        rconsoleprint("FPS: "..server.fps,"@@LIGHT_RED@@")
                    elseif server.fps < 29 then
                        rconsoleprint("FPS: "..server.fps,"@@RED@@")
                    end
                    if server.ping < 49 then
                        rconsoleprint("Ping: "..server.ping,"@@GREEN@@")
                    elseif server.ping > 50 and server.ping < 99 then
                        rconsoleprint("Ping: "..server.ping,"@@YELLOW@@")
                    elseif server.ping > 100 and server.ping < 199 then
                        rconsoleprint("Ping: "..server.ping,"@@LIGHT_RED@@")
                    elseif server.ping > 200 then
                        rconsoleprint("Ping: "..server.ping,"@@RED@@")
                    end
                    for _1,player in pairs(server.playerIds) do
                        if settings.servers.namePlayers then
                            pcall(function()
                                asdf1 = Fetch.Get("https://api.roblox.com/users/"..tostring(player))
                                asdf2 = JSOND(asdf1)
                            end)
                            if lplr:IsFriendsWith(player) and settings.servers.colorFriends then
                                rconsoleprint(asdf2.Username.."["..player.."]","@@MAGENTA@@")
                            else
                                rconsoleprint(asdf2.Username.."["..player.."]","@@LIGHT_BLUE@@")
                            end
                        elseif settings.servers.nameOnlyFriends and lplr:IsFriendsWith(player) then
                            pcall(function()
                                asdf1 = Fetch.Get("https://api.roblox.com/users/"..tostring(player))
                                asdf2 = JSOND(asdf1)
                            end)
                            rconsoleprint(asdf2.Username.."["..player.."]","@@MAGENTA@@")
                        else
                            if lplr:IsFriendsWith(player) and settings.servers.colorFriends then
                                rconsoleprint("["..player.."]","@@MAGENTA@@")
                            else
                                rconsoleprint("["..player.."]","@@LIGHT_BLUE@@")
                            end
                        end
                    end
                    break
                else
                    if server.id == game.JobId then
                        rconsoleprint("Server["..game.JobId.."]","@@LIGHT_GREEN@@")
                    else
                        rconsoleprint("Server["..server.id.."]")
                    end
                    if server.fps then
                        if server.fps > 50 then
                            rconsoleprint("FPS: "..server.fps,"@@GREEN@@")
                        elseif server.fps < 49 and server.fps > 30 then
                            rconsoleprint("FPS: "..server.fps,"@@LIGHT_RED@@")
                        elseif server.fps < 29 then
                            rconsoleprint("FPS: "..server.fps,"@@RED@@")
                        end
                    else
                        rconsoleprint("FPS: Undefined?","@@MAGENTA@@")
                    end
                    if server.ping then
                        if server.ping < 49 then
                            rconsoleprint("Ping: "..server.ping,"@@GREEN@@")
                        elseif server.ping > 50 and server.ping < 99 then
                            rconsoleprint("Ping: "..server.ping,"@@YELLOW@@")
                        elseif server.ping > 100 and server.ping < 199 then
                            rconsoleprint("Ping: "..server.ping,"@@LIGHT_RED@@")
                        elseif server.ping > 200 then
                            rconsoleprint("Ping: "..server.ping,"@@RED@@")
                        end
                    else
                        rconsoleprint("Ping: Undefined?","@@MAGENTA@@")
                    end
                    for _1,player in pairs(server.playerIds) do
                        if settings.servers.namePlayers then
                            pcall(function()
                                asdf1 = Fetch.Get("https://api.roblox.com/users/"..tostring(player))
                                asdf2 = JSOND(asdf1)
                            end)
                            if lplr:IsFriendsWith(player) and settings.servers.colorFriends then
                                rconsoleprint(asdf2.Username.."["..player.."]","@@MAGENTA@@")
                            else
                                rconsoleprint(asdf2.Username.."["..player.."]","@@LIGHT_BLUE@@")
                            end
                        elseif settings.servers.nameOnlyFriends and lplr:IsFriendsWith(player) then
                            pcall(function()
                                asdf1 = Fetch.Get("https://api.roblox.com/users/"..tostring(player))
                                asdf2 = JSOND(asdf1)
                            end)
                            rconsoleprint(asdf2.Username.."["..player.."]","@@MAGENTA@@")
                        else
                            if lplr:IsFriendsWith(player) and settings.servers.colorFriends then
                                rconsoleprint("["..player.."]","@@MAGENTA@@")
                            else
                                rconsoleprint("["..player.."]","@@LIGHT_BLUE@@")
                            end
                        end
                    end
                end
            end
        end,
    },
    ["serverhop"] = {
        allies = {"sh"},
        toggle = true, -- so it goes down before i rejoin.
        funk = function(args)
            if args[2] == nil then
                rconsoleprint("[cd.lua]: Hhhhh! You have to add a server GUID you idiot! >_<")
            else
                rchat("h "..args[2])
                wait(0.3)
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, args[2])
            end
        end
    },
    ["kill"] = {
        funk = function(args)
            rchat("sword me")
            local s = lplr.Backpack:WaitForChild("LinkedSword",5)
            if s == nil then
                rconsoleprint("ERROR: Server unresponcive??","@@RED@@")
                return
            end
            s.Parent = lplr.Character
            for _1,p1 in pairs(GetPlayer(args[2])) do
                fspawn(function()
                    for i=1,40 do wait()
                        if not p1.Character:FindFirstChild("Head") then
                            rconsoleprint("WARNING: Player("..p1.Name..") does not have head?","@@YELLOW@@")
                            return
                        end
                        if not p1.Character:FindFirstChild("Humanoid") then
                            rconsoleprint("WARNING: Player("..p1.Name..") does not have humanoid?","@@YELLOW@@")
                            return
                        end
                        firetouchinterest(p1.Character.Head,s.Handle,1)
                        wait()firetouchinterest(p1.Character.Head,s.Handle,0)
                        if p1.Character.Humanoid.Health == 0 then
                            break
                        end
                    end
                end)
            end
        end,
    },
}

fspawn(function()
    while true do
        local args = rconsoleinput():lower():split(" ")
        if args[1] == "exit" or args[1] == "stop" or args[1] == "restart" or args[1] == "reboot" then break end
        for _,v in pairs(Commands) do
            if type(v) == "function" then
                if args[1] == _ then
                    v(args)
                end
            elseif type(v) == "table" then
                if v.allies then
                    for _1,v1 in pairs(v.allies) do 
                        if args[1] == v1 then 
                            if v.toggle then
                                fspawn(function()v.funk(args)end)
                            else
                                v.funk(args)
                            end
                        end
                    end
                end
                if args[1] == _ then
                    if v.toggle then
                        fspawn(function()v.funk(args)end)
                    else
                        v.funk(args)
                    end
                end
            elseif type(v) == "nil" then
                rconsoleprint("nil","@@WHITE@@")
            else
                rconsoleprint("CRITICAL FLAW! THE SAID MESSAGE EXIST IN COMMANDS BUT DOES NOT FOLLOW RULES OF BEING A FUNCTION OR TABLE? NEW UPDATE WAS INCOMPATIBLE??\n\tTYPE: "..type(v).."\n\tINDEX: "..pe_,"@@RED@@")
            end
            --[[Old method I was working on...
            if args[1] == _ then
                --lchat("[cd/cmds.lua]: Running "..tostring(_),Color3.new(0,0,0))
                fspawn(function()
                    if type(v) == "function" then
                        v(args)
                    elseif type(v) == "table"
                        if v.allies then
                            for _1,v1 in pairs(v.allies) do
                                if args[1] == v1 v.funk(args)
                            end
                        else
                            v.funk(args)
                        end
                    else
                        rconsoleprint("CRITICAL FLAW! THE SAID MESSAGE EXIST IN COMMANDS BUT DOES NOT FOLLOW RULES OF BEING A FUNCTION OR TABLE? NEW UPDATE WAS INCOMPATIBLE??","@@RED@@")
                    end
                end)
            end
            --]]
        end
    end
    loadstring(readfile("cd/cmds.lua"))()
end)


lplr.PlayerGui.ChildAdded:connect(function(c)
    if c.Name == "MessageGUI" or c.Name == "EFFECTGUIBLIND" then
        fwait()c.Parent = nil
    end
end)
for i,connection in pairs(getconnections(lplr.PlayerGui.ChildAdded)) do
    if i==1 then getgenv().lplrPG = connection end
end

lplr.CharacterAdded:connect(function(c) --dprint("Spawn")
    if charnil then dprint("after nil")
        c.ChildAdded:connect(function(p)
            if c.Parent ~= game:GetService("Workspace") then return end
            fwait()p.Parent = nil
        end)
        for i,connection in pairs(getconnections(c.ChildAdded)) do
            if i==1 then getgenv().selfNil = connection end
        end
    end
    if namenil then dprint("removed")
        c.ChildAdded:connect(function(p)
            if p:IsA("Model") then
                fwait()p.Parent = nil
            end
        end)
        for i,connection in pairs(getconnections(c.ChildAdded)) do
            if i==1 then getgenv().nameNil = connection end
        end
    end
end)
for i,connection in pairs(getconnections(lplr.CharacterAdded)) do
    if i==1 then getgenv().lplrCAdded = connection end
end

gf.Folder.ChildAdded:connect(function(c)
    if c.Name:sub(-4) == "jail" or c:IsA("Message") then
        fwait()c.Parent = nil
    end
end)
for i,connection in pairs(getconnections(gf.Folder.ChildAdded)) do
    if i==1 then getgenv().gffCAdded = connection end
end

game:GetService("Lighting").ChildAdded:connect(function(c)
    if localunpunish then
        if c == lplr.Character then 
            fwait()c.Parent = game:GetService("Workspace")
        end
    end
end)
for i,connection in pairs(getconnections(game:GetService("Lighting").ChildAdded)) do
    if i==1 then getgenv().lunpunish = connection end
end

fspawn(function()
    if game:GetService("Lighting"):FindFirstChild(lplr.Name) then
        lplr.Character.Parent = game:GetService("Workspace")
    end
end)

fspawn(function()
    for _,v in pairs(gf.Folder:GetChildren()) do
        if v.Name:sub(-4) == "jail" then
            v.Parent = nil
        end
    end
end)

fspawn(function()
    local s = ""
    local commands = {"thaw";"normaljump";"visible";"unfire";"unsmoke";"unsparkle";"heal";"god";"ungod";"grav";"setgrav";"nograv";"name";"package";"unpackage";"guifix";"lock";"unlock";"unjail";"rank";"hat";"gear";"tshirt";"pants";"shirt";"removeclones";"removejails";"cd/586141923048161291"}
    while active do wait()
        while logsscramble do fwait()
            for i=1,math.random(logss,logse) do
                s = s..string.char(math.random(1,255))
            end
            rchat(commands[math.random(1,#commands)].." "..s)
            s=""
            if not active then break end
            wait(math.random(30,100)/100)
            if not active then break end
        end
    end
end)

fspawn(function()
    while fix.speed do fwait()
        if lplr.Character.Humanoid.WalkSpeed ~= 16 then lplr.Character.Humanoid.WalkSpeed = 16 end
    end
end)
--[[Depricated/Not needed.
fspawn(function()
    while active do 
        getgenv().cs = -5
    wait(7.77)end
end)
--]]
fspawn(function()
    if not kek then 
        rchat("particle me c")
    end
end)

fspawn(function()
    lplr.OnTeleport:Connect(function(State)
        if State == Enum.TeleportState.InProgress then
            syn.queue_on_teleport("loadstring(readfile(\"cd/cmds.lua\"))()")
        elseif State == Enum.TeleportState.Failed then
            rchat("h [cmds.lua]: Serverhop failed!")
        end
    end)
    for i,connection in pairs(getconnections(lplr.OnTeleport)) do
        if i==1 then getgenv().OT = connection end
    end
end)
