local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerThumbnail = require(ReplicatedStorage.Components.PlayerThumbnail)
local React = require(ReplicatedStorage.Packages.React)
local Row = require(ReplicatedStorage.Shared.layout.Row)

export type PropType = {
	placeHolderText: string?,
}

local function ComposeFrame(props: PropType)
	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 0.125),
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	}, {
		ComposeOutline = React.createElement("UIStroke", {
			Color = Color3.fromRGB(47, 51, 54),
			LineJoinMode = Enum.LineJoinMode.Miter,
		}),
		ProfilePostRow = React.createElement(Row, {
			Size = UDim2.fromScale(1, 1),
			Flex = Enum.UIFlexAlignment.SpaceAround,
		}, {
			React.createElement(PlayerThumbnail, {}, {}),
			React.createElement("TextBox", {
				Text = props.placeHolderText or "Whats happening?",
				Size = UDim2.fromScale(0.6, 0.8),
				TextWrapped = true,
				TextSize = 14,
				BackgroundTransparency = 1,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
			React.createElement("TextButton", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundColor3 = Color3.fromRGB(251, 251, 255),
				Text = " Post ",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 18,
				FontFace = Font.fromEnum(Enum.Font.ArimoBold),
				Size = UDim2.fromOffset(65, 35),
			}, {
				React.createElement("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),
			}),
		}),
	})
end

return ComposeFrame
