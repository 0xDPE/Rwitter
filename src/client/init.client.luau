local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")
local React = require(ReplicatedStorage.Packages.React)
local ReactRoblox = require(ReplicatedStorage.Packages.ReactRoblox)
local MainPage = require(ReplicatedStorage.Shared.Pages.MainPage)

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
humanoid.WalkSpeed = 0
humanoid.JumpHeight = 0

StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
StarterGui:SetCore("ResetButtonCallback", false)

local handle = Instance.new("ScreenGui")
handle.Parent = Players.LocalPlayer.PlayerGui
handle.IgnoreGuiInset = true
local root = ReactRoblox.createRoot(handle)
root:render(
	React.createElement(MainPage, { PlayerName = Players.LocalPlayer.Name, UserId = Players.LocalPlayer.UserId }, {})
)
