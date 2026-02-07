local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TopBarButton = require(ReplicatedStorage.Components.TopBarButton)
local Column = require(ReplicatedStorage.Layout.Column)
local Row = require(ReplicatedStorage.Layout.Row)
local React = require(ReplicatedStorage.Packages.React)
local ReactRoblox = require(ReplicatedStorage.Packages.ReactRoblox)
local MainFrame = require(ReplicatedStorage.Shared.components.MainFrame)
local ComposeFrame = require(ReplicatedStorage.Shared.components.ComposeFrame)
local Post = require(ReplicatedStorage.Shared.components.Post)

local function BackgroundFrame()
	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	}, {
		MainFrame = React.createElement(MainFrame, {}, {
			MainColumn = React.createElement(Column, {
				Padding = UDim.new(0, 0),
				Align = Enum.VerticalAlignment.Top,
			}, {
				React.createElement("Frame", {
					Size = UDim2.fromScale(1, 0.06),
					BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				}, {
					TopBarOutline = React.createElement("UIStroke", {
						Color = Color3.fromRGB(47, 51, 54),
						LineJoinMode = Enum.LineJoinMode.Miter,
					}),
					MainRow = React.createElement(Row, {
						Padding = UDim.new(0, 0),
					}, {
						TopBarForYouButton = React.createElement(TopBarButton, {
							Text = "For you",
							LayoutOrder = 1,
						}),
						TopBarFollowingButton = React.createElement(TopBarButton, {
							Text = "Following",
							LayoutOrder = 2,
						}),
					}),
				}),
				React.createElement(ComposeFrame, {}, {}),
				React.createElement(Post, {}, {}),
			}),
		}),
	})
end

local handle = Instance.new("ScreenGui")
handle.Parent = Players.LocalPlayer.PlayerGui
handle.IgnoreGuiInset = true
local root = ReactRoblox.createRoot(handle)
root:render(React.createElement(BackgroundFrame, {}, {}))
