repeat wait() until game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents")
repeat wait() until game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")
loadstring(game:HttpGet("https://raw.githubusercontent.com/casualdegenerate/cd/master/Better%20Proto%20API"))()
if not rconsoleprint then
    lchat("Run it on SynX you idiot. Only works on SynX.",Color3.new(1,0,0))
    rchat("music 5648499584")
    return
end
local JSOND = function(a)return game:GetService("HttpService"):JSONDecode(a)end
local JSONE = function(a)return game:GetService("HttpService"):JSONEncode(a)end
JSONB=function(jsn) --Thank you [NekO]
    local o=''local tc=0 local isSt=false local nc=false
    if type(jsn)~='string'then error('\8[jsonB]:Give Json As String.')else
      for i=1,jsn:len()do
        t=function()return('\t'):rep(tc)end
        local tchr=jsn:sub(i,i)if tchr=='"'or tchr=="'"then isSt=not isSt end
        if isSt==false then
          if tchr=='{'or tchr=='['then
            tc=tc+1 tchr=tchr..'\n'..t()
          elseif jsn:sub(i,i+1)=='},'or jsn:sub(i,i+1)=='],'then
            tc=tc-1 nc=true tchr='\n'..t()..jsn:sub(i,i+1)..'\n'..t()
          elseif jsn:sub(i,i+1)~='},'and jsn:sub(i,i+1)~='],'then
            if jsn:sub(i,i)=='}'or jsn:sub(i,i)==']'then
              tc=tc-1 tchr='\n'..t()..tchr..'\n'..t()
            end
          end
          if tchr==','then
            if jsn:sub(i-1,i)~='],'and jsn:sub(i-1,i)~='},'then
              if nc==true and jsn:sub(i-1,i+1)~='","' then
                nc=false
              else tchr=tchr..'\n'..t()end
            end
          end
          if nc==true and tchr==','then else o=o..tchr end
        else o=o..tchr
        end
      end
    end
    return o
  end
