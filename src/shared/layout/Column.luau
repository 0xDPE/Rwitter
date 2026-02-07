local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.React)

export type PropType = {
	Size: UDim2?,
	AutomaticSize: Enum.AutomaticSize?,
	Padding: UDim?,
	HorizontalAlign: Enum.HorizontalAlignment?,
	Align: Enum.VerticalAlignment?,
	children: any?,
}

local function Column(props: PropType)
	return React.createElement("Frame", {
		Size = props.Size or UDim2.fromScale(0, 1),
		AutomaticSize = props.AutomaticSize or Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
	}, {
		RowLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.Name,
			Padding = props.Padding or UDim.new(0, 8),
			HorizontalAlignment = props.HorizontalAlign or Enum.HorizontalAlignment.Center,
			VerticalAlignment = props.Align or Enum.VerticalAlignment.Center,
		}),
		Children = React.createElement(React.Fragment, nil, props.children),
	})
end

return Column
