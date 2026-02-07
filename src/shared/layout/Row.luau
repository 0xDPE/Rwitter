local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.React)

export type RowPropType = {
	Size: UDim?,
	AutomaticSize: Enum.AutomaticSize?,
	Padding: UDim?,
	Align: Enum.HorizontalAlignment?,
	VerticalAlign: Enum.VerticalAlignment?,
	Flex: Enum.UIFlexAlignment?,
	VerticalFlex: Enum.UIFlexAlignment?,
	children: any?,
}

local function Row(props: RowPropType)
	return React.createElement("Frame", {
		Size = props.Size or UDim2.fromScale(1, 0),
		AutomaticSize = props.AutomaticSize or Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.Name,
			Padding = props.Padding or UDim.new(0, 8),
			HorizontalAlignment = props.Align or Enum.HorizontalAlignment.Left,
			VerticalAlignment = props.VerticalAlign or Enum.VerticalAlignment.Center,
			HorizontalFlex = props.Flex or Enum.UIFlexAlignment.None,
			VerticalFlex = props.VerticalFlex or Enum.UIFlexAlignment.None,
		}),
		Children = React.createElement(React.Fragment, nil, props.children),
	})
end

return Row
