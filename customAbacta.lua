do
	getgenv().SecureMode = true
	if game.GameId == 4639625707 then
		return
	end
	if _G.MenuOpen then
		game:Shutdown()
	end
	_G.MenuOpen = true
	local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Gubaz31x/cheatsheeeesh/main/rayfield.lua'))()
	local Window = Rayfield:CreateWindow({
		Name = "🔥 War Tycoon Hub | Abacate7 Menu V3",
		LoadingTitle = "War Tycoon (PVP SCRIPT) by abacate7",
		LoadingSubtitle = "by abacate7 (discord)",
		ConfigurationSaving = { Enabled = false, FolderName = nil, FileName = "Example Hub" },
		Discord = { Enabled = true, Invite = "uZgx2YAgN5", RememberJoins = false },
		KeySystem = true,
		KeySettings = {
			Title = "Key | Abacate Hub",
			Subtitle = "Key System",
			Note = "Key In Discord Server (discord.gg/uZgx2YAgN5)",
			FileName = "Abacate7HubKey1",
			SaveKey = false,
			GrabKeyFromSite = false,
			Key = { "AgaO@0893A22yUDAOB49UOH4g131987f8" },
		},
	})
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local gameSystems = workspace:FindFirstChild("Game Systems")
	local validFolders = {
		"Gunship Workspace",
		"Plane Workspace",
		"Tank Workspace",
		"Boat Workspace",
		"Drone Workspace",
		"Helicopter Workspace",
		"RC Workspace",
		"Vehicle Workspace",
	}
	local PosMap = {
		AlphaBase = CFrame.new(
			-2743.17163,
			48.3824463,
			683.413818,
			-0.244484186,
			6.040151e-8,
			-0.969653308,
			2.9797578e-8,
			1,
			5.4778834e-8,
			0.969653308,
			-1.5500762e-8,
			-0.244484186
		),
		BravoBase = CFrame.new(
			-2813.34424,
			48.3824463,
			-409.172211,
			-0.370972872,
			-1.00345034e-7,
			-0.928643703,
			-9.9554654e-8,
			1,
			-6.8285566e-8,
			0.928643703,
			6.711871e-8,
			-0.370972872
		),
		CharlieBase = CFrame.new(
			-2483.00146,
			48.3824539,
			-1264.34485,
			-0.387126565,
			-6.972547e-9,
			-0.922026575,
			1.34265195e-8,
			1,
			-1.31995215e-8,
			0.922026575,
			-1.7489494e-8,
			-0.387126565
		),
		DeltaBase = CFrame.new(
			-1968.12073,
			48.3824615,
			-1998.3772,
			-0.813820243,
			-3.373762e-8,
			-0.581116736,
			-9.993709e-9,
			1,
			-4.406092e-8,
			0.581116736,
			-3.0050156e-8,
			-0.813820243
		),
		EchoBase = CFrame.new(
			-1067.47168,
			48.3824463,
			-2512.64844,
			-0.935233951,
			-1.0719691e-7,
			0.354030252,
			-9.913321e-8,
			1,
			4.0912212e-8,
			-0.354030252,
			3.1663334e-9,
			-0.935233951
		),
		FoxtrotBase = CFrame.new(
			875.336975,
			48.3824463,
			-2122.33228,
			-0.998898745,
			5.9670215e-9,
			0.0469177105,
			5.0355498e-9,
			1,
			-1.9971505e-8,
			-0.0469177105,
			-1.9713255e-8,
			-0.998898745
		),
		GolfBase = CFrame.new(
			1825.61267,
			48.3824463,
			-1716.72253,
			-0.762692034,
			4.8171845e-8,
			0.646761835,
			3.463427e-8,
			1,
			-3.363922e-8,
			-0.646761835,
			-3.2562413e-9,
			-0.762692034
		),
		HotelBase = CFrame.new(
			2791.60278,
			48.3824463,
			-1447.57214,
			-0.519012511,
			3.5335688e-8,
			0.854766607,
			5.2523756e-8,
			1,
			-9.447259e-9,
			-0.854766607,
			3.9992308e-8,
			-0.519012511
		),
		KiloBase = CFrame.new(
			3007.0791,
			48.3824501,
			-589.311279,
			-0.264558017,
			6.851005e-8,
			0.964369774,
			9.2297874e-8,
			1,
			-4.5720956e-8,
			-0.964369774,
			7.691344e-8,
			-0.264558017
		),
		LimaBase = CFrame.new(
			3008.22363,
			48.2036514,
			511.956055,
			-0.145008907,
			4.354885e-8,
			0.989430368,
			-6.713487e-10,
			1,
			-4.4112458e-8,
			-0.989430368,
			-7.060952e-9,
			-0.145008907
		),
		OmegaBase = CFrame.new(
			2940.22266,
			48.2036514,
			1401.57312,
			0.431439668,
			-4.2007295e-9,
			0.902141809,
			-7.072391e-10,
			1,
			4.9946256e-9,
			-0.902141809,
			-2.7929097e-9,
			0.431439668
		),
		RomeoBase = CFrame.new(
			2988.0708,
			48.2036514,
			1417.46423,
			-0.216874614,
			8.672765e-9,
			-0.976199448,
			6.253499e-9,
			1,
			7.494923e-9,
			0.976199448,
			-4.479204e-9,
			-0.216874614
		),
		SierraBase = CFrame.new(
			2455.59521,
			48.2036591,
			2343.77783,
			0.116161622,
			-5.5941786e-8,
			0.993230343,
			-5.223736e-8,
			1,
			6.243241e-8,
			-0.993230343,
			-5.913598e-8,
			0.116161622
		),
		TangoBase = CFrame.new(
			-804.970093,
			48.3824463,
			2404.30615,
			0.982992768,
			5.7546437e-8,
			0.183644176,
			-5.3561507e-8,
			1,
			-2.665949e-8,
			-0.183644176,
			1.6369828e-8,
			0.982992768
		),
		VictorBase = CFrame.new(
			-2367.02759,
			48.3824539,
			2684.63037,
			-0.865642488,
			4.1581877e-8,
			-0.500662684,
			3.9526704e-8,
			1,
			1.4712269e-8,
			0.500662684,
			-7.0539796e-9,
			-0.865642488
		),
		ZuluBase = CFrame.new(
			-2341.27563,
			48.2036438,
			1639.80957,
			-0.00587360049,
			5.5083653e-9,
			-0.999982774,
			5.5020124e-8,
			1,
			5.1852886e-9,
			0.999982774,
			-5.4988718e-8,
			-0.00587360049
		),
		CapturePoint = CFrame.new(
			66.980751,
			47.9626427,
			191.496841,
			-0.916396677,
			1.5849027e-8,
			-0.400271297,
			1.5952168e-8,
			1,
			3.074198e-9,
			0.400271297,
			-3.5680099e-9,
			-0.916396677
		),
	}
	_G.espRange = 1500
	_G.MapConnectionUpdate = nil
	_G.CFloopConnectionUpdate = nil
	local MainTab = Window:CreateTab("🏠 Home", nil)
	local GraphicsTab = Window:CreateTab("📊 Graphics", nil)
	local TeleportTab = Window:CreateTab("🌀 Teleports", nil)
	local MapTab = Window:CreateTab("🗺️ Map Viewer", nil)
	local MainSection = MainTab:CreateSection("Main")
	Rayfield:Notify({
		Title = "Script Loaded!",
		Content = "by abacate7",
		Duration = 5,
		Image = 0,
		Actions = { Ignore = {
			Name = "Ok",
			Callback = function()
				print("Menu Loaded!")
			end,
		} },
	})
	local Button = MainTab:CreateToggle({
		Name = "Infinite Jump Toggle",
		CurrentValue = false,
		Callback = function(v)
			_G.infinjump = v
			if v then
				game.StarterGui:SetCore(
					"SendNotification",
					{ Title = "Abacate7 Menu V3", Text = "Infinite Jump Activated!", Duration = 5 }
				)
			else
				game.StarterGui:SetCore(
					"SendNotification",
					{ Title = "Abacate7 Menu V3", Text = "Infinite Jump Disabled!", Duration = 5 }
				)
			end
			game:GetService("UserInputService").JumpRequest:Connect(function()
				if _G.infinjump and (LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall) then
					LocalPlayer.Character.Humanoid:ChangeState("Jumping")
				end
			end)
		end,
	})
	local Slider = MainTab:CreateSlider({
		Name = "WalkSpeed",
		Range = { 1, 350 },
		Increment = 1,
		Suffix = "Speed",
		CurrentValue = 16,
		Flag = "sliderws",
		Callback = function(Value)
			LocalPlayer.Character.Humanoid.WalkSpeed = Value
		end,
	})
	local Slider = MainTab:CreateSlider({
		Name = "JumpPower",
		Range = { 1, 350 },
		Increment = 1,
		Suffix = "Speed",
		CurrentValue = 16,
		Flag = "sliderjp",
		Callback = function(Value)
			LocalPlayer.Character.Humanoid.JumpPower = Value
		end,
	})
	local Button = MainTab:CreateButton({
		Name = "TP Tool",
		Callback = function()
			local mouse = LocalPlayer:GetMouse()
			local tool = Instance.new("Tool")
			tool.RequiresHandle = false
			tool.Name = "Click Teleport"
			game.StarterGui:SetCore(
				"SendNotification",
				{ Title = "Abacate7 Menu V3", Text = "Be careful not to click on places that are not rendered!", Duration = 5 }
			)
			tool.Activated:Connect(function()
				local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
				pos = CFrame.new(pos.X, pos.Y, pos.Z)
				LocalPlayer.Character.HumanoidRootPart.CFrame = pos
			end)
			tool.Parent = LocalPlayer.Backpack
		end,
	})
	local Button = MainTab:CreateToggle({
		Name = "Fly",
		CurrentValue = false,
		Callback = function(v)
			local humanoid = LocalPlayer.Character.Humanoid
			local head = LocalPlayer.Character.Head
			humanoid.PlatformStand = v
			head.Anchored = v
			if v then
				_G.CFloopConnectionUpdate = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
					local moveDirection = humanoid.MoveDirection * 50 * deltaTime
					local headCFrame = head.CFrame
					local cameraCFrame = workspace.CurrentCamera.CFrame
					local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
					cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
					local cameraPosition = cameraCFrame.Position
					local headPosition = headCFrame.Position
					local objectSpaceVelocity =
						CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z))
							:VectorToObjectSpace(moveDirection)
					head.CFrame = CFrame.new(headPosition)
						* (cameraCFrame - cameraPosition)
						* CFrame.new(objectSpaceVelocity)
				end)
			elseif _G.CFloopConnectionUpdate then
				_G.CFloopConnectionUpdate:Disconnect()
			end
		end,
	})
	local function SeatInPart(Part)
		if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			Part:Sit(LocalPlayer.Character.Humanoid)
		end
	end
	local function SitProximity()
		local Vehicles = {}
		local maxCostPart = nil
		local maxCost = -math.huge
		local TypesVehicle =
			{ Plane = { Cost = 25 }, Tank = { Cost = 13 }, Boat = { Cost = 8 }, Helicopter = { Cost = 10 }, Vehicle = {
				Cost = 5,
			} }
		for _, folderName in validFolders do
			local folder = gameSystems:FindFirstChild(folderName)
			if folder then
				for _, model in folder:GetChildren() do
					for _, v in model:GetDescendants() do
						if
							v
							and (v:IsA("VehicleSeat") or v:IsA("Seat"))
							and model:FindFirstChild("Health")
							and (model.Health.Value >= 10)
						then
							if not v.Occupant then
								local baseName = model.Name
								local vehicleName = baseName
								local count = 1
								while Vehicles[vehicleName] do
									count = count + 1
									vehicleName = baseName .. tostring(count)
								end
								Vehicles[vehicleName] =
									{ Part = v, Cost = 0, Type = (string.gsub(model.Parent.Name, " Workspace$", "")) }
							end
						end
					end
				end
			end
		end
		for _, Tab in Vehicles do
			local Seat = Tab["Part"]
			local Cost = Tab["Cost"]
			local Type = Tab["Type"]
			Cost = Cost + (((Seat.ClassName == "VehicleSeat") and 10) or 2)
			Cost = Cost + (((Seat.Name == "Gunner Seat") and 5) or 0)
			Cost = Cost + TypesVehicle[Type].Cost
			Cost = Cost + (-(Seat.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude / 5000)
			if Cost > maxCost then
				maxCost = Cost
				maxCostPart = Seat
			end
		end
		if not maxCostPart then
			game.StarterGui:SetCore(
				"SendNotification",
				{ Title = "Abacate7 Menu V3", Text = "No Seats Nearby!", Duration = 5 }
			)
		else
			SeatInPart(maxCostPart)
		end
	end
	local Button = MainTab:CreateButton({
		Name = "Sit Proximity",
		Callback = function()
			SitProximity()
		end,
	})
	local Button = MainTab:CreateButton({
		Name = "Fall Damage (PERM)",
		Callback = function()
			game:GetService("ReplicatedStorage").ACS_Engine.Events.FDMG:Destroy()
			game.StarterGui:SetCore(
				"SendNotification",
				{ Title = "Abacate7 Menu V3", Text = "FallDamage Off!", Duration = 5 }
			)
		end,
	})
	local OtherSection = MainTab:CreateSection("Esp")
	local Toggle = MainTab:CreateToggle({
		Name = "Players Visual",
		CurrentValue = false,
		Flag = "ToggleESPPLayer",
		Callback = function(Value)
			_G.EspPlayers = Value
		end,
	})
	local Toggle = MainTab:CreateToggle({
		Name = "Vehicle Visual",
		CurrentValue = false,
		Flag = "ToggleESPVehicle",
		Callback = function(Value)
			_G.EspVehicle = Value
		end,
	})
	local Slider = MainTab:CreateSlider({
		Name = "Esp Distance",
		Range = { 200, 3000 },
		Increment = 10,
		Suffix = "Studs",
		CurrentValue = 1500,
		Flag = "sliderdistancewall",
		Callback = function(Value)
			_G.espRange = Value
		end,
	})
	local HitboxSection = MainTab:CreateSection("Hitbox")
	local Toggle = MainTab:CreateToggle({
		Name = "Hitbox",
		CurrentValue = false,
		Flag = "ToggleHitboxExpander",
		Callback = function(Value)
			_G.HitboxExpander = Value
		end,
	})
	local Slider = MainTab:CreateSlider({
		Name = "Head Size",
		Range = { 10, 100 },
		Increment = 1,
		Suffix = "Studs³",
		CurrentValue = 10,
		Flag = "sliderhitboxsize",
		Callback = function(Value)
			_G.HeadSize = Value
		end,
	})
	local Toggle = MainTab:CreateToggle({
		Name = "Disable Player Hitbox in Vehicle",
		CurrentValue = false,
		Flag = "ToggleHitboxExpander",
		Callback = function(Value)
			_G.HitboxVehiclePlayer = Value
		end,
	})
	local GraphicsSection = GraphicsTab:CreateSection("Graphics")
	local Button = GraphicsTab:CreateDropdown({
		Name = "Graphic Selection",
		Options = { "ShadowMap", "Voxel", "Future" },
		CurrentOption = { "ShadowMap" },
		MultipleOptions = false,
		Flag = "graphictypebutton",
		Callback = function(Value)
			game:GetService("Lighting").Technology = Value[1]
		end,
	})
	Button:Set(game:GetService("Lighting").Technology.Name)
	local Button = GraphicsTab:CreateToggle({
		Name = "Global Shadows",
		CurrentValue = true,
		Callback = function(v)
			game:GetService("Lighting").GlobalShadows = v
		end,
	})
	local TeleportSection = TeleportTab:CreateSection("Teleports")
	local function TeleportToPoint(pos)
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
			LocalPlayer.Character:SetPrimaryPartCFrame(pos)
		end
	end
	local Button = TeleportTab:CreateButton({
		Name = "Your Base",
		Callback = function()
			if LocalPlayer.Team == game:GetService("Teams").Loading then
				game.StarterGui:SetCore(
					"SendNotification",
					{ Title = "Abacate7 Menu V2", Text = "Your no have base!", Duration = 5 }
				)
			else
				TeleportToPoint(PosMap[LocalPlayer.Team.Name .. "Base"])
			end
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🔴Alpha",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Alpha.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🟠Bravo",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Bravo.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🟡Charlie",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Charlie.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🟢Delta",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Delta.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🟢Echo",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Echo.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🔵Foxtrot",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Foxtrot.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🔵Golf",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Golf.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🔵Hotel",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Hotel.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🟣Kilo",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Kilo.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🟣Lima",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Lima.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🌷͙Omega",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Omega.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "📚Romeo",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Romeo.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🟤Sierra",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Sierra.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "💃Tango",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Tango.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "⬜Victor",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Victor.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "⚫Zulu",
		Callback = function()
			TeleportToPoint(PosMap[game:GetService("Teams").Zulu.Name .. "Base"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "🏁Capture Point",
		Callback = function()
			TeleportToPoint(PosMap["CapturePoint"])
		end,
	})
	local Button = TeleportTab:CreateButton({
		Name = "Teleport RandomCrate",
		Callback = function()
			if #gameSystems["Crate Workspace"]:GetChildren() > 0 then
				for _, Create in gameSystems["Crate Workspace"]:GetChildren() do
					if
						(Create:GetAttribute("Owner") ~= tostring(LocalPlayer)) or (
							Create:GetAttribute("Interated") == 1
						)
					then
						TeleportToPoint(Create.CFrame * CFrame.new(0, 3, 0))
						return
					end
				end
			else
				game.StarterGui:SetCore(
					"SendNotification",
					{ Title = "Abacate7 Menu V2", Text = "No Have Crates to stolen!", Duration = 5 }
				)
			end
		end,
	})
	local function CreatePlayerForMap()
		local Frame = Instance.new("Frame")
		Frame.Size = UDim2.new(0.01, 0, 0.033, 0)
		local UiCorner = Instance.new("UICorner")
		UiCorner.CornerRadius = UDim.new(1, 8)
		UiCorner.Parent = Frame
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		UIAspectRatioConstraint.Parent = Frame
		local TextLabel = Instance.new("TextLabel")
		TextLabel.Position = UDim2.new(-1.083, 0, -0.5, 0)
		TextLabel.Size = UDim2.new(0, 38, 0, 24)
		TextLabel.TextScaled = true
		TextLabel.BackgroundTransparency = 1
		TextLabel.TextStrokeTransparency = 0
		TextLabel.Parent = Frame
		return Frame
	end
	local function CreateMap()
		if _G.MapConnectionUpdate then
			_G.MapConnectionUpdate:Disconnect()
			_G.MapConnectionUpdate = nil
			if LocalPlayer.PlayerGui:FindFirstChild("MapHack") then
				LocalPlayer.PlayerGui.MapHack:Destroy()
			end
			return
		end
		local ScreenGui = Instance.new("ScreenGui")
		ScreenGui.IgnoreGuiInset = true
		ScreenGui.Name = "MapHack"
		ScreenGui.Parent = LocalPlayer.PlayerGui
		local ButtonExit = Instance.new("TextButton")
		ButtonExit.BackgroundColor3 = Color3.new(1, 0, 0)
		ButtonExit.Size = UDim2.new(0.15, 0, 0.163, 0)
		ButtonExit.Position = UDim2.new(0.989, 0, -0.163, 0)
		ButtonExit.FontFace.Weight = Enum.FontWeight.Bold
		ButtonExit.Text = "X"
		ButtonExit.TextColor3 = Color3.new(1, 1, 1)
		ButtonExit.TextScaled = true
		local UiCorner2 = Instance.new("UICorner")
		UiCorner2.CornerRadius = UDim.new(1, 8)
		UiCorner2.Parent = ButtonExit
		local UIAspectRatioConstraint2 = Instance.new("UIAspectRatioConstraint")
		UIAspectRatioConstraint2.Parent = ButtonExit
		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
		ImageLabel.Size = UDim2.new(0.25, 0, 0.612, 0)
		ImageLabel.Image = "rbxassetid://18636339655"
		ImageLabel.Parent = ScreenGui
		ButtonExit.Parent = ImageLabel
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		UIAspectRatioConstraint.AspectRatio = 1.09
		UIAspectRatioConstraint.Parent = ImageLabel
		local UiStroke = Instance.new("UIStroke")
		UiStroke.Color = Color3.new(0.35, 0.35, 0.35)
		UiStroke.Thickness = 4.3
		UiStroke.Parent = ImageLabel
		local FolderPlayers = Instance.new("Folder")
		FolderPlayers.Name = "FolderPlayers"
		FolderPlayers.Parent = ImageLabel
		_G.MapConnectionUpdate = game:GetService("RunService").Heartbeat:Connect(function()
			for _, player in Players:GetPlayers() do
				if player.Team and (player.Team ~= game:GetService("Teams").Loading) then
					if not FolderPlayers:FindFirstChild(tostring(player.Team)) then
						local FrameCustom = CreatePlayerForMap()
						FrameCustom.Name = tostring(player.Team)
						FrameCustom.BackgroundColor3 = player.TeamColor.Color
						FrameCustom.TextLabel.TextColor3 = player.TeamColor.Color
						FrameCustom.TextLabel.TextScaled = player == LocalPlayer
						FrameCustom.TextLabel.Text = tostring(player.Team)
						FrameCustom.Parent = FolderPlayers
					else
						local FrameCustom = FolderPlayers[tostring(player.Team)]
						local PlayerPosition3D = player.Character:GetPivot().Position
						local PlayerPositionXY = (Vector2.new(PlayerPosition3D.X, PlayerPosition3D.Z) / 6600)
							+ Vector2.new(0.492, 0.44)
						FrameCustom.Position = UDim2.new(PlayerPositionXY.X, 0, PlayerPositionXY.Y, 0)
					end
				end
			end
		end)
		ButtonExit.Activated:Connect(function()
			if _G.MapConnectionUpdate then
				_G.MapConnectionUpdate:Disconnect()
				_G.MapConnectionUpdate = nil
			end
			if LocalPlayer.PlayerGui:FindFirstChild("MapHack") then
				LocalPlayer.PlayerGui.MapHack:Destroy()
			end
			return
		end)
	end
	local MapSection = MapTab:CreateSection("Map Main")
	local Button = MapTab:CreateButton({
		Name = "🗺️ Map Viewer",
		Callback = function()
			CreateMap()
		end,
	})
	local function CreateXRay()
		local highlight = Instance.new("Highlight")
		highlight.OutlineColor = Color3.new(1, 0, 0)
		highlight.Name = "XRay"
		return highlight
	end
	local function CreateEspName()
		local billboard = Instance.new("BillboardGui")
		billboard.Name = "NamePlayer"
		billboard.AlwaysOnTop = true
		billboard.MaxDistance = 1500
		billboard.Size = UDim2.new(0, 200, 0, 50)
		billboard.StudsOffset = Vector3.new(0, 1.8, 0)
		local textlabel = Instance.new("TextLabel")
		textlabel.BackgroundTransparency = 1
		textlabel.Position = UDim2.new(0, -50, 0, 0)
		textlabel.Size = UDim2.new(0, 300, 0, 20)
		textlabel.TextColor3 = Color3.new(1, 1, 1)
		textlabel.TextSize = 15
		textlabel.Text = "Non Team"
		textlabel.Font = Enum.Font.SourceSansBold
		textlabel.Parent = billboard
		return billboard, textlabel
	end
	local function handlePlayer(plr)
		if not plr.Character or not LocalPlayer.Character or not LocalPlayer.Character.PrimaryPart then
			return
		end
		local head = plr.Character:FindFirstChild("Head")
		if not head then
			return
		end
		if head:FindFirstChildOfClass("Decal") then
			head:FindFirstChildOfClass("Decal"):Destroy()
		end
		local distance = (plr.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
		local nameBillboard = head:FindFirstChild("NamePlayer")
		local xRay = plr.Character:FindFirstChild("XRay")
		local ShieldBool = plr.Character:FindFirstChildOfClass("ForceField")
		if nameBillboard then
			nameBillboard.MaxDistance = _G.espRange
		end
		if distance > _G.espRange then
			if xRay then
				xRay:Destroy()
			end
			if nameBillboard then
				nameBillboard:Destroy()
			end
			return
		end
		if _G.EspPlayers then
			if not xRay then
				local newXRay = CreateXRay()
				newXRay.FillColor = plr.TeamColor.Color
				newXRay.OutlineColor = plr.TeamColor.Color
				newXRay.Parent = plr.Character
			end
			if not nameBillboard then
				local billboard, textlabel = CreateEspName()
				billboard.Adornee = head
				textlabel.Text = tostring(plr.Team)
				textlabel.TextColor3 = plr.TeamColor.Color
				textlabel.TextStrokeTransparency = 0
				billboard.Parent = head
			else
				local textlabel = nameBillboard.TextLabel
				textlabel.Text = (ShieldBool and (tostring(plr.Team) .. " (Shield)")) or tostring(plr.Team)
			end
		else
			if xRay then
				xRay:Destroy()
			end
			if nameBillboard then
				nameBillboard:Destroy()
			end
		end
	end
	local function handleVehicle(obj)
		if not LocalPlayer.Character or not LocalPlayer.Character.PrimaryPart then
			return
		end
		local distance = (obj:GetPivot().Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
		if not _G.EspVehicle or (distance < 20) then
			if obj:FindFirstChild("XRay") then
				obj.XRay:Destroy()
			end
			return
		end
		if not obj:FindFirstChild("XRay") then
			local highlight = CreateXRay()
			highlight.FillColor = Color3.new(0, 0, 1)
			highlight.OutlineColor = Color3.new(0, 0, 1)
			highlight.Parent = obj
		end
	end
	local function handleHitbox(player)
		if
			(player ~= LocalPlayer)
			and player.Character
			and player.Character:FindFirstChild("Head")
			and player.Character:FindFirstChild("Humanoid")
		then
			local HitboxSize = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
			local HitboxNormal = Vector3.new(1.198, 1.202, 1.198)
			player.Character.Head.Size = (_G.HitboxExpander and HitboxVehicle)
				or (not _G.HitboxVehiclePlayer and HitboxSize)
				or (player.Character.Humanoid.SeatPart and HitboxNormal)
				or HitboxSize
			player.Character.Head.Transparency = (_G.HitboxExpander and 0.9) or 0
			player.Character.Head.Material = (_G.HitboxExpander and Enum.Material.Neon) or Enum.Material.SmoothPlastic
			player.Character.Head.CanCollide = false
			player.Character.Head.CanQuery = true
			player.Character.Head.Massless = true
		end
	end
	local KeyFunction = { J = SitProximity, M = CreateMap }
	game:GetService("UserInputService").InputBegan:Connect(function(i, g)
		if g then
			return
		end
		local func = KeyFunction[i.KeyCode.Name]
		if func then
			func()
		end
	end)
	while task.wait(1 / 40) do
		for _, player in Players:GetPlayers() do
			if player ~= LocalPlayer then
				handlePlayer(player)
				handleHitbox(player)
			end
		end
		for _, foldername in validFolders do
			local folder = gameSystems:FindFirstChild(foldername)
			if folder then
				for _, model in folder:GetChildren() do
					if model:IsA("Model") then
						handleVehicle(model)
					end
				end
			end
		end
	end
end