local rconsoleprint = function(input,color)
    fspawn(function()
        if color then
            fspawn(function()rconsoleprint(color)end)
        else
            fspawn(function()rconsoleprint("@@WHITE@@")end)
        end
        fspawn(function()rconsoleprint(input.."\n")end)
        fwait()
        fspawn(function()rconsoleprint("@@WHITE@@")end)
    end)
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
[[{
	"experimentalConsole":false,
	"servers":{
		"colorFriends":true,
		"nameOnlyFriends":true,
		"namePlayers":true
	},
    "antiloud":true,"autopdate":false,
    "antiPunishTime":3,
    "logsYield":5,
    "optimizeFPS":true
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
settings = JSOND(readfile("cd/Config/cmds.settings"))

if settings.antiloud == nil then
    settings.antiloud = true
    writefile("cd/Config/cmds.settings",JSONB(JSONE(settings)))
end
if settings.experimentalConsole == nil then
    settings.experimentalConsole = false
    writefile("cd/Config/cmds.settings",JSONB(JSONE(settings)))
end
if settings.antiPunishTime == nil then
    settings.antiPunishTime = 1
    writefile("cd/Config/cmds.settings",JSONB(JSONE(settings)))
end
if settings.logsYield == nil then
    settings.logsYield = 5 
    writefile("cd/Config/cmds.settings",JSONB(JSONE(settings)))
end
if settings.optimizeFPS == nil then
    settings.optimizeFPS = true
    writefile("cd/Config/cmds.settings",JSONB(JSONE(settings)))
end




local s = [[If you have anything to ask, just message CasualDegenerate on roblox or DM me on discord @casual_degenerate@7475 (586141923048161291)
Everything I want to tell you is here.
If the script does not work sometimes, I'm prob updating it for the 100th time in a day and the update had a bug, but if you can kinda contact me and shit in my dms about it thank you so much.

Listed commands documentation! (please praise me for making this...Also, anything with NaN it's not writen. Just wrote it down so you can see the list of commands, but I might add a description to it here.)
snipe: (snipe <plr>) Will jail the player and explode them(could lag player if they render the explosion)
regen: (regen) Will regen the admin pads IF there is a regen button in the first place, else it will just say "WARNING: Regen does not exist? Removed by someone?" in the console.
reset: (reset) You say "reset me" command. I just made it cause I don't like tabbing whenever I want to reset.
permpunish: (permpunish <plr>) This will punish the player when they are placed back into the game's workspace(where you see them).
unpermpunish: (unpermpunish <plr>) This will remove the player from the list of people you perm punished.
klown: (klown <plr>) Will turn someone into a clown.
visualize: (NaN)
unvisualize: (NaN)
con: (NaN)
cn: (NaN)
uncn: (NaN)
?: (?) Will tell you the song the person played in the game with "music 12345678" and tell you the name, it would ask you if you want to copy it to your clipboard.
mimic: (NaN)
cd: (NaN)
outfit: (NaN)
nn: (NaN)
unnn: (NaN)
lunp: (NaN)
unlunp: (NaN)
rainbow: (rainbow) Will make the map turn into a rainbow.
copyplayerlist: (copyplayerlist) Will copy the playerlist to your clipboard.
logsscramble: (NaN)
cdcommands: (NaN)
bypass: (NaN)
cd-a: (NaN)
chat: (NaN)
fix: (NaN)
cache: (NaN)
check: (NaN)
logss: (NaN)
logse: (NaN)
cdfunni: (NaN)
rejoin: (rejoin) Will make you rejoin the game.
dcache: (NaN)]]
if not isfile("cd/README.txt") then
    writefile("cd/README.txt",s)
elseif readfile("cd/README.txt") ~= s then
    rconsoleprint("[cd/cmds.lua]: The cd/README.txt has been updated! Check it out if you want!","@@GREEN@@")
    writefile("cd/README.txt",s)
end

if not isfile("cd/cmds.lua") then
    writefile("cd/cmds.lua",game:HttpGet("https://raw.githubusercontent.com/casualdegenerate/godlycode/main/cmds.lua"))
	fspawn(function()loadstring(readfile("cd/cmds.lua"))()end)
	return
end

if readfile("cd/cmds.lua") ~= game:HttpGet("https://raw.githubusercontent.com/casualdegenerate/godlycode/main/cmds.lua") and settings.autoupdate then
    writefile("cd/cmds.lua",game:HttpGet("https://raw.githubusercontent.com/casualdegenerate/godlycode/main/cmds.lua"))
	fspawn(function()rconsoleprint("New Update!")loadstring(readfile("cd/cmds.lua"))()end)
	return
end

lchat("2.5.5")


local lplr = game:GetService("Players").LocalPlayer or game:GetService("Players"):GetPropertyChangedSignal("LocalPlayer"):wait()
rconsolename(".\\cd\\cmds.lua")

local lplr = game:GetService("Players").LocalPlayer
if not kek then --Debounce for reboots.
    tchat("Loaded .\\cd\\cmds.lua") 
end
local cd = Instance.new("Folder") cd.Name = "cd" cd.Parent = Lighting

debug = true
function dprint(t)if debug --[[and lplr.UserId == 1090451412--]] then print(t)end end
local Fetch = {}
Fetch.Get = function(a)
    local succ = ""
    local suc,err = pcall(function()
        succ = game:HttpGet(a)
    end) 
    if err then 
        return("err["..err.."]") 
    else 
        return(succ)
    end 
end
local cwarn = function(input)
    lchat("cd/warn/: "..input)
end
local cerror = function(input)
    rchat("cd/error/: "..input)
end

function GetPlayer(a)
    local b={}
    local c=a:lower()
    if c=="all"then 
        for d,e in pairs(game.Players:GetPlayers())do 
            table.insert(b,e)
        end 
    elseif c=="others"then 
        for d,e in pairs(game.Players:GetPlayers())do 
            if e.Name~=game.Players.LocalPlayer.Name then 
                table.insert(b,e)
            end 
        end 
    elseif c=="me"then 
        for d,e in pairs(game.Players:GetPlayers())do 
            if e.Name==game.Players.LocalPlayer.Name then 
                table.insert(b,e)
            end 
        end 
    else 
        for d,e in pairs(game.Players:GetPlayers())do 
            if e.Name:lower():sub(1,#a)==a:lower()then 
                table.insert(b,e)
            end 
        end 
    end
    if unpack(b) == nil then --This is to fix any useless uses of the function so if it does spam I can return those parts in the script it does if I'm a dummy.
        rconsoleprint("No players in-game goes by that name. If you are spelling their name right and this still pops up, DM @casual_degenerate#7475 586141923048161291 your issue and they will help.","@@RED@@") 
    end 
    return b 
end


local CheckGamepass=function(userid,gamepass)
	local g = game:HttpGet("https://inventory.roblox.com/v1/users/"..tostring(userid).."/items/GamePass/"..tostring(gamepass)):sub(65)
    if g ~= "" then 
        return true
    else 
        return false
    end
end

local hasAsset = function(userId,assetId)
    local h = Fetch.Get("https://api.roblox.com/ownership/hasasset?userId="..tostring(userId).."&assetId="..tostring(assetId))
    return h
end




--[[
local rchat = function(text)
    if 
end
--]]


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
    if tonumber(id) == nil then
        return 
    end
    return game:GetService("MarketplaceService"):GetProductInfo(tonumber(id))
end



local antilogger1 = "000000000000"

for i=1,3 do
    antilogger1 = antilogger1..antilogger1..antilogger1
end

local gf=game:GetService("Workspace").Terrain._Game
local camera = game:GetService("Workspace").Camera
--local VS = camera.ViewportSize --This is used to make the patched logs the 'right size' when using it. 
--That was removed because it grabbed the PREVIOUS size, when you ran the script. 



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
if unguly then
    getgenv().unguly = false
end
if antipunish then
    getgenv().antipunish = false
end
if selfA then
    getgenv().selfA:Disable()
end
if camMod then
    getgenv().camMod:Disable()
end


wait(1)
if not kek then
    rconsoleprint("Checking player status. Please wait for it to check...","@@LIGHT_GRAY@@")
    fspawn(function()
        for i,aa in pairs({66254, 64354}) do
            if CheckGamepass(lplr.UserId,aa) then
                rconsoleprint("You're good!","@@GREEN@@")
                return
            end
        end
        for i,aa in pairs({35748, 37127}) do
            if CheckGamepass(lplr.UserId,aa) then
                rconsoleprint("This script does not support person's admin. I'd suggust you to use 'pads' command to force yourself admin when you can.","@@RED@@")
                return
            end
        end
        rconsoleprint("This script does not support non perms. I'd suggust you to use 'pads' command to force yourself admin when you can.","@@RED@@")
    end)
end
rconsoleprint("Loaded!\nType \"commands\" to get a list of commands ✨✨✨","@@GREEN@@")




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
getgenv().blacklistm = {}
getgenv().hentai = {5707097328}
getgenv().songs = readfile("cd/Config/Music.txt"):split("\n")
getgenv().songsn = {}
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
getgenv().locked=false


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
        toggle = true,
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
            local song = gf.Folder:WaitForChild("Sound",2)
            if song == nil then
                rconsoleprint("[cd.lua]: Aaaaaah! There is no song! ;-;")
                return
            end
            song = song.SoundId:match("%d+")
            local sung = gpi(song)
            if sung == nil then
                rconsoleprint("Error? no name?","@@RED@@")
                return
            end
            sung = sung.Name
            rconsoleprint("This song is "..sung.." | [cd.lua]: Say Y if you want it on your clipboard(say anything else if you don't...) *v*")
            local input = rconsoleinput()
            if input:sub(1,1):lower() == "y" then
                setclipboard(tostring(song))
            elseif input:sub(1,1):lower() == "p" then
                setclipboard(tostring(song))
                tchat("[0000"..song:gsub("\n",""):gsub("\r","").."]: "..sung:gsub("\n",""):gsub("\r",""))
            end
        end,
    },
    ["mimic"] = {
        description = "<args2>(plr) <extra>(+e) Will make you look exactly like the person by removing your hats and only having theirs.",
        funk = function(args)
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
            for _,u in pairs(args) do 
                if u:find("+e") then 
                    rchat("unshirt me")
                    rchat("unpants me")
                    rchat("unhat me")
                end
                if u:find("+f") then
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
    },
    ["cd"] = {
        description = "You can create a cd in cd/Lighting/name.lua simply just follow the example.lua.... if any....",
        funk = function(args)
            if isfile("cd/Lighting/"..args[2]..".lua") then
                loadstring(readfile("cd/Lighting/"..args[2]..".lua"))()
            else
                rconsoleprint("[cmds.lua]: The file does not exist dummy! >:V","@@RED@@")
            end
        end,
    },
    ["outfit"] = {
        description = "Set's cd/Outfits/<args[2]>.cd as your outfit.",
        funk = function(args)
            local input = tostring(args[2])
            local i = 0
            reeeeeeee=false
            for _,v in pairs(args) do
                if v:find("+random") then reeeeeeee=true
                    local c = listfiles("cd/Outfits")[math.random(1,#listfiles("cd/Outfits"))]
                    local c = c:gsub("\\","/")
                    Outfit=loadstring(readfile(c))()
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
                    rchat("unhat me robot.txt")
                    rchat("unshirt me robot.txt")
                    rchat("unpants me robot.txt")
                end
            end
            for _,v in pairs(lplr.Character:GetDescendants()) do
                if v.Name == "face" and v:IsA("Decal") then
                    v:Destroy()
                end
            end
            for _,v in pairs(Outfit.Hat) do
                rchat("hat me "..antilogger1..v)
            end
            rchat("shirt me "..antilogger1..Outfit.Shirt)
            rchat("pants me "..antilogger1..Outfit.Pants)
            rchat("face me "..antilogger1..Outfit.Face)
            if Outfit.Creator then rchat("h "..Outfit.Creator) end --if you wanted to give credit...
            for _,v in pairs(lplr.Character:GetDescendants()) do
                if v.Name == "face" and v:IsA("Decal") then
                    i=i+1
                end
            end
            fspawn(function()
                wait(2)
                for _,v in pairs(lplr.Character.Head:GetChildren()) do
                    if v.Name == "face" and _ ~= #lplr.Character.Head:GetChildren()-1 and i>1 then
                        v:Destroy()
                    end
                end
            end)
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
    ["copyplayerlist"] = {
        allies = {"cpl"},
        description = "Copies the playerlist in your clipboard!(useful if you don't know how to type a player name and you want to copy their username",
        funk = function()
            local output=""
            for _,v in pairs(GetPlayer("all")) do
                output = output..v.Name..";"
            end
            setclipboard(output)
        end,
    },
    ["logsscramble"] = function()
        if logsscramble then 
            logsscramble=false 
        else 
            logsscramble=true 
        end
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
    ["chat"] = {
        allies = {"c"},
        description = "Will talk over people's screen's(w/ filter ofc)",
        funk = function(args)
            local s = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            local msg = ""
            local nw = "\n "
            for _,v in pairs(args) do
                if _ ~= 1 then
                    msg = msg..v.." "
                end
            end
            for i=1,4 do
                rchat("h "..s..nw:rep(i)..msg)
            end
        end,
    },
    ["fix"] = {
        allies = {"fixed"},
        description = "<args2>(speed) <args3>(number) will make you at a fixed speed.",
        funk = function(args)
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
    },
    ---[[
    ["cache"] = {
        --allies = {"rj"},
        description = "Will download the <args2>(plr)'s entire outfits list and check if they have an email on that account(Just because it says they are unverified it is not 100% but if it's verified it's 100%).",
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
            --lplr:Kick("You have been kicked due to unexpected client behavior.") --[[Felt like leaving this out.]]
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
    ["dcache"] = {
        description = "NOTE THIS WON'T ALWAYS WORK AND WILL SOMETIMES FAIL! Will download the <args2>(plr)'s outfit they are CURRENTLY wearing.",
        funk = function(args)
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
    },
    ["ro"] = {
        funk = function(args)
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
    },
    ["freeze"] = {
        allies = {"anticheat"},
        description = "Freezes everyone or args<2> if any args<2>.",
        toggle = true,
        funk = function(args)
            if annoy then getgenv().annoy = false return else getgenv().annoy = true
                if args[2] then
                    while annoy do
                        if unpack(GetPlayer(args[2])) == nil then 
                            rconsoleprint("[cmds.lua]: HACKER DOWN! :sunglasses:","@@MAGENTA@@")
                            getgenv().annoy = false 
                            break 
                        end
                        for i1,v1 in pairs(GetPlayer(args[2])) do 
                            rchat("unskydive "..v1.name.." "..v1.Name.." "..v1.Name.." robot.txt")
                        end 
                    wait(.09)end
                else
                    tchat("[SPELL]: Sakuya's World!")
                    rchat("music "..antilogger1.."743521618")
                    wait(3)
                    rchat("music "..antilogger1.."743521691")
                    wait(1.38)
                    fspawn(function()
                        rchat("music "..antilogger1.."743521450")
                        wait(3)
                        rchat("music "..antilogger1.."4940109913")
                    end)
                    while annoy do 
                        rchat("unskydive others others others robot.txt")
                    wait(.09)end
                    rchat("stopmusic")
                end
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
				rconsoleprint("AntiFling/ON","@@GREEN@@")
			else
				rconsoleprint("AntiFling/OFF","@@RED@@")
			end
            while antifling do
                fspawn(function()
                    local h = lplr.Character:WaitForChild("HumanoidRootPart",2)
                    if h then
                        if h.Velocity.X > 100 or h.Velocity.Y > 100 or h.Velocity.Z > 100 then
                            h.Anchored = true
                            h.Velocity = Vector3.new(0,0,0)
                            wait(.1)
                            h.Anchored = false
                        end
                        if h.Velocity.X < -100 or h.Velocity.Y < -100 or h.Velocity.Z < -100 then
                            h.Anchored = true
                            h.Velocity = Vector3.new(0,0,0)
                            wait(.1)
                            h.Anchored = false
                        end
                    end
                end)
                fspawn(function()
                    local h = lplr.Character:WaitForChild("Humanoid",2)
                    if h then
                        if h.Sit == true then
                            h.Sit = false
                        end
                        if h.PlatformStand == true then
                            h.PlatformStand = false
                        end
                    end
                end)
            fwait()end
        end,
    },
    ["pads"] = {
        --allies = {"l"},
        description = "Takes pads.",
        toggle = true,
        funk = function(args)
            if autopads then 
                rconsoleprint("Pads/OFF","@@RED@@")
                getgenv().autopads = false
                wait(1)
                fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector)
                return 
            else 
                rconsoleprint("Pads/ON","@@GREEN@@")
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
            if logsA then
                getgenv().logsA:Disable()
            end
            if lplr.PlayerGui:FindFirstChild("ScrollGui") then
                local disapear = lplr.PlayerGui.ScrollGui
                repeat disapear:Destroy()fwait() until disapear.Parent == nil
            end
            rchat("logs robot.txt")
            local l = lplr.PlayerGui:WaitForChild("ScrollGui",settings.logsYield)
            if not l then 
                rconsoleprint("Logs was not created?","@@YELLOW@@") 
                return 
            end
            l.TextButton.Frame.Size = UDim2.new(0,camera.ViewportSize.X,0,camera.ViewportSize.Y-300)
            l.TextButton.Size = UDim2.new(0,camera.ViewportSize.X-15,0,20)
            l.TextButton.Position = UDim2.new(0,0,0,269)
            l.TextButton.BackgroundTransparency = .8

            l.TextButton.Frame.Frame.ChildAdded:connect(function(c)
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
            rchat("music "..antilogger1..song)
            --if unpack(songsn) == nil then
                rconsoleprint("[cd.lua]: Enjoy! ^-^ Playing "..gpi(song).Name)
            --else
            --    rconsoleprint("[cmds.lua]: Enjoy! ^-^ Playing "..songsn[])
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
            rchat("h @casual_degenerate")
            rchat("h #7475")
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
            if args[2] == nil or args[2] == "" then
                if unpack(songsn) == nil then
                    for _,song in pairs(songs) do
                        local asset = gpi(song)
                        songsn[_] = {}
                        songsn[_].Id = song
                        songsn[_].Name = asset.Name
                        rconsoleprint("[".._.."]: "..tostring(songsn[_].Name),"@@MAGENTA@@")
                    end
                    local choice = rconsoleinput()
                    if choice == "0" or choice == "" then return end
                    rchat("music "..antilogger1..tostring(songs[tonumber(choice)]))
                else
                    for _,song in pairs(songsn) do
                        rconsoleprint("[".._.."]: "..tostring(songsn[_].Name),"@@MAGENTA@@")
                    end
                    local choice = rconsoleinput()
                    if choice == "0" or choice == "" then return end
                    rchat("music "..antilogger1..tostring(songsn[tonumber(choice)].Id))
                end
            elseif unpack(songsn) ~= nil then
                rchat("music "..antilogger1..tostring(songsn[tonumber(args[2])].Id))
            else
                rchat("music "..antilogger1..tostring(songs[tonumber(args[2])]))
            end
        end,
    },
    ["giga"] = {
        --allies = {""},
        description = "Giga's script :D Thanks!",
        funk = function(args)
            if giga1 then
                getgenv().giga1:Disable()
            end
            if giga2 then
                getgenv().giga2:Disable()
            end
            if giga3 then
                getgenv().giga3:Disable()
            end
            if giga4 then
                getgenv().giga4:Disable()
            end
            if giga5 then
                getgenv().giga5:Disable()
            end
            if giga6 then
                getgenv().giga6:Disable()
                getgenv().giga6 = false
                rconsoleprint("Giga Script/OFF","@@RED@@")
                return
            end
            rconsoleprint("Giga Script/ON","@@GREEN@@")
            local respawnpos
            lplr.CharacterAdded:connect(function(a)
                a:WaitForChild("Humanoid").Died:connect(function()
                    if lplr.Character:FindFirstChild("HumanoidRootPart") then
                        lplr.Character.HumanoidRootPart.Anchored = true
                        respawnpos = lplr.Character.HumanoidRootPart.CFrame
                    end
                    rchat("respawn me robot.txt")
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
                        respawnpos = lplr.Character:WaitForChild("HumanoidRootPart").CFrame
                    end
                end)
                for i,connection in pairs(getconnections(v.Chatted)) do
                    if i==1 then getgenv().giga3 = connection end
                end
            end
            game:GetService("Players").PlayerAdded:connect(function(v)
                v.Chatted:connect(function(msg)
                    if msg:lower():find("respawn") or msg:lower():find("char") or msg:lower():find("reload") or msg:lower():find("reset") or msg:lower():find("tp") or msg:lower():find("teleport") then
                        h = lplr.Character:FindFirstChild("HumanoidRootPart")
                        if h then
                            respawnpos = h.CFrame
                        else
                            respawnpos = CFrame.new(0,4,0)
                        end
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
            end)
            for i,connection in pairs(getconnections(lplr.CharacterAdded)) do
                if i==1 then getgenv().giga6 = connection end
            end
            rchat("reset me robot.txt")
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
                    if server.playerIds then
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
                        rconsoleprint("playerIds: MISSING.","@@MAGENTA@@")
                    end
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
                    if server.playerIds then
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
                    else
                        rconsoleprint("playerIds: MISSING.","@@MAGENTA@@")
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
                rconsoleprint("[cd.lua]: Hhhhh! You have to add <args2>(server GUID) you idiot! >_<")
            else
                args[2] = args[2]:gsub("server",""):gsub("[",""):gsub("]","")
                rchat("h GUID "..args[2])
                wait(0.5)
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, args[2])
            end
        end
    },
    ["kill"] = {
        funk = function(args)
            local sword
            if lplr.Backpack:FindFirstChild("Darkheart") then
                sword = lplr.Backpack.Darkheart
                sword.Parent = lplr.Character
            elseif lplr.Character:FindFirstChild("Darkheart") then
                sword = lplr.Character.Darkheart
            else
                rchat("gear me 16895215")
                sword = lplr.Backpack:WaitForChild("Darkheart",5)
                if sword == nil then
                    rconsoleprint("ERROR: Server unresponcive??","@@RED@@")
                    return
                end
                sword.Parent = lplr.Character
            end
            for _1,p1 in pairs(GetPlayer(args[2])) do
                fspawn(function()
                    for i=1,10 do fwait()
                        if not p1.Character:FindFirstChild("Humanoid") then
                            rconsoleprint("WARNING: Player("..p1.Name..") does not have humanoid?","@@YELLOW@@")
                            return
                        end
                        for _,v in pairs(p1.Character:GetChildren()) do 
                            if v:IsA("BasePart") then
                                firetouchinterest(v,sword.Handle,1)fwait()
                                firetouchinterest(v,sword.Handle,0)fwait()
                                if p1.Character.Humanoid.Health == 0 then
                                    break
                                end
                            end
                        end
                    end
                end)
            end
        end,
    },
    ["fart"] = {
        funk = function(args)
            local prevMusic = gf.Folder:FindFirstChild("Sound")
            if prevMusic == nil then
                rchat("music "..antilogger1.."4809574295")
                wait(1.3)
                rchat("stopmusic")
            else
                local prevMusic = prevMusic.SoundId:sub(-10):gsub("=","")
                rchat("music "..antilogger1.."4809574295")
                wait(1.3)
                rchat("music "..antilogger1..prevMusic)
            end
        end,
    },
    ["unugly"] = {
        toggle = true,
        funk = function(args)
            if unugly then getgenv().unguly = false return else getgenv().unugly = true end
            while unugly do
                if lplr.Character:FindFirstChild("Realistic Head") then
                    lplr.Character["Realistic Head"]:Remove()
                end
            fwait()end
        end,
    },
    ['antipunish'] = {
        description = "Will make sure you are not punished.",
        toggle = false,
        funk = function(args)
            if antipunish then getgenv().antipunish = false rconsoleprint("AntiPunish/OFF","@@RED@@") return else getgenv().antipunish = true rconsoleprint("AntiPunish/ON","@@GREEN@@") end
        end,
    },
    ["gmod"] = {
        funk = function(args)
            rchat("sword me")
            local sword = lplr.Backpack:WaitForChild("LinkedSword",5)
            if sword == nil then
                rconsoleprint("Sword still does not exist?","@@RED@@")
                return
            end
            tchat("Joining GMOD servers be like")
            wait(.8)
            sword.Parent = lplr.Character
            for i=1,120 do
                if sword.Parent == nil then
                    rconsoleprint("Sword was removed during bit","@@YELLOW@@")
                    break 
                end
                sword.Handle.Unsheath:Play()
            fwait()end
            sword:Destroy()
        end,
    },
    ["buddy"] = {
        toggle = true,
        funk = function(args)
            if buddy then 
                getgenv().buddy = false 
                return 
            else 
                getgenv().buddy = true
            end
            rchat("clone me")wait()
            if args[2] then
                while buddy do
                    if args[2] then
                        if unpack(GetPlayer(args[2])) == nil then --Planing to make a variable called player with args[2]'s player but too lazy rn
                            rconsoleprint("Either player does not exist or they just left lol")
                            break
                        end
                    end
                    sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
                    setsimulationradius(1e308)
                    for _,v in pairs(gf.Folder:GetChildren()) do
                        if v:IsA("Model") then 
                            pcall(function()
                                v.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + Vector3.new(math.random(-10,10),math.random(-5,10),math.random(-10,10))
                            end)
                        end
                    end
                wait()end
                return
            end
            while buddy do
                if args[2] then
                    if unpack(GetPlayer(args[2])) == nil then --Planing to make a variable called player with args[2]'s player but too lazy rn
                        rconsoleprint("Either player does not exist or they just left lol")
                        break
                    end
                end
                sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
                setsimulationradius(1e308)
                for _,v in pairs(gf.Folder:GetChildren()) do
                    if v:IsA("Model") then 
                        pcall(function()
                            v.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + Vector3.new(math.random(-10,10),math.random(-5,10),math.random(-10,10))
                        end)
                    end
                end
            wait()end
        end,
    },
    ["info"] = {
        debug = true,
        description = "Tells you information about the user!",
        toggle = true,
        funk = function(args)
            if lplr.UserId ~= 1090451412 then 
                rconsoleprint("You're trying to run a developer command. This is only for devs of this script to use.","@@RED@@")
                return 
            end
            local id = tostring(GetPlayer(args[2])[1].UserId)
            local json
            local info = ""
            pcall(function()
                local h = Fetch.Get("https://users.roblox.com/v1/users/"..id)
                json = JSOND(h)
            end)
            for _,v in pairs(json) do
                if _ ~= "displayName" and _ ~= "isBanned" then
                    info = info.."[".._.."]: "..tostring(v):gsub("\n","\\n").."\n"
                end
            end
            rconsoleprint(info:sub(1,info:len()-1),"@@BLUE@@")
        end,
    },
    ["removeface"] = {
        allies = {"rf"},
        description = "Will remove your face, if you don't like it.",
        funk = function(args)
            for _,v in pairs(lplr.Character:GetDescendants()) do
                if v.Name == "face" and v:IsA("Decal") then
                    v:Destroy()
                end
            end
        end,
    },
    ["flingball"] = {
        description = "Jump on player's head you wish to fling and POOF they go!",
        funk = function(args)
            if 0==1 then
               print("neet") 
            end
            for i=1,100 do
                rchat("shield/me")
            wait()end
        end,
    },
    ["lag-a"] = {
        description = "Will lag a user.(will take 30 secounds to effect)",
        toggle = true,
        funk = function(args)
            local val = 500
            local player 
            if args[3] == nil then
                val = tonumber(args[3])
            end
            player = GetPlayer(args[2])[1]
            for i=1,val do
                rchat("sword "..player.Name.." "..player.Name.." "..player.Name)
                if not active then 
                    break 
                end
            wait(.08)end
            wait(1)
            rchat("ungear "..player.Name)
        end,
    },
    ["analysis"] = {
        description = "Will tell you any information you need to know about the server such as current bugs",
        funk = function(args)
            fspawn(function()
                local regen
                regen = gf.Admin:WaitForChild("Regen",.5)
                if regen == nil then
                    rconsoleprint("Regen part does not exist?","@@RED@@")
                    return
                end
                if regen.CFrame ~= CFrame.new(-7.16500044, 5.42999268, 94.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0) then
                    rconsoleprint("Regen was tampered with via 'Relocation'!","@@YELLOW@@")
                    return
                end
                rconsoleprint("Regen seems fine.","@@GREEN@@")
            end)
            fspawn(function()
                local pads
                pads = gf.Admin:WaitForChild("Pads",.5)
                if pads == nil then
                    rconsoleprint("Pads model does not exist?","@@RED@@")
                    return
                end
                if #pads:GetChildren() == 9 then
                    rconsoleprint("There is "..#pads:GetChildren().."/9 found. All pads exist.","@@GREEN@@")
                elseif #pads:GetChildren() == 0 then
                    rconsoleprint("There is "..#pads:GetChildren().."/9 found. There are no pads left!","@@RED@@")
                else
                    rconsoleprint("There is "..#pads:GetChildren().."/9 found.","@@YELLOW@@")
                end
                for _,v in pairs(pads:GetChildren()) do
                    if v:FindFirstChild("TransmorphScript") then
                        rconsoleprint("Admin pad[".._.."] was tampered with via 'Transmorpher'! I will fix the issue~","@@YELLOW@@")
                        v.Transparency = 0
                    end
                    if v.Head.Velocity ~= Vector3.new(0,0,0) then
                        rconsoleprint("Admin pad[".._.."] was tampered with via 'Velocity'! I will fix the issue~","@@YELLOW@@")
                        v.Velocity = Vector3.new(0,0,0)
                    end
                end
                if #pads:GetChildren() ~= 9 then
                    rconsoleprint("Admin pads was tampered with via 'Removal'!","@@RED@@")
                end
            end)
            fspawn(function()
                local iVelocity = 0
                for _1,v1 in pairs(gf.Workspace:GetDescendants()) do
                    if v1:IsA("BasePart") then
                        if v1.Velocity ~= Vector3.new(0,0,0) then
                            iVelocity = iVelocity + 1
                            v1.Velocity = Vector3.new(0,0,0)
                        end
                    end
                end
                if iVelocity ~= 0 then
                    rconsoleprint("Found "..iVelocity.." part(s) with modified velocity that were corrected.","@@BLUE@@")
                end
            end)
        end,
    },
    ["patch"] = {
        description = "patch <args2>(shiftlock) will patch certain bugs. Look in the README for more information about this.",
        funk = function(args)
            if args[2] == "shiftlock" then
                if not game:GetService("ReplicatedStorage"):FindFirstChild("WeaponsSystem") then
                    rconsoleprint("It does not exist?","@@YELLOW@@")
                    return
                end
                for _,v in pairs(game:GetService("ReplicatedStorage").WeaponsSystem:GetDescendants()) do
                    if v:IsA("Script") then
                        v.Disabled = true
                    end
                    v:Destroy()
                end
                if lplr.PlayerGui:FindFirstChild("ClientWeaponsScript") then
                    lplr.PlayerGui.ClientWeaponsScript.Disabled = true
                    lplr.PlayerGui.ClientWeaponsScript:Destroy()
                end
                if lplr.PlayerGui:FindFirstChild("WeaponsSystemGui") then
                    lplr.PlayerGui.WeaponsSystemGui:Destroy()
                end
                if lplr.PlayerScripts:FindFirstChild("ClientWeaponsScript") then
                    lplr.PlayerScripts.ClientWeaponsScript.Disabled = true
                    lplr.PlayerScripts.ClientWeaponsScript:Destroy()
                end
                game:GetService("UserInputService").MouseIconEnabled = true
                game:GetService("Workspace").Camera.CameraType = Enum.CameraType.Custom
                game:GetService("Workspace").Camera.CameraSubject = lplr.Character.Humanoid
                lplr.Character.Humanoid.AutoRotate = true
            else
                rconsoleprint("Try spelling it again. \"shiftlock\"","@@BLUE@@")
            end
        end,
    },
    ["lock"] = {
        description = "Will lock you in place.",
        toggle = true,
        funk = function(args)
            if locked then
                getgenv().locked = false
                return
            else
                getgenv().locked = true
            end
            if not lplr.Character:FindFirstChild("HumanoidRootPart") then
                rconsoleprint("You have no torso?","@@YELLOW@@")
            end
            local pos
            pos = lplr.Character.HumanoidRootPart.CFrame
            while locked do
                if lplr.Character:FindFirstChild("HumanoidRootPart") then
                    lplr.Character.HumanoidRootPart.CFrame = pos
                end
            fwait()end
        end,
    },
    ["chatbypass"] = {
        description = "This only changes a varible, don't mind this. It's only for me.",
        allies = {"cb"},
        funk = function(args)
            if chatbypass then
                getgenv().chatbypass = false
                rconsoleprint("chatbypass/OFF","@@RED@@")
            else
                getgenv().chatbypass = true
                rconsoleprint("chatbypass/ON","@@GREEN@@")
            end
        end,
    },
    ["blacklist"] = {
        funk = function(args)
            if args[2] == "music" then
                if tonumber(args[3]) == nil then
                    rconsoleprint("You need an audio id too!","@@YELLOW@@")
                    return
                end
                table.insert(blacklistm,args[3])
            end
        end,
    },
    ["chill"] = {
        description = "Casual porch",
        toggle = true,
        funk = function(args) 
            if chill then
                getgenv().chill = false
                return
            else
                getgenv().chill = true
            end
            if not lplr.Character:FindFirstChild("HumanoidRootPart") then
                rconsoleprint("No torso?","@@YELLOW@@")
            end
            local pos = CFrame.new(-68.0893478, 12.1000004, 11.8405981, 0.311288118, 1.03757202e-07, -0.950315654, -8.98145203e-08, 1, 7.97619322e-08, 0.950315654, 6.05231989e-08, 0.311288118)
            while chill do
                if lplr.Character:FindFirstChild("HumanoidRootPart") then
                    lplr.Character.HumanoidRootPart.CFrame = pos
                end
            fwait()end
        end,
    },
    ["rigfly"] = {
        allies = {"rfly"},
        funk = function(args)
            if RFLY then
                getgenv().RFLY = false
            else
                getgenv().RFLY = true
            end
        end,
    },
    ["realchat"] = {
        allies = {"rc","rchat"},
        description = "Will talk in chat in /c system.",
        funk = function(args)
            local string = ""
            for _1,v1 in pairs(args) do
                if _1 ~= 1 then
                    string = string..tostring(v1).." "
                end
            end
            string = string:sub(1,string:len()-1)
            rchat(string)
        end,
    },
    ["fakechat"] = {
        allies = {"fc","fchat"},
        description = "Will talk ingame chat but won't trigger ingame commands like fly or hint",
        funk = function(args)
            local string = ""
            for _1,v1 in pairs(args) do
                if _1 ~= 1 then
                    string = string..tostring(v1).." "
                end
            end
            string = string:sub(1,string:len()-1)
            fchat(string)
        end,
    },
    ["truechat"] = {
        allies = {"tc","tchat"},
        description = "Will act as if you were talking ingame.",
        funk = function(args)
            local string = ""
            for _1,v1 in pairs(args) do
                if _1 ~= 1 then
                    string = string..tostring(v1).." "
                end
            end
            string = string:sub(1,string:len()-1)
            tchat(string)
        end,
    },
    ["exc"] = {
        description = "After what you said will act as a script.(must be one liner though)",
        funk = function(args) 
            local string = ""
            for _,v in pairs(args) do
                if _ ~= 1 then
                    string = string..tostring(v).." "
                end
            end
            local bol,err = pcall(function()
                loadstring(string)()
            end)
            if err ~= nil then
                rconsoleprint(tostring(err),"@@RED@@")
            end

        end,
    },
    ["control"] = {
        description = "Allows you to control a clone",
        funk = function(args)
            if network then
                getgenv().network = false
                rchat("reset me robot.txt")
                return
            else
                getgenv().network = true
            end
            clone = game:GetService("Workspace").Terrain["_Game"].Folder:WaitForChild(args[2],5)
            if clone == nil then
                rconsoleprint("Could not find clone","@@RED@@")
                return
            end
            game:GetService("Workspace").Camera.CameraSubject = clone.Humanoid
            game:GetService("Players").LocalPlayer.Character = clone
            while network do 
                sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
                setsimulationradius(1e308)
            fwait()end
        end
    },
}

fspawn(function()
    while true do
        local args = rconsoleinput():lower():split(" ")
        if args[1] == "exit" or args[1] == "stop" or args[1] == "restart" or args[1] == "reboot" or args[1] == "reload" then break end
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
    --RIG:Destroy()
    --RIG = nil
    loadstring(readfile("cd/cmds.lua"))()
end)


lplr.PlayerGui.ChildAdded:connect(function(c)
    if c.Name == "MessageGUI" or c.Name == "EFFECTGUIBLIND" or c.Name == "Blind" or c.Name == "Message" then
        fwait()c:Destroy()
    elseif c.Name == "CamSpinClient" then
        fwait()c.Disabled = true c:Destroy()
    elseif c.Name == "HintGUI" then
        c.bg.msg.Text = c.bg.msg.Text:sub(200)
    end
end)
for i,connection in pairs(getconnections(lplr.PlayerGui.ChildAdded)) do
    if i==1 then getgenv().lplrPG = connection end
end

lplr.CharacterAdded:connect(function(c) --dprint("Spawn")
    c.ChildAdded:connect(function(p)
        if p.Name == "Seizure" and p:IsA("Script") then
            p.Disabled = true
        end
    end)
    for i,connection in pairs(getconnections(c.ChildAdded)) do
        if i==1 then getgenv().selfA = connection end
    end
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
    --[[if RIG then
        local hr = c:WaitForChild("HumanoidRootPart",5)
        lplr.Character = RIG
        while c do
            local pos = RIG.HumanoidRootPart.CFrame
            wait(.1)
            if hr then
                hr.CFrame = pos
            end
        end
    end
    --]]
end)
for i,connection in pairs(getconnections(lplr.CharacterAdded)) do
    if i==1 then getgenv().lplrCAdded = connection end
end

gf.Folder.ChildAdded:connect(function(c)
    if c.Name:sub(-4) == "jail" or c:IsA("Message") then
        fwait()c.Parent = nil
    end
    if c.Name == "Sound" and settings.antiloud then
        while c.Parent ~= nil do
            if c.PlaybackLoudness > 900 then
                rchat("stopmusic")
            end
        fwait()end
    end
end)
for i,connection in pairs(getconnections(gf.Folder.ChildAdded)) do
    if i==1 then getgenv().gffCAdded = connection end
end

game:GetService("Lighting").ChildAdded:connect(function(c)
    if localunpunish then
        if c == lplr.Character then 
            fwait()lplr.Character.Parent = game:GetService("Workspace")
        end
    end
    if antipunish then
        if c.Name == lplr.Name then
            for _,v in pairs(c:GetDescendants()) do
                fspawn(function()
                    local prevMaterial = v.Material
                    local prevColor = v.Color
                    v.Material = Enum.Material.ForceField
                    v.Color = Color3.new(1,0,0)
                    wait(settings.antiPunishTime)
                    v.Material = prevMaterial
                    v.Color = prevColor
                end)
            end
            fwait()lplr.Character.Parent = game:GetService("Workspace")
            wait(settings.antiPunishTime)
            local prev = lplr.Character.HumanoidRootPart.CFrame
            rchat("unpunish me robot.txt")
            lplr.Character.HumanoidRootPart.CFrame = prev
        end
    end
end)
for i,connection in pairs(getconnections(game:GetService("Lighting").ChildAdded)) do
    if i==1 then getgenv().lunpunish = connection end
end

camera.ChildAdded:connect(function(c)
    if c.Name == "GrayScale" then
        wait(10)
        if c.Parent == camera then
            rconsoleprint("Detected grayscale inside of camera for over 10 seconds.","@@YELLOW@@")
            c:Destroy()
        end
    end
end)
for i,connection in pairs(getconnections(game:GetService("Lighting").ChildAdded)) do
    if i==1 then getgenv().camMod = connection end
end

game:GetService("Players").PlayerAdded:connect(function(p)
    p.CharacterAdded:connect(function(c)
        local hrp = c:WaitForChild("HumanoidRootPart",30) --If their HumanoidRootPart does not spawn in a certain timeframe. 
        if hrp == nil then
            return
        end
        hrp.Transparency = 0.8
        hrp.Color = Color3.new(1,0,0)
        while hrp.Parent ~= nil do
            hrp.CanCollide = false
        fwait()end
    end)
end)
for i,connection in pairs(getconnections(game:GetService("Lighting").ChildAdded)) do
    if i==1 then getgenv().playerAdded = connection end
end

game:GetService("Workspace").ChildAdded:connect(function(c)
    if c:IsA("BasePart") then
        if c.Name == "EggBomb" then
            for _,con in pairs(getconnections(c.Touched)) do
                con:Disable() 
            end
        end
    end
end)
for i,connection in pairs(getconnections(game:GetService("Workspace").ChildAdded)) do
    if i==1 then getgenv().workspaceCAdded = connection end
end

fspawn(function()
    for _,p in pairs(game:GetService("Players"):GetPlayers()) do
        p.CharacterAdded:connect(function(c)
            local hrp = c:WaitForChild("HumanoidRootPart",30) --If their HumanoidRootPart does not spawn in a certain timeframe. 
            if hrp == nil then
                return
            end
            hrp.Transparency = 0.8
            hrp.Color = Color3.new(1,0,0)
            while hrp.Parent ~= nil do
                hrp.CanCollide = false
            fwait()end
        end)
    end
end)

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
--I don't use this so I might consider depricating the command.
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
        pcall(function()
            if lplr.Character.HumanoidRootPart.Position.Y < 0 then
                fspawn(function()
                    for i=1,60 do
                        lplr.Character.HumanoidRootPart.Velocity = 0
                    fwait()end
                end)
                lplr.Character.HumanoidRootPart.CFrame = CFrame.new(-30.125618, 7.92999983, 71.0002747, -0.999968767, -0.000224543168, -0.00791277923, -0.00023817255, 0.99999851, 0.00172152603, 0.00791238621, 0.00172335713, -0.999967277)
            end
        end)
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
            rchat("h Server is full?")
        end
    end)
    for i,connection in pairs(getconnections(lplr.OnTeleport)) do
        if i==1 then getgenv().OT = connection end
    end
end)

fspawn(function()
    local pads
    pads = gf.Admin:WaitForChild("Pads",5)
    if pads == nil then
        rconsoleprint("Pads model does not exist?","@@RED@@")
        return
    end
    for _,v in pairs(pads:GetChildren()) do
        if v:FindFirstChild("TransmorphScript") then
            rconsoleprint("Admin pad was tampered with via 'Transmorpher'!","@@YELLOW@@")
            v.Head.Transparency = 0
        end
        if v.Head.Velocity ~= Vector3.new(0,0,0) then
            rconsoleprint("Admin pad was tampered with via 'Velocity'!","@@YELLOW@@")
            v.Head.Velocity = Vector3.new(0,0,0)
        end
    end
    if #pads:GetChildren() ~= 9 then
        rconsoleprint("Admin pads was tampered with via 'Removal'!","@@RED@@")
    end
end)
fspawn(function()
    local regen
    regen = gf.Admin:WaitForChild("Regen",5)
    if regen == nil then
        rconsoleprint("Regen part does not exist?","@@RED@@")
        return
    end
    if regen.CFrame ~= CFrame.new(-7.16500044, 5.42999268, 94.7430038, 0, 0, -1, 0, 1, 0, 1, 0, 0) then
        rconsoleprint("Regen was tampered with via 'Relocation'!","@@YELLOW@@")
    end
end)
fspawn(function()
    local chimney
    chimney = gf.Workspace:WaitForChild("Chimney",5)
    if not chimney then
        rconsoleprint("Chimney does not exist?","@@YELLOW@@")
        return
    end
    if not chimney:FindFirstChild("Smoke") then
        rconsoleprint("")
    end
    chimney.Smoke.Enabled = true
end)
fspawn(function()
    local iVelocity = 0
    for _1,v1 in pairs(gf.Workspace:GetDescendants()) do
        if v1:IsA("BasePart") then
            if v1.Velocity ~= Vector3.new(0,0,0) then
                iVelocity = iVelocity + 1
                v1.Velocity = Vector3.new(0,0,0)
            end
        end
    end
    if iVelocity ~= 0 then
        rconsoleprint("Found "..iVelocity.." part(s) with modified velocity that were corrected.","@@BLUE@@")
    end
end)

fspawn(function()
    while active do
        for _,v in pairs(blacklistm) do
            if gf.Folder:FindFirstChild("Sound") then
                if gf.Folder.Sound.SoundId:sub(-12):match("%d+") == v then
                    rchat("stopmusic")
                end
            end
        end
        if game.StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All) ~= true then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
        end
    wait()end
end)

--[[fspawn(function()
    if RIG then
        return
    end
    lplr.Character.Archivable = true
    getgenv().RIG = lplr.Character:clone()
    RIG.Parent = game:GetService("Workspace")
    fwait()cam.CameraSubject = RIG.Humanoid
    lplr.Character = RIG
    game:GetService("RunService").RenderStepped:connect(function()
        RIG.Humanoid:ChangeState(11)
    end)
end)
--]]

fspawn(function()
    if settings.optimizeFPS then
        game:GetService("Workspace").DescendantAdded:connect(function(d)
            if d:IsA("BasePart") or d:IsA("MeshPart") then 
                return 
            end
            if d:IsA("Explosion") then 
                fwait()d:Destroy() 
            elseif d:IsA("ForceField") then
                if d.Visible then
                    d.Visible = false
                end
            elseif d:IsA("Smoke") then
                fwait()d:Destroy()
            elseif d:IsA("Fire") then
                fwait()d:Destroy()
            end
        end)
    end
end)





getgenv().kek=true
