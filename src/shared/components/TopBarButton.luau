local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.React)

export type PropType = {
	Size: UDim?,
	LayoutOrder: number?,
	BackgroundColor3: Color3?,
	BorderSizePixel: number?,
	TextColor3: Color3?,
	Text: string?,
}

local function TopBarButton(props: PropType)
	return React.createElement("TextButton", {
		Size = props.Size or UDim2.fromScale(0.5, 1),
		LayoutOrder = props.LayoutOrder or 0,
		BackgroundColor3 = props.BackgroundColor3 or Color3.fromRGB(0, 0, 0),
		BorderSizePixel = props.BorderSizePixel or 0,
		TextColor3 = props.TextColor3 or Color3.fromRGB(255, 255, 255),
		Text = props.Text or "Top Bar Button Text",
		Font = Enum.Font.GothamBold,
		TextSize = 15,
	})
end

return TopBarButton
