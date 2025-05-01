debugX = true

-- Play a startup sound
local Sound = Instance.new("Sound", game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://9118823102" -- Example startup sound, replace with your own if you want
Sound.Volume = 1
Sound:Play()

-- Load Rayfield UI
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "meprex script",
   Icon = 0,
   LoadingTitle = "mep script",
   LoadingSubtitle = "by meprex",
   Theme = "DarkBlue", -- Changed theme

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})

-- Main Scripts Tab
local Tab = Window:CreateTab("Scripts", 4483362458)
local Section = Tab:CreateSection("Script Execution")

Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

Tab:CreateButton({
   Name = "Anti-Bang",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/meprexaltlat/antifrak/refs/heads/main/anitfreak.lua"))()
   end,
})

Tab:CreateButton({
   Name = "Reverse Script",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/meprexaltlat/rewind/refs/heads/main/reverse/reverse.lua'))()
   end,
})

Tab:CreateButton({
   Name = "Trip Script",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/meprexaltlat/trip-script/refs/heads/main/trip.lua'))()
   end,
})

Tab:CreateButton({
   Name = "FaceFreak",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/meprexaltlat/face-namng/refs/heads/main/facefreak.lua'))()
   end,
})

Tab:CreateButton({
   Name = "Baseplate Script",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/meprexaltlat/baseplate/refs/heads/main/baseplate.lua'))()
   end,
})

-- Misc Tab
local MiscTab = Window:CreateTab("Misc", 4483362458)
local MiscSection = MiscTab:CreateSection("Extra Utilities")

MiscTab:CreateButton({
   Name = "Say Hello In Chat",
   Callback = function()
      game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hello from meprex script!", "All")
   end,
})

Rayfield:LoadConfiguration()
