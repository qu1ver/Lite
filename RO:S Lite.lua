-- discord.gg/9vHyMhmvWT



local a=game.Players.LocalPlayer;local b=workspace.CurrentCamera;local c=b.WorldToViewportPoint;local d=Vector3.new(0,0.5,0)local e=Vector3.new(0,3,0)local f={}local g=false;local h=false;function createBox()local a=Drawing.new("Square")a.Visible=false;a.Color=Color3.new(0,0,0)a.Thickness=3;a.Transparency=1;a.Filled=false;local b=Drawing.new("Square")b.Visible=false;b.Color=Color3.new(1,1,1)b.Thickness=1;b.Transparency=1;b.Filled=false;return a,b end;function boxesp(i)if not f[i]then f[i]={createBox()}end;local j,k=unpack(f[i])local l;l=game:GetService("RunService").RenderStepped:Connect(function()if i.Character and i.Character:FindFirstChild("Humanoid")and i.Character:FindFirstChild("HumanoidRootPart")and i~=a and i.Character.Humanoid.Health>0 then local f=i.Character.HumanoidRootPart;local l=i.Character.Head;local m,n=c(b,f.Position)local d=c(b,l.Position+d)local b=c(b,f.Position-e)if n and g then j.Size=Vector2.new(1000/m.Z,d.Y-b.Y)j.Position=Vector2.new(m.X-j.Size.X/2,m.Y-j.Size.Y/2)j.Visible=false;k.Size=Vector2.new(1000/m.Z,d.Y-b.Y)k.Position=Vector2.new(m.X-k.Size.X/2,m.Y-k.Size.Y/2)k.Visible=true;if h and i.TeamColor==a.TeamColor then k.Visible=false;j.Visible=false else k.Color=Color3.new(1,0,0)end else j.Visible=false;k.Visible=false end else j.Visible=false;k.Visible=false end end)i.AncestryChanged:Connect(function(a,a)if not a then l:Disconnect()j:Remove()k:Remove()f[i]=nil end end)end;for a,a in pairs(game.Players:GetPlayers())do boxesp(a)end;game.Players.PlayerAdded:Connect(function(a)boxesp(a)end)game.Players.PlayerRemoving:Connect(function(a)if f[a]then f[a][1]:Remove()f[a][2]:Remove()f[a]=nil end end)local a=game:GetService("Players")local b=a.LocalPlayer;local c=workspace.CurrentCamera;local d=game:GetService("RunService")local e=game:GetService("UserInputService")local f=game:GetService("TweenService")local i=false;_G.AimbotEnabled=false;_G.TweenCheck=true;_G.AimPart="Head"_G.Sensitivity=0;_G.CircleSides=64;_G.CircleColor=Color3.fromRGB(255,255,255)_G.CircleTransparency=1;_G.CircleRadius=80;_G.CircleFilled=false;_G.CircleVisible=false;_G.CircleThickness=0;local j=Drawing.new("Circle")j.Position=Vector2.new(c.ViewportSize.X/2,c.ViewportSize.Y/2)j.Radius=_G.CircleRadius;j.Filled=_G.CircleFilled;j.Color=_G.CircleColor;j.Visible=_G.CircleVisible;j.Transparency=_G.CircleTransparency;j.NumSides=_G.CircleSides;j.Thickness=_G.CircleThickness;local function k()local d=_G.CircleRadius;local f=nil;for a,a in pairs(a:GetPlayers())do if a.Name~=b.Name then if _G.TeamCheck==true then if a.Team~=b.Team then if a.Character and a.Character:FindFirstChild("Humanoid")and a.Character.Humanoid.Health>0 then local b=c:WorldToScreenPoint(a.Character:FindFirstChild("HumanoidRootPart",true).Position)local b=(Vector2.new(e:GetMouseLocation().X,e:GetMouseLocation().Y)-Vector2.new(b.X,b.Y)).Magnitude;if b<d then d=b;f=a end end end else if a.Character and a.Character:FindFirstChild("Humanoid")and a.Character.Humanoid.Health>0 then local b=c:WorldToScreenPoint(a.Character:FindFirstChild("HumanoidRootPart",true).Position)local b=(Vector2.new(e:GetMouseLocation().X,e:GetMouseLocation().Y)-Vector2.new(b.X,b.Y)).Magnitude;if b<d then d=b;f=a end end end end end;return f end;e.InputBegan:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton2 then i=true end end)e.InputEnded:Connect(function(a)if a.UserInputType==Enum.UserInputType.MouseButton2 then i=false end end)d.RenderStepped:Connect(function()j.Position=e:GetMouseLocation()j.Radius=_G.CircleRadius;j.Filled=_G.CircleFilled;j.Color=_G.CircleColor;j.Visible=_G.CircleVisible;j.Transparency=_G.CircleTransparency;j.NumSides=_G.CircleSides;j.Thickness=_G.CircleThickness;if i and _G.AimbotEnabled then local a=k()if a and a.Character and a.Character:FindFirstChild(_G.AimPart)then local a=f:Create(c,TweenInfo.new(_G.Sensitivity,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{CFrame=CFrame.new(c.CFrame.Position,a.Character[_G.AimPart].Position)})a:Play()end end end)local a=loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()local a=a:MakeWindow({Name="Astolfo.gg [LITE]",HidePremium=false,SaveConfig=true,ConfigFolder="ASTOLFO.LITE"})local b=a:MakeTab({Name="Aimbot",Icon="rbxassetid://4483345998",PremiumOnly=false})b:AddToggle({Name="Aimbot enabled",Default=false,Callback=function(a)_G.AimbotEnabled=a end})b:AddToggle({Name="Show FOV",Default=false,Callback=function(a)_G.CircleVisible=a end})local b=a:MakeTab({Name="Visuals",Icon="rbxassetid://4483345998",PremiumOnly=false})b:AddToggle({Name="ESP",Default=false,Callback=function(a)g=a end})b:AddToggle({Name="Team Check",Default=false,Callback=function(a)h=a end})local a=a:MakeTab({Name="Colors",Icon="rbxassetid://4483345998",PremiumOnly=false})tab:AddColorpicker({Name="Box Color",Default=Color3.fromRGB(255,0,0),Callback=function(a)print(a)end})
