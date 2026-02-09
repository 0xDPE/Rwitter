local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.React)
local ReactRoblox = require(ReplicatedStorage.Packages.ReactRoblox)
local MainPage = require(ReplicatedStorage.Shared.Pages.MainPage)

local controls = { PlayerName = "somegodlol", UserId = 3509913404 }

local story = {
	react = React,
	reactRoblox = ReactRoblox,
	controls = controls,
	story = function(props)
		local component = React.createElement(
			MainPage,
			{ PlayerName = props.controls.PlayerName, UserId = props.controls.UserId },
			{}
		)
		return component
	end,
}

return story
