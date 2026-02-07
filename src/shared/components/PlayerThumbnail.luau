local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.React)

local content =
	Players:GetUserThumbnailAsync(Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)

local function PlayerThumbnail(props)
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
