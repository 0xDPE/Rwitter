local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local React = require(ReplicatedStorage.Packages.React)

local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled

local width = isMobile and 1 or 0.4

export type PropType = {
	children: any?,
}

local function MainFrame(props)
	return React.createElement("Frame", {
		Size = UDim2.fromScale(width, 1),
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.fromScale(0.5, 0),
	}, {
		OutlineStroke = React.createElement("UIStroke", {
			Color = Color3.fromRGB(47, 51, 54),
			LineJoinMode = Enum.LineJoinMode.Miter,
		}),
		Children = React.createElement(React.Fragment, nil, props.children),
	})
end

return MainFrame
