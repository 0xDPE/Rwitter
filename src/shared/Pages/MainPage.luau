local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ComposeFrame = require(ReplicatedStorage.Components.ComposeFrame)
local React = require(ReplicatedStorage.Packages.React)
local MainFrame = require(ReplicatedStorage.Shared.components.MainFrame)
local Post = require(ReplicatedStorage.Shared.components.Post)
local TopBarButton = require(ReplicatedStorage.Shared.components.TopBarButton)
local Column = require(ReplicatedStorage.Shared.layout.Column)
local Row = require(ReplicatedStorage.Shared.layout.Row)

local function MainPage(props)
	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	}, {
		MainFrame = React.createElement(MainFrame, {
			Size = UDim2.fromScale(1, 1),
		}, {
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
				React.createElement(ComposeFrame, { UserId = props.UserId }, {}),
				React.createElement(Post, { PlayerName = props.PlayerName, UserId = props.UserId }, {}),
			}),
		}),
	})
end

return MainPage
