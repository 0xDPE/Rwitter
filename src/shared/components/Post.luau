local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerThumbnail = require(ReplicatedStorage.Components.PlayerThumbnail)
local React = require(ReplicatedStorage.Packages.React)
local Column = require(ReplicatedStorage.Shared.layout.Column)
local Row = require(ReplicatedStorage.Shared.layout.Row)

local function Post(props)
	return React.createElement("Frame", {
		Size = props.Size or UDim2.fromScale(1, 0.25),
		BackgroundColor3 = props.BackgroundColor or Color3.fromRGB(0, 0, 0),
	}, {
		ComposeOutline = React.createElement("UIStroke", {
			Color = props.ComposeColor or Color3.fromRGB(47, 51, 54),
			LineJoinMode = Enum.LineJoinMode.Miter,
		}),
		RowFrame = React.createElement(Column, {
			Align = Enum.VerticalAlignment.Top,
		}, {
			ColumnFrame = React.createElement(Row, {}, {
				React.createElement(PlayerThumbnail, {}, {}),
				React.createElement("TextLabel", {
					Text = "Out Of Context Communism",
					TextSize = 14,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					FontFace = Font.fromEnum(Enum.Font.ArimoBold),
				}, {}),
			}),
		}),
	})
end

return Post
