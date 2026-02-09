local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerThumbnail = require(ReplicatedStorage.Components.PlayerThumbnail)
local React = require(ReplicatedStorage.Packages.React)
local Column = require(ReplicatedStorage.Shared.layout.Column)
local Row = require(ReplicatedStorage.Shared.layout.Row)

export type PropType = {
	Size: UDim2?,
	CustomName: string?,
	PlayerName: string?,
	PostMessage: string?,
	BackgroundColor: Color3?,
	ComposeColor: Color3?,
	UserId: IntValue,
}

local function Post(props: PropType)
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
			ColumnFrame = React.createElement(Column, {
				Align = Enum.VerticalAlignment.Top,
			}, {
				React.createElement(Row, {}, {
					React.createElement("UIPadding", {
						PaddingLeft = UDim.new(0.05, 0),
						PaddingTop = UDim.new(0.3, 0),
					}, {}),
					React.createElement(PlayerThumbnail, { UserId = props.UserId }, {}),
					React.createElement("TextLabel", {
						Text = props.CustomName or "I Make Games",
						TextSize = 14,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						FontFace = Font.fromEnum(Enum.Font.ArimoBold),
					}, {}),
					React.createElement("TextLabel", {
						Text = "@" .. (props.PlayerName or "No Username Prop Found"),
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
					}, {}),
				}),
				React.createElement("TextLabel", {
					Text = props.PostMessage
						or "No message found this is a test message hdsjahdkajshdjksahdjkashdkjashdjhasdjkashdkjashdkjashdjashdkjashdkjhasdjkhaskjdh",
					TextSize = 14,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					RichText = true,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					FontFace = Font.fromEnum(Enum.Font.Arimo),
				}, {
					React.createElement("UIPadding", {
						PaddingTop = UDim.new(0, 10),
						PaddingLeft = UDim.new(0.15, 0),
					}, {}),
				}),
			}),
		}),
	})
end

return Post
