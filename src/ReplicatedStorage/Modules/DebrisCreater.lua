-- What the sigma?

return {
	["DebrisCreate"] = function(p1, p2, p3, p4, p5, p6, p_u_7, p8)
		if not game:GetService("RunService"):IsServer() then
			local v9 = {}
			local v10 = {}
			for _, v11 in ipairs(game.Workspace:GetChildren()) do
				if v11:FindFirstChildOfClass("Humanoid", true) then
					table.insert(v10, v11)
				end
			end
			local v12 = math.random(0, 360)
			for v13 = 1, p3 do
				local v14 = Instance.new("Part", game.Workspace)
				v14.CanCollide = false
				v14.CanTouch = false
				v14.CanQuery = false
				v14.Anchored = true
				v14.Size = p4
				local v15 = CFrame.new
				local v16 = CFrame.new(p1)
				local v17 = CFrame.new
				local v18 = 360 / p3 * v13 + v12
				v14.CFrame = v15((v16 * v17(0, math.rad(v18), 0) * CFrame.new(0.1, 0, 0)).Position, p1)
				v14.TopSurface = Enum.SurfaceType.Smooth
				v14.BottomSurface = Enum.SurfaceType.Smooth
				local v19 = CFrame.new(v14.Position)
				local v20 = CFrame.Angles
				local v21 = 360 / p3 * v13 + v12
				local v22 = v19 * v20(0, math.rad(v21), 0) * CFrame.new(p2, 15, 0)
				local v23 = Ray.new(v22.Position, Vector3.new(0, 100, 0))
				local v24, v25 = game.Workspace:FindPartOnRayWithIgnoreList(v23, { v14 })
				local v26 = Ray.new(v25 or v22.Position, Vector3.new(0, -200, 0))
				table.insert(v10, v14)
				table.insert(v10, v24)
				local v27, v28 = game.Workspace:FindPartOnRayWithIgnoreList(v26, v10)
				local v29 = false
				local v30
				if v28 then
					v30 = false
				else
					v14:Destroy()
					v30 = true
				end
				if v28 then
					if v28.Y < p1.Y - 20 then
						v14:Destroy()
						v29 = true
					end
				end
				if not (v30 or v29) then
					v14.Material = v27.Material
					v14.Color = v27.Color
					v14.Transparency = v27.Transparency
					v14.TopSurface = v27.TopSurface
					v14.BottomSurface = v27.BottomSurface
					v14.LeftSurface = v27.LeftSurface
					v14.RightSurface = v27.RightSurface
					v14.FrontSurface = v27.FrontSurface
					v14.BackSurface = v27.BackSurface
					local v31
					if p6 then
						local v32 = CFrame.Angles
						local v33 = math.random(-180, 180)
						local v34 = math.rad(v33)
						local v35 = math.random(-180, 180)
						local v36 = math.rad(v35)
						local v37 = math.random(-180, 180)
						v31 = v32(v34, v36, (math.rad(v37)))
					else
						v31 = v14.CFrame.Rotation * p8
					end
					game:GetService("TweenService"):Create(v14, Tween0o.new(p5, Enum.EasingStyle.Quart), {
						["CFrame"] = CFrame.new(v28) * v31
					}):Play()
					table.insert(v9, v14)
				end
				game:GetService("Debris"):AddItem(v14, p_u_7 + 2)
			end
			for _, v_u_38 in ipairs(v9) do
				coroutine.wrap(function()
					-- upvalues: (copy) p_u_7, (copy) v_u_38
					task.wait(p_u_7 + math.random(0, 300) / 1000)
					v_u_38.Anchored = false
				end)()
			end
		end
	end
}