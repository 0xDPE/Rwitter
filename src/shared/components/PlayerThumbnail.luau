local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.React)

local function PlayerThumbnail(props)
	local content = React.useMemo(function()
		local contentInfo = nil
		if props.UserId ~= nil then
			contentInfo =
				Players:GetUserThumbnailAsync(props.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
		end
		return contentInfo
	end, { props.UserId })

	return React.createElement("ImageLabel", {
		Image = content,
		Size = UDim2.fromOffset(48, 48),
		BackgroundTransparency = 1,
	}, {
		React.createElement("UICorner", {
			CornerRadius = UDim.new(0, 48),
		}),
	})
end

return PlayerThumbnail
