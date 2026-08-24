repeat wait() until game:IsLoaded()

if LPH=5FOBFUSCATED =3D=3D nil then
=9LPH=5FNO=5FVIRTUALIZE =3D function(...) return (...) end
=9LPH=5FENCSTR =3D function(...) return (...) end
=9LRM=5FSANITIZE =3D function(...) return ... end
end

local cloneref =3D cloneref or function(o) return o end
local TweenService =3D cloneref(game:GetService("TweenService"))
local UserInputService =3D cloneref(game:GetService("UserInputService"))
local Players =3D cloneref(game:GetService("Players"))
local TextService =3D cloneref(game:GetService("TextService"))
local HttpService =3D cloneref(game:GetService("HttpService"))
local Lighting =3D cloneref(game:GetService("Lighting"))
local StarterGui =3D cloneref(game:GetService("StarterGui"))
local Workspace =3D cloneref(game:GetService("Workspace"))

local LocalPlayer =3D cloneref(Players.LocalPlayer)

local IsMobile =3D UserInputService.TouchEnabled and not UserInputService.=
KeyboardEnabled and not UserInputService.MouseEnabled

if identifyexecutor and identifyexecutor() =3D=3D "Wave" then
=9getgenv().gethui =3D function()
=9=9return game:GetService("CoreGui")
=9end
end

local Folder=5FConfigs =3D {
=9Directory =3D "solixhub",
=9Assets =3D "solixhub/Assets",
=9Configs =3D "solixhub/Configs",
=9Datas =3D "solixhub/Datas",
=9Images =3D "solixhub/Images",
=9Themes =3D "solixhub/Themes"
}

for =5F, Folder in Folder=5FConfigs do
=9if not isfolder(Folder) then
=9=9makefolder(Folder)
=9end
end

local GameId =3D tostring(game.GameId)
local GameConfigFolder =3D Folder=5FConfigs.Configs .. "/" .. GameId

if not isfolder(GameConfigFolder) then
=9makefolder(GameConfigFolder)
end

local GameList =3D {
=9["9584852943"] =3D { id =3D "61e0f394c005902cda5643069ac59226", keyless =
=3D false }, -- +1 Speed Keyboard Escape
=9["7326934954"] =3D { id =3D "00e140acb477c5ecde501c1d448df6f9", keyless =
=3D true }, -- 99 Nights in the Forest
=9["10148749921"] =3D { id =3D "0d120852a6e2eb65c691e5ce2c628429", keyless=
 =3D false }, -- Animal Hospital
=9["4658598196"] =3D { id =3D "d383a1d5c0a779bbfd0a2b74437923d5", keyless =
=3D true }, -- Attack on Titan Revolution
=9["5130394318"] =3D { id =3D "3e7a75a970118d0f0cf629369524dc7d", keyless =
=3D false }, -- Bizarre Lineage
=9["994732206"] =3D { id =3D "e2718ddebf562c5c4080dfce26b09398", keyless =
=3D false }, -- Blox Fruits
=9["10200395747"] =3D { id =3D "535322ccaa7a6ba59febea91b085c89c", keyless=
 =3D true }, -- Grow a Garden 2
=9["3808223175"] =3D { id =3D "4fe2dfc202115670b1813277df916ab2", keyless =
=3D false }, -- Jujutsu Infinite
=9["66654135"] =3D { id =3D "1bc67a62ae73efe4babe9f2b6b7e4646", keyless =
=3D true }, -- Murder Mystery 2
=9["7395930870"] =3D { id =3D "d3191d52e71790d40a4d169f5becd325", keyless =
=3D true }, -- Sell Lemons
=9["1511883870"] =3D { id =3D "fefdf5088c44beb34ef52ed6b520507c", keyless =
=3D false }, -- Shindo Life
=9["7219654364"] =3D { id =3D "a5182e78f7af6810e08e05cb72542dbf", keyless =
=3D true }, -- Sheriff VS Murderer
=9["10475794799"] =3D { id =3D "7c9b5f90b8e6b7f89698e773feb9eac2", keyless=
 =3D true }, -- Dig & Clean
=9["7613921865"] =3D { id =3D "46d43d3868af285218f28453704b620b", keyless =
=3D true }, -- Anime Expeditions
=9["10563114921"] =3D { id =3D "82f55d768183c258359d9a7c093d5a60", keyless=
 =3D false }, -- Steal An Egg
    ["10440833423"] =3D { id =3D "19c44f6c67f0e82e45e456bf81646e01", keyle=
ss =3D true}, -- Greedy Growers

}

local Config =3D {
=9File =3D "solixhub/savedkey.txt",
=9Workink =3D "https://rekonise.com/linkvertise-2bbnc",
=9Rinku =3D "https://rekonise.com/rinku-z0di3",
=9Discord =3D "https://discord.gg/wGTAxjG6Rp",
=9Shop =3D "https://solixhub.com/free",
}

local ErrorMessages =3D {
=9KEY=5FEXPIRED =3D "Your key ran out. Buy a new one for $1.99",
=9KEY=5FBANNED =3D "This key is banned. Join Discord for help.",
=9KEY=5FHWID=5FLOCKED =3D "Key used on another PC. Reset HWID in Discord."=
,
=9KEY=5FINCORRECT =3D "Wrong key. Check it and try again.",
=9KEY=5FINVALID =3D "That doesnt look like a key.",
=9SCRIPT=5FID=5FINCORRECT =3D "Script not found.",
=9SCRIPT=5FID=5FINVALID =3D "Script deleted.",
=9INVALID=5FEXECUTOR =3D "Your executor isnt supported.",
=9SECURITY=5FERROR =3D "Something went wrong. Try again.",
=9TIME=5FERROR =3D "Fix your PC clock and try again.",
=9UNKNOWN=5FERROR =3D "Something broke. Join Discord for help.",
}

local GameConfig =3D GameList[GameId]

if not GameConfig then
=9StarterGui:SetCore("SendNotification", {
=9=9Title =3D "NBEE HUB",
=9=9Text =3D "=C4=90=C3=A2y l=C3=A0 b=E1=BA=A3n fanmade c=E1=BB=A7a solixh=
ub",
=9=9Icon =3D "rbxassetid://72573628342433",
=9})
=9return
end

local ScriptId =3D GameConfig.id
local IsKeyless =3D GameConfig.keyless

LowUnc =3D not (hookfunction and hookmetamethod)

local function DeleteFile(Input)
=9if isfile(Input) then
=9=9delfile(Input)
=9end
end

local LuarmorApi =3D loadstring(game:HttpGet("https://sdkapi-public.luarmo=
r.net/library.lua"))()
LuarmorApi.script=5Fid =3D ScriptId

local LoaderUrl =3D "https://api.luarmor.net/files/v4/loaders/" .. ScriptI=
d .. ".lua"

do
=9local wait =3D task.wait
=9local spawn =3D task.spawn
=9local delay =3D task.delay

=9local FromRGB =3D Color3.fromRGB
=9local UDim2New =3D UDim2.new
=9local UDimNew =3D UDim.new
=9local Vector2New =3D Vector2.new
=9local MathClamp =3D math.clamp
=9local MathFloor =3D math.floor
=9local MathMax =3D math.max
=9local MathMin =3D math.min
=9local TableInsert =3D table.insert
=9local StringFormat =3D string.format
=9local InstanceNew =3D Instance.new

=9local Theme =3D {
=9=9Background =3D FromRGB(15, 14, 22),
=9=9Inline =3D FromRGB(23, 22, 33),
=9=9Border =3D FromRGB(45, 42, 65),
=9=9Outline =3D FromRGB(38, 36, 55),
=9=9Shadow =3D FromRGB(8, 6, 14),
=9=9Text =3D FromRGB(242, 240, 248),
=9=9Inactive =3D FromRGB(148, 144, 162),
=9=9Accent =3D FromRGB(130, 110, 245),
=9=9Element =3D FromRGB(32, 30, 48),
=9=9Gradient =3D FromRGB(180, 160, 255),
=9}

=9local FontFace do
=9=9local ok, face =3D pcall(function()
=9=9=9return Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.Fon=
tWeight.Bold, Enum.FontStyle.Normal)
=9=9end)
=9=9FontFace =3D (ok and face) or Font.fromEnum(Enum.Font.GothamBold)
=9end

=9local GetUI =3D gethui or function()
=9=9local ok, result =3D pcall(function()
=9=9=9return game:GetService("CoreGui")
=9=9end)
=9=9return ok and result or nil
=9end

=9local function SafeGetUI()
=9=9local ok, result =3D pcall(GetUI)
=9=9if ok and result then
=9=9=9return result
=9=9end
=9=9return game:GetService("CoreGui")
=9end

=9local function Create(class, props)
=9=9local inst =3D InstanceNew(class)
=9=9for k, v in props do
=9=9=9if k ~=3D "Parent" then
=9=9=9=9pcall(function()
=9=9=9=9=9inst[k] =3D v
=9=9=9=9end)
=9=9=9end
=9=9end
=9=9if props.Parent then
=9=9=9inst.Parent =3D props.Parent
=9=9end
=9=9return inst
=9end

=9local function Corner(parent, radius)
=9=9return Create("UICorner", {
=9=9=9Parent =3D parent,
=9=9=9CornerRadius =3D UDimNew(0, radius or 5),
=9=9})
=9end

=9local function Stroke(parent, color, transparency)
=9=9return Create("UIStroke", {
=9=9=9Parent =3D parent,
=9=9=9Color =3D color or Theme.Border,
=9=9=9Thickness =3D 1,
=9=9=9Transparency =3D transparency or 0,
=9=9=9ApplyStrokeMode =3D Enum.ApplyStrokeMode.Border,
=9=9})
=9end

=9local function Tween(inst, info, goal)
=9=9local tw =3D TweenService:Create(inst, info or TweenInfo.new(0.3, Enum=
.EasingStyle.Quad, Enum.EasingDirection.Out), goal)
=9=9tw:Play()
=9=9return tw
=9end

=9local function ToTime(a)
=9=9if not a or a <=3D 0 then
=9=9=9return "Lifetime"
=9=9end

=9=9local left =3D a - os.time()
=9=9if left < 0 then
=9=9=9return "Expired"
=9=9end

=9=9local days =3D MathFloor(left / 86400)
=9=9local hours =3D MathFloor((left % 86400) / 3600)
=9=9local minutes =3D MathFloor((left % 3600) / 60)
=9=9local seconds =3D left % 60

=9=9if days > 0 then
=9=9=9return StringFormat("%dd %dh %dm", days, hours, minutes)
=9=9elseif hours > 0 then
=9=9=9return StringFormat("%dh %dm %ds", hours, minutes, seconds)
=9=9elseif minutes > 0 then
=9=9=9return StringFormat("%dm %ds", minutes, seconds)
=9=9end
=9=9return StringFormat("%ds", seconds)
=9end

=9local Holder =3D Create("ScreenGui", {
=9=9Parent =3D SafeGetUI(),
=9=9Name =3D "\0",
=9=9ZIndexBehavior =3D Enum.ZIndexBehavior.Global,
=9=9DisplayOrder =3D 2,
=9=9ResetOnSpawn =3D false,
=9})

=9local NotifHolder =3D Create("Frame", {
=9=9Parent =3D Holder,
=9=9Name =3D "\0",
=9=9Size =3D UDim2New(0, 0, 1, 0),
=9=9Position =3D UDim2New(1, 0, 0, 0),
=9=9AnchorPoint =3D Vector2New(1, 0),
=9=9BackgroundTransparency =3D 1,
=9=9BorderSizePixel =3D 0,
=9=9AutomaticSize =3D Enum.AutomaticSize.X,
=9})

=9Create("UIListLayout", {
=9=9Parent =3D NotifHolder,
=9=9SortOrder =3D Enum.SortOrder.LayoutOrder,
=9=9HorizontalAlignment =3D Enum.HorizontalAlignment.Right,
=9=9Padding =3D UDimNew(0, 12),
=9})

=9Create("UIPadding", {
=9=9Parent =3D NotifHolder,
=9=9PaddingLeft =3D UDimNew(0, 12),
=9=9PaddingRight =3D UDimNew(0, 12),
=9=9PaddingTop =3D UDimNew(0, 12),
=9=9PaddingBottom =3D UDimNew(0, 12),
=9})

=9local NotifLayoutOrder =3D 0

=9local function Notify(data)
=9=9wait()
=9=9NotifLayoutOrder +=3D 1

=9=9local title =3D data.Title or "Solix Hub"
=9=9local desc =3D data.Description or ""
=9=9local duration =3D data.Duration or 5
=9=9local accent =3D data.Color or Theme.Accent

=9=9local pad=5Fh, pad=5Fv, gap, bar=5Fgap, bar=5Fh =3D 10, 8, 4, 6, 3
=9=9local accent=5Fw, accent=5Fgap =3D 3, 8
=9=9local max=5Fw, min=5Fw =3D 300, 160
=9=9local title=5Fsize, desc=5Fsize =3D 14, 12

=9=9local function text=5Fsize(text, font=5Fsize, width)
=9=9=9return TextService:GetTextSize(text, font=5Fsize, Enum.Font.Gotham, =
Vector2New(width > 0 and width or 10000, 10000))
=9=9end

=9=9local text=5Fw =3D max=5Fw - pad=5Fh * 2 - accent=5Fw - accent=5Fgap
=9=9local title=5Fsz =3D text=5Fsize(title, title=5Fsize, text=5Fw)
=9=9local desc=5Fsz =3D desc ~=3D "" and text=5Fsize(desc, desc=5Fsize, te=
xt=5Fw) or Vector2New(0, 0)
=9=9local title=5Fh =3D MathMax(MathFloor(title=5Fsz.Y + 0.5), title=5Fsiz=
e + 2)
=9=9local desc=5Fh =3D desc ~=3D "" and MathMax(MathFloor(desc=5Fsz.Y + 0.=
5), desc=5Fsize + 2) or 0
=9=9local has=5Fdesc =3D desc=5Fh > 0

=9=9local content=5Fw =3D MathMin(
=9=9=9MathMax(MathFloor(title=5Fsz.X + 0.5), MathFloor(desc=5Fsz.X + 0.5),=
 min=5Fw - pad=5Fh * 2 - accent=5Fw - accent=5Fgap)
=9=9=9=9+ pad=5Fh * 2 + accent=5Fw + accent=5Fgap,
=9=9=9max=5Fw
=9=9)
=9=9local body=5Fh =3D title=5Fh + (has=5Fdesc and (gap + desc=5Fh) or 0)
=9=9local size=5Fy =3D pad=5Fv * 2 + body=5Fh + bar=5Fgap + bar=5Fh

=9=9local fade=5Finfo =3D TweenInfo.new(0.35, Enum.EasingStyle.Exponential=
, Enum.EasingDirection.Out)
=9=9local bar=5Finfo =3D TweenInfo.new(duration, Enum.EasingStyle.Linear, =
Enum.EasingDirection.Out)

=9=9local notif =3D Create("Frame", {
=9=9=9Parent =3D NotifHolder,
=9=9=9BackgroundColor3 =3D Theme.Inline,
=9=9=9BackgroundTransparency =3D 1,
=9=9=9BorderSizePixel =3D 0,
=9=9=9ClipsDescendants =3D true,
=9=9=9LayoutOrder =3D NotifLayoutOrder,
=9=9=9Size =3D UDim2New(0, 0, 0, size=5Fy),
=9=9=9ZIndex =3D 50,
=9=9})
=9=9Corner(notif, 5)
=9=9local notif=5Fstroke =3D Stroke(notif, Theme.Border, 0.45)
=9=9notif=5Fstroke.Transparency =3D 1

=9=9Create("UIPadding", {
=9=9=9Parent =3D notif,
=9=9=9PaddingLeft =3D UDimNew(0, pad=5Fh),
=9=9=9PaddingRight =3D UDimNew(0, pad=5Fh),
=9=9=9PaddingTop =3D UDimNew(0, pad=5Fv),
=9=9=9PaddingBottom =3D UDimNew(0, pad=5Fv),
=9=9})

=9=9Create("UIListLayout", {
=9=9=9Parent =3D notif,
=9=9=9Padding =3D UDimNew(0, bar=5Fgap),
=9=9=9SortOrder =3D Enum.SortOrder.LayoutOrder,
=9=9=9FillDirection =3D Enum.FillDirection.Vertical,
=9=9})

=9=9local body =3D Create("Frame", {
=9=9=9Parent =3D notif,
=9=9=9Size =3D UDim2New(1, 0, 0, body=5Fh),
=9=9=9BackgroundTransparency =3D 1,
=9=9=9BorderSizePixel =3D 0,
=9=9=9LayoutOrder =3D 1,
=9=9=9ZIndex =3D 51,
=9=9})

=9=9Create("UIListLayout", {
=9=9=9Parent =3D body,
=9=9=9Padding =3D UDimNew(0, accent=5Fgap),
=9=9=9SortOrder =3D Enum.SortOrder.LayoutOrder,
=9=9=9FillDirection =3D Enum.FillDirection.Horizontal,
=9=9})

=9=9local accent=5Fbar =3D Create("Frame", {
=9=9=9Parent =3D body,
=9=9=9Size =3D UDim2New(0, accent=5Fw, 1, 0),
=9=9=9BackgroundColor3 =3D accent,
=9=9=9BackgroundTransparency =3D 1,
=9=9=9BorderSizePixel =3D 0,
=9=9=9LayoutOrder =3D 1,
=9=9=9ZIndex =3D 51,
=9=9})
=9=9Corner(accent=5Fbar, 2)

=9=9local content =3D Create("Frame", {
=9=9=9Parent =3D body,
=9=9=9Size =3D UDim2New(1, -(accent=5Fw + accent=5Fgap), 0, body=5Fh),
=9=9=9BackgroundTransparency =3D 1,
=9=9=9BorderSizePixel =3D 0,
=9=9=9LayoutOrder =3D 2,
=9=9=9ZIndex =3D 51,
=9=9})

=9=9Create("UIListLayout", {
=9=9=9Parent =3D content,
=9=9=9Padding =3D UDimNew(0, gap),
=9=9=9SortOrder =3D Enum.SortOrder.LayoutOrder,
=9=9=9FillDirection =3D Enum.FillDirection.Vertical,
=9=9})

=9=9local title=5Flbl =3D Create("TextLabel", {
=9=9=9Parent =3D content,
=9=9=9Size =3D UDim2New(1, 0, 0, title=5Fh),
=9=9=9BackgroundTransparency =3D 1,
=9=9=9Text =3D title,
=9=9=9TextColor3 =3D Theme.Text,
=9=9=9TextSize =3D title=5Fsize,
=9=9=9FontFace =3D FontFace,
=9=9=9TextXAlignment =3D Enum.TextXAlignment.Left,
=9=9=9TextWrapped =3D true,
=9=9=9TextTransparency =3D 1,
=9=9=9LayoutOrder =3D 1,
=9=9=9ZIndex =3D 51,
=9=9})

=9=9local desc=5Flbl
=9=9if has=5Fdesc then
=9=9=9desc=5Flbl =3D Create("TextLabel", {
=9=9=9=9Parent =3D content,
=9=9=9=9Size =3D UDim2New(1, 0, 0, desc=5Fh),
=9=9=9=9BackgroundTransparency =3D 1,
=9=9=9=9Text =3D desc,
=9=9=9=9TextColor3 =3D Theme.Inactive,
=9=9=9=9TextSize =3D desc=5Fsize,
=9=9=9=9FontFace =3D FontFace,
=9=9=9=9TextXAlignment =3D Enum.TextXAlignment.Left,
=9=9=9=9TextWrapped =3D true,
=9=9=9=9TextTransparency =3D 1,
=9=9=9=9LayoutOrder =3D 2,
=9=9=9=9ZIndex =3D 51,
=9=9=9})
=9=9end

=9=9local duration=5Fbg =3D Create("Frame", {
=9=9=9Parent =3D notif,
=9=9=9Size =3D UDim2New(1, 0, 0, bar=5Fh),
=9=9=9BackgroundColor3 =3D Theme.Element,
=9=9=9BackgroundTransparency =3D 1,
=9=9=9BorderSizePixel =3D 0,
=9=9=9ClipsDescendants =3D true,
=9=9=9LayoutOrder =3D 2,
=9=9=9ZIndex =3D 51,
=9=9})
=9=9Corner(duration=5Fbg, 2)

=9=9local progress =3D Create("Frame", {
=9=9=9Parent =3D duration=5Fbg,
=9=9=9Size =3D UDim2New(1, 0, 1, 0),
=9=9=9BackgroundColor3 =3D accent,
=9=9=9BackgroundTransparency =3D 1,
=9=9=9BorderSizePixel =3D 0,
=9=9=9ZIndex =3D 52,
=9=9})

=9=9spawn(function()
=9=9=9Tween(notif, fade=5Finfo, { BackgroundTransparency =3D 0, Size =3D U=
Dim2New(0, content=5Fw, 0, size=5Fy) })
=9=9=9Tween(notif=5Fstroke, fade=5Finfo, { Transparency =3D 0.45 })
=9=9=9Tween(accent=5Fbar, fade=5Finfo, { BackgroundTransparency =3D 0 })
=9=9=9Tween(title=5Flbl, fade=5Finfo, { TextTransparency =3D 0 })
=9=9=9if desc=5Flbl then
=9=9=9=9Tween(desc=5Flbl, fade=5Finfo, { TextTransparency =3D 0 })
=9=9=9end
=9=9=9Tween(duration=5Fbg, fade=5Finfo, { BackgroundTransparency =3D 0 })
=9=9=9Tween(progress, fade=5Finfo, { BackgroundTransparency =3D 0 })
=9=9=9Tween(progress, bar=5Finfo, { Size =3D UDim2New(0, 0, 1, 0) })

=9=9=9delay(duration + 0.1, function()
=9=9=9=9Tween(notif, fade=5Finfo, { BackgroundTransparency =3D 1, Size =3D=
 UDim2New(0, 0, 0, size=5Fy) })
=9=9=9=9Tween(notif=5Fstroke, fade=5Finfo, { Transparency =3D 1 })
=9=9=9=9Tween(accent=5Fbar, fade=5Finfo, { BackgroundTransparency =3D 1 })=

=9=9=9=9Tween(title=5Flbl, fade=5Finfo, { TextTransparency =3D 1 })
=9=9=9=9if desc=5Flbl then
=9=9=9=9=9Tween(desc=5Flbl, fade=5Finfo, { TextTransparency =3D 1 })
=9=9=9=9end
=9=9=9=9Tween(duration=5Fbg, fade=5Finfo, { BackgroundTransparency =3D 1 }=
)
=9=9=9=9Tween(progress, fade=5Finfo, { BackgroundTransparency =3D 1 })
=9=9=9=9wait(0.4)
=9=9=9=9notif:Destroy()
=9=9=9end)
=9=9end)
=9end

=9local panel=5Fw =3D IsMobile and 360 or 360
=9local pad =3D IsMobile and 14 or 12
=9local logo=5Fs =3D IsMobile and 38 or 34
=9local btn=5Fh =3D IsMobile and 46 or 36
=9local btn=5Fgap =3D 8
=9local content=5Fw =3D panel=5Fw - pad * 2
=9local half=5Fw =3D MathFloor((content=5Fw - btn=5Fgap) / 2)

=9local LogoUrl =3D "https://solixhub.com/solix-logo.png"
=9local LogoFallback =3D "rbxassetid://72573628342433"

=9local function GetLogoAsset()
=9=9if type(getcustomasset) ~=3D "function" or type(writefile) ~=3D "funct=
ion" then
=9=9=9return LogoFallback
=9=9end
=9=9local images=5Fdir =3D Folder=5FConfigs.Images
=9=9if type(isfolder) =3D=3D "function" and not isfolder(images=5Fdir) and=
 type(makefolder) =3D=3D "function" then
=9=9=9pcall(makefolder, images=5Fdir)
=9=9end
=9=9local file=5Fpath =3D images=5Fdir .. "/solix-logo.png"
=9=9if type(isfile) ~=3D "function" or not isfile(file=5Fpath) then
=9=9=9local ok, content =3D pcall(function()
=9=9=9=9return game:HttpGet(LogoUrl)
=9=9=9end)
=9=9=9if not ok or type(content) ~=3D "string" or content =3D=3D "" then
=9=9=9=9return LogoFallback
=9=9=9end
=9=9=9if not pcall(writefile, file=5Fpath, content) then
=9=9=9=9return LogoFallback
=9=9=9end
=9=9end
=9=9local ok, asset=5Fid =3D pcall(getcustomasset, file=5Fpath)
=9=9if ok and type(asset=5Fid) =3D=3D "string" and asset=5Fid ~=3D "" then=

=9=9=9return asset=5Fid
=9=9end
=9=9return LogoFallback
=9end

=9local ScreenGui =3D Create("ScreenGui", {
=9=9Parent =3D SafeGetUI(),
=9=9Name =3D "\0",
=9=9ZIndexBehavior =3D Enum.ZIndexBehavior.Global,
=9=9DisplayOrder =3D 999,
=9=9ResetOnSpawn =3D false,
=9=9IgnoreGuiInset =3D true,
=9})

=9local UIScale =3D Create("UIScale", {
=9=9Parent =3D ScreenGui,
=9=9Scale =3D 1,
=9})

=9local Main =3D Create("Frame", {
=9=9Parent =3D ScreenGui,
=9=9Size =3D UDim2New(0, 0, 0, 0),
=9=9Position =3D UDim2New(0.5, 0, 0.5, 0),
=9=9AnchorPoint =3D Vector2New(0.5, 0.5),
=9=9BackgroundColor3 =3D Theme.Background,
=9=9BackgroundTransparency =3D 0,
=9=9BorderSizePixel =3D 0,
=9=9ZIndex =3D 2,
=9=9ClipsDescendants =3D true,
=9})
=9Corner(Main, 5)
=9local MainStroke =3D Stroke(Main, Theme.Border, 1)

=9Create("ImageLabel", {
=9=9Parent =3D Main,
=9=9Size =3D UDim2New(1, 55, 1, 55),
=9=9Position =3D UDim2New(0.5, 0, 0.5, 0),
=9=9AnchorPoint =3D Vector2New(0.5, 0.5),
=9=9BackgroundTransparency =3D 1,
=9=9Image =3D "rbxassetid://72573628342433",
=9=9ImageColor3 =3D Theme.Shadow,
=9=9ImageTransparency =3D 0.56,
=9=9ScaleType =3D Enum.ScaleType.Slice,
=9=9SliceCenter =3D Rect.new(Vector2New(112, 112), Vector2New(147, 147)),
=9=9SliceScale =3D 0.6,
=9=9ZIndex =3D 1,
=9})

=9local fade=5Fitems =3D {}

=9local function track(inst, kind)
=9=9TableInsert(fade=5Fitems, { Inst =3D inst, Kind =3D kind or "bg" })
=9=9return inst
=9end

=9local header=5Fh =3D logo=5Fs + 18
=9local DragArea =3D Create("Frame", {
=9=9Parent =3D Main,
=9=9Size =3D UDim2New(1, -40, 0, header=5Fh + 8),
=9=9BackgroundTransparency =3D 1,
=9=9ZIndex =3D 3,
=9})

=9local CloseBtn =3D Create("ImageButton", {
=9=9Parent =3D Main,
=9=9Size =3D UDim2New(0, IsMobile and 26 or 22, 0, IsMobile and 26 or 22),=

=9=9Position =3D UDim2New(1, -pad, 0, pad),
=9=9AnchorPoint =3D Vector2New(1, 0),
=9=9BackgroundTransparency =3D 1,
=9=9Image =3D "rbxassetid://72573628342433",
=9=9ImageTransparency =3D 1,
=9=9ImageColor3 =3D Theme.Inactive,
=9=9ScaleType =3D Enum.ScaleType.Fit,
=9=9AutoButtonColor =3D false,
=9=9ZIndex =3D 6,
=9})

=9local Logo =3D Create("ImageLabel", {
=9=9Parent =3D Main,
=9=9Size =3D UDim2New(0, logo=5Fs, 0, logo=5Fs),
=9=9Position =3D UDim2New(0, pad, 0, pad),
=9=9BackgroundTransparency =3D 1,
=9=9Image =3D LogoFallback,
=9=9ImageTransparency =3D 1,
=9=9ScaleType =3D Enum.ScaleType.Fit,
=9=9ZIndex =3D 4,
=9})
=9track(Logo, "image")

=9spawn(function()
=9=9local asset =3D GetLogoAsset()
=9=9Logo.Image =3D asset
=9=9if asset ~=3D LogoFallback then
=9=9=9Logo.ImageColor3 =3D FromRGB(255, 255, 255)
=9=9end
=9end)

=9local title=5Fsize =3D IsMobile and 18 or 16
=9local BrandRow =3D Create("Frame", {
=9=9Parent =3D Main,
=9=9Size =3D UDim2New(0, 0, 0, logo=5Fs),
=9=9Position =3D UDim2New(0, pad + logo=5Fs + 8, 0, pad),
=9=9AutomaticSize =3D Enum.AutomaticSize.X,
=9=9BackgroundTransparency =3D 1,
=9=9ZIndex =3D 4,
=9})

=9Create("UIListLayout", {
=9=9Parent =3D BrandRow,
=9=9FillDirection =3D Enum.FillDirection.Horizontal,
=9=9VerticalAlignment =3D Enum.VerticalAlignment.Center,
=9=9HorizontalAlignment =3D Enum.HorizontalAlignment.Left,
=9=9Padding =3D UDimNew(0, 0),
=9=9SortOrder =3D Enum.SortOrder.LayoutOrder,
=9})

=9local function BrandPart(text, color, order)
=9=9local lbl =3D Create("TextLabel", {
=9=9=9Parent =3D BrandRow,
=9=9=9Size =3D UDim2New(0, 0, 1, 0),
=9=9=9AutomaticSize =3D Enum.AutomaticSize.X,
=9=9=9BackgroundTransparency =3D 1,
=9=9=9Text =3D text,
=9=9=9TextColor3 =3D color,
=9=9=9TextSize =3D title=5Fsize,
=9=9=9FontFace =3D FontFace,
=9=9=9TextXAlignment =3D Enum.TextXAlignment.Left,
=9=9=9TextYAlignment =3D Enum.TextYAlignment.Center,
=9=9=9TextTransparency =3D 1,
=9=9=9LayoutOrder =3D order,
=9=9=9ZIndex =3D 4,
=9=9})
=9=9track(lbl, "text")
=9=9return lbl
=9end

=9BrandPart("solix", Theme.Text, 1)
=9BrandPart("hub", Theme.Accent, 2)
=9BrandPart(".com", Theme.Text, 3)

=9local Description =3D Create("TextLabel", {
=9=9Parent =3D Main,
=9=9Size =3D UDim2New(1, -(pad * 2), 0, 16),
=9=9Position =3D UDim2New(0, pad, 0, pad + logo=5Fs + 6),
=9=9BackgroundTransparency =3D 1,
=9=9Text =3D "key bypass by NBEEHUB",
=9=9TextColor3 =3D Theme.Inactive,
=9=9TextSize =3D IsMobile and 13 or 12,
=9=9FontFace =3D FontFace,
=9=9TextXAlignment =3D Enum.TextXAlignment.Left,
=9=9TextTransparency =3D 1,
=9=9ZIndex =3D 4,
=9})
=9track(Description, "muted")

=9local AccentLine =3D Create("Frame", {
=9=9Parent =3D Main,
=9=9Size =3D UDim2New(1, 4, 0, 1),
=9=9Position =3D UDim2New(0, -2, 0, pad + logo=5Fs + 28),
=9=9BackgroundColor3 =3D Theme.Accent,
=9=9BackgroundTransparency =3D 1,
=9=9BorderSizePixel =3D 0,
=9=9ZIndex =3D 3,
=9})
=9track(AccentLine, "accent")

=9local btn=5Fy =3D pad + logo=5Fs + 40
=9local btn=5Ftext =3D IsMobile and 14 or 13
=9local row2=5Fy =3D btn=5Fy + btn=5Fh + btn=5Fgap

=9local function MakeSideBtn(text, x, y, w)
=9=9local btn =3D Create("TextButton", {
=9=9=9Parent =3D Main,
=9=9=9Size =3D UDim2New(0, w, 0, btn=5Fh),
=9=9=9Position =3D UDim2New(0, x, 0, y),
=9=9=9BackgroundColor3 =3D Theme.Element,
=9=9=9BackgroundTransparency =3D 1,
=9=9=9BorderSizePixel =3D 0,
=9=9=9Text =3D text,
=9=9=9TextColor3 =3D Theme.Text,
=9=9=9TextSize =3D btn=5Ftext,
=9=9=9FontFace =3D FontFace,
=9=9=9AutoButtonColor =3D false,
=9=9=9TextTransparency =3D 1,
=9=9=9ZIndex =3D 4,
=9=9})
=9=9Corner(btn, 5)
=9=9local stroke =3D Stroke(btn, Theme.Border, 1)
=9=9track(btn, "btn")
=9=9track(stroke, "stroke")
=9=9btn.MouseEnter:Connect(function()
=9=9=9Tween(btn, TweenInfo.new(0.12), { BackgroundColor3 =3D Theme.Inline =
})
=9=9end)
=9=9btn.MouseLeave:Connect(function()
=9=9=9Tween(btn, TweenInfo.new(0.12), { BackgroundColor3 =3D Theme.Element=
 })
=9=9end)
=9=9return btn
=9end

=9local ContinueBtn =3D Create("TextButton", {
=9=9Parent =3D Main,
=9=9Size =3D UDim2New(0, half=5Fw, 0, btn=5Fh),
=9=9Position =3D UDim2New(0, pad, 0, btn=5Fy),
=9=9BackgroundColor3 =3D Theme.Accent,
=9=9BackgroundTransparency =3D 1,
=9=9BorderSizePixel =3D 0,
=9=9Text =3D "Continue",
=9=9TextColor3 =3D FromRGB(255, 255, 255),
=9=9TextSize =3D btn=5Ftext,
=9=9FontFace =3D FontFace,
=9=9AutoButtonColor =3D false,
=9=9TextTransparency =3D 1,
=9=9ZIndex =3D 4,
=9})
=9Corner(ContinueBtn, 5)
=9Create("UIGradient", {
=9=9Parent =3D ContinueBtn,
=9=9Rotation =3D 90,
=9=9Color =3D ColorSequence.new({
=9=9=9ColorSequenceKeypoint.new(0, FromRGB(255, 255, 255)),
=9=9=9ColorSequenceKeypoint.new(1, Theme.Gradient),
=9=9}),
=9})
=9track(ContinueBtn, "cta")

=9local GetKeyBtn =3D MakeSideBtn("Get Key", pad + half=5Fw + btn=5Fgap, b=
tn=5Fy, half=5Fw)
=9local DiscordBtn =3D MakeSideBtn("Join Discord", pad, row2=5Fy, half=5Fw=
)
=9local SkipBtn =3D MakeSideBtn("Skip Keysystem", pad + half=5Fw + btn=5Fg=
ap, row2=5Fy, half=5Fw)

=9local panel=5Fh =3D row2=5Fy + btn=5Fh + pad

=9local popup=5Fw =3D 280
=9local popup=5Finner =3D popup=5Fw - pad * 2
=9local popup=5Fbtn1=5Fy =3D pad + 28
=9local popup=5Fbtn2=5Fy =3D popup=5Fbtn1=5Fy + btn=5Fh + btn=5Fgap
=9local popup=5Fh =3D popup=5Fbtn2=5Fy + btn=5Fh + pad
=9local popup=5Fopen =3D false

=9local KeyPopup =3D Create("Frame", {
=9=9Parent =3D ScreenGui,
=9=9Size =3D UDim2New(1, 0, 1, 0),
=9=9BackgroundColor3 =3D FromRGB(0, 0, 0),
=9=9BackgroundTransparency =3D 1,
=9=9Visible =3D false,
=9=9BorderSizePixel =3D 0,
=9=9ZIndex =3D 20,
=9})

=9local OverlayBtn =3D Create("TextButton", {
=9=9Parent =3D KeyPopup,
=9=9Size =3D UDim2New(1, 0, 1, 0),
=9=9BackgroundTransparency =3D 1,
=9=9Text =3D "",
=9=9AutoButtonColor =3D false,
=9=9ZIndex =3D 20,
=9})

=9local PopupPanel =3D Create("Frame", {
=9=9Parent =3D KeyPopup,
=9=9Size =3D UDim2New(0, 0, 0, 0),
=9=9Position =3D UDim2New(0.5, 0, 0.5, 0),
=9=9AnchorPoint =3D Vector2New(0.5, 0.5),
=9=9BackgroundColor3 =3D Theme.Background,
=9=9BackgroundTransparency =3D 0,
=9=9BorderSizePixel =3D 0,
=9=9ClipsDescendants =3D true,
=9=9ZIndex =3D 21,
=9})
=9Corner(PopupPanel, 5)
=9local PopupStroke =3D Stroke(PopupPanel, Theme.Border, 1)

=9Create("TextLabel", {
=9=9Parent =3D PopupPanel,
=9=9Size =3D UDim2New(1, -(pad * 2), 0, 20),
=9=9Position =3D UDim2New(0, pad, 0, pad),
=9=9BackgroundTransparency =3D 1,
=9=9Text =3D "Get Key",
=9=9TextColor3 =3D Theme.Text,
=9=9TextSize =3D title=5Fsize,
=9=9FontFace =3D FontFace,
=9=9TextXAlignment =3D Enum.TextXAlignment.Left,
=9=9ZIndex =3D 22,
=9})

=9local function MakePopupBtn(text, y)
=9=9local btn =3D Create("TextButton", {
=9=9=9Parent =3D PopupPanel,
=9=9=9Size =3D UDim2New(0, popup=5Finner, 0, btn=5Fh),
=9=9=9Position =3D UDim2New(0, pad, 0, y),
=9=9=9BackgroundColor3 =3D Theme.Element,
=9=9=9BorderSizePixel =3D 0,
=9=9=9Text =3D text,
=9=9=9TextColor3 =3D Theme.Text,
=9=9=9TextSize =3D btn=5Ftext,
=9=9=9FontFace =3D FontFace,
=9=9=9AutoButtonColor =3D false,
=9=9=9ZIndex =3D 22,
=9=9})
=9=9Corner(btn, 5)
=9=9Stroke(btn, Theme.Border, 0.35)
=9=9btn.MouseEnter:Connect(function()
=9=9=9Tween(btn, TweenInfo.new(0.12), { BackgroundColor3 =3D Theme.Inline =
})
=9=9end)
=9=9btn.MouseLeave:Connect(function()
=9=9=9Tween(btn, TweenInfo.new(0.12), { BackgroundColor3 =3D Theme.Element=
 })
=9=9end)
=9=9return btn
=9end

=9local LinkvertiseBtn =3D MakePopupBtn("Linkvertise", popup=5Fbtn1=5Fy)
=9local RinkuBtn =3D MakePopupBtn("Rinku", popup=5Fbtn2=5Fy)

=9do
=9=9local dragging, drag=5Fstart, start=5Fpos, changed

=9=9DragArea.InputBegan:Connect(function(input)
=9=9=9if input.UserInputType ~=3D Enum.UserInputType.MouseButton1 and inpu=
t.UserInputType ~=3D Enum.UserInputType.Touch then
=9=9=9=9return
=9=9=9end
=9=9=9dragging =3D true
=9=9=9drag=5Fstart =3D input.Position
=9=9=9start=5Fpos =3D Main.Position
=9=9=9if changed then
=9=9=9=9return
=9=9=9end
=9=9=9changed =3D input.Changed:Connect(function()
=9=9=9=9if input.UserInputState =3D=3D Enum.UserInputState.End then
=9=9=9=9=9dragging =3D false
=9=9=9=9=9if changed then
=9=9=9=9=9=9changed:Disconnect()
=9=9=9=9=9=9changed =3D nil
=9=9=9=9=9end
=9=9=9=9end
=9=9=9end)
=9=9end)

=9=9UserInputService.InputChanged:Connect(function(input)
=9=9=9if not dragging then
=9=9=9=9return
=9=9=9end
=9=9=9if input.UserInputType ~=3D Enum.UserInputType.MouseMovement and inp=
ut.UserInputType ~=3D Enum.UserInputType.Touch then
=9=9=9=9return
=9=9=9end
=9=9=9local scale =3D UIScale.Scale or 1
=9=9=9local delta =3D (input.Position - drag=5Fstart) / scale
=9=9=9Tween(Main, TweenInfo.new(0.16, Enum.EasingStyle.Quart, Enum.EasingD=
irection.Out), {
=9=9=9=9Position =3D UDim2New(
=9=9=9=9=9start=5Fpos.X.Scale,
=9=9=9=9=9start=5Fpos.X.Offset + delta.X,
=9=9=9=9=9start=5Fpos.Y.Scale,
=9=9=9=9=9start=5Fpos.Y.Offset + delta.Y
=9=9=9=9),
=9=9=9})
=9=9end)
=9end

=9local tween=5Fdata =3D TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.E=
asingDirection.Out)
=9local fade=5Fin =3D TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.Easi=
ngDirection.Out)
=9local closed =3D false

=9local function set=5Ffade(transparency)
=9=9local info =3D transparency =3D=3D 0 and fade=5Fin or tween=5Fdata
=9=9for =5F, item in fade=5Fitems do
=9=9=9local inst =3D item.Inst
=9=9=9local kind =3D item.Kind
=9=9=9if kind =3D=3D "text" then
=9=9=9=9Tween(inst, info, { TextTransparency =3D transparency })
=9=9=9elseif kind =3D=3D "muted" then
=9=9=9=9Tween(inst, info, { TextTransparency =3D transparency =3D=3D 0 and=
 0.1 or 1 })
=9=9=9elseif kind =3D=3D "stroke" then
=9=9=9=9Tween(inst, info, { Transparency =3D transparency =3D=3D 0 and 0.3=
5 or 1 })
=9=9=9elseif kind =3D=3D "cta" or kind =3D=3D "btn" then
=9=9=9=9Tween(inst, info, { BackgroundTransparency =3D transparency, TextT=
ransparency =3D transparency })
=9=9=9elseif kind =3D=3D "accent" then
=9=9=9=9Tween(inst, info, { BackgroundTransparency =3D transparency })
=9=9=9elseif kind =3D=3D "image" then
=9=9=9=9Tween(inst, info, { ImageTransparency =3D transparency })
=9=9=9else
=9=9=9=9Tween(inst, info, { BackgroundTransparency =3D transparency })
=9=9=9end
=9=9end
=9end

=9local function HideKeyPopup()
=9=9if not popup=5Fopen then
=9=9=9return
=9=9end
=9=9popup=5Fopen =3D false
=9=9Tween(KeyPopup, tween=5Fdata, { BackgroundTransparency =3D 1 })
=9=9Tween(PopupStroke, tween=5Fdata, { Transparency =3D 1 })
=9=9Tween(PopupPanel, tween=5Fdata, { Size =3D UDim2New(0, 0, 0, 0) })
=9=9wait(0.22)
=9=9if not popup=5Fopen then
=9=9=9KeyPopup.Visible =3D false
=9=9end
=9end

=9local function ShowKeyPopup()
=9=9if closed or popup=5Fopen then
=9=9=9return
=9=9end
=9=9popup=5Fopen =3D true
=9=9KeyPopup.Visible =3D true
=9=9PopupStroke.Transparency =3D 1
=9=9PopupPanel.Size =3D UDim2New(0, 0, 0, 0)
=9=9KeyPopup.BackgroundTransparency =3D 1
=9=9Tween(KeyPopup, fade=5Fin, { BackgroundTransparency =3D 0.45 })
=9=9Tween(PopupStroke, fade=5Fin, { Transparency =3D 0.2 })
=9=9Tween(PopupPanel, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.Easi=
ngDirection.Out), {
=9=9=9Size =3D UDim2New(0, popup=5Fw, 0, popup=5Fh),
=9=9})
=9end

=9local function CloseUI()
=9=9if closed then
=9=9=9return
=9=9end
=9=9closed =3D true
=9=9popup=5Fopen =3D false
=9=9KeyPopup.Visible =3D false
=9=9Tween(MainStroke, tween=5Fdata, { Transparency =3D 1 })
=9=9Tween(CloseBtn, tween=5Fdata, { ImageTransparency =3D 1 })
=9=9set=5Ffade(1)
=9=9Tween(Main, tween=5Fdata, { Size =3D UDim2New(0, 0, 0, 0) })
=9=9wait(0.28)
=9=9ScreenGui:Destroy()
=9end

=9local function CopyLink(url, copied=5Fmsg)
=9=9if setclipboard then
=9=9=9pcall(setclipboard, url)
=9=9=9Notify({
=9=9=9=9Title =3D "NBEE HUB",
=9=9=9=9Description =3D copied=5Fmsg,
=9=9=9=9Duration =3D 4,
=9=9=9})
=9=9=9return
=9=9end
=9=9Notify({
=9=9=9Title =3D "NBEE HUB",
=9=9=9Description =3D "Couldnt copy. Open this link: " .. url,
=9=9=9Duration =3D 6,
=9=9})
=9end

=9ContinueBtn.MouseEnter:Connect(function()
=9=9Tween(ContinueBtn, TweenInfo.new(0.12), { BackgroundColor3 =3D FromRGB=
(150, 135, 255) })
=9end)
=9ContinueBtn.MouseLeave:Connect(function()
=9=9Tween(ContinueBtn, TweenInfo.new(0.12), { BackgroundColor3 =3D Theme.A=
ccent })
=9end)

=9ContinueBtn.MouseButton1Click:Connect(function()
=9=9CloseUI()
=9=9wait(0.03)
=9=9loadstring(game:HttpGet(LoaderUrl))()
=9end)

=9GetKeyBtn.MouseButton1Click:Connect(ShowKeyPopup)

=9OverlayBtn.MouseButton1Click:Connect(function()
=9=9spawn(HideKeyPopup)
=9end)

=9LinkvertiseBtn.MouseButton1Click:Connect(function()
=9=9CopyLink(Config.Workink, "Linkvertise link copied. Paste it in your br=
owser.")
=9=9spawn(HideKeyPopup)
=9end)

=9RinkuBtn.MouseButton1Click:Connect(function()
=9=9CopyLink(Config.Rinku, "Rinku link copied. Paste it in your browser.")=

=9=9spawn(HideKeyPopup)
=9end)

=9DiscordBtn.MouseButton1Click:Connect(function()
=9=9spawn(function()
=9=9=9local opened =3D false
=9=9=9if typeof(request) =3D=3D "function" then
=9=9=9=9local success, response =3D pcall(function()
=9=9=9=9=9return request({
=9=9=9=9=9=9Url =3D "http://127.0.0.1:6463/rpc=3Fv=3D1",
=9=9=9=9=9=9Method =3D "POST",
=9=9=9=9=9=9Headers =3D {
=9=9=9=9=9=9=9["Content-Type"] =3D "application/json",
=9=9=9=9=9=9=9["Origin"] =3D "https://discord.com",
=9=9=9=9=9=9},
=9=9=9=9=9=9Body =3D HttpService:JSONEncode({
=9=9=9=9=9=9=9cmd =3D "INVITE=5FBROWSER",
=9=9=9=9=9=9=9args =3D { code =3D "NBEE HUB" },
=9=9=9=9=9=9=9nonce =3D HttpService:GenerateGUID(false),
=9=9=9=9=9=9}),
=9=9=9=9=9})
=9=9=9=9end)
=9=9=9=9opened =3D success and response and response.StatusCode =3D=3D 200=

=9=9=9end
=9=9=9if not opened and setclipboard then
=9=9=9=9pcall(setclipboard, Config.Discord)
=9=9=9end
=9=9=9Notify({
=9=9=9=9Title =3D "NBEE HUB",
=9=9=9=9Description =3D opened and "Opening Discord invite." or "Discord i=
nvite copied.",
=9=9=9=9Duration =3D 4,
=9=9=9})
=9=9end)
=9end)

=9SkipBtn.MouseButton1Click:Connect(function()
=9=9CopyLink(Config.Shop, "shop mong ung ho")
=9end)

=9CloseBtn.MouseEnter:Connect(function()
=9=9Tween(CloseBtn, TweenInfo.new(0.12), { ImageColor3 =3D Theme.Text })
=9end)
=9CloseBtn.MouseLeave:Connect(function()
=9=9Tween(CloseBtn, TweenInfo.new(0.12), { ImageColor3 =3D Theme.Inactive =
})
=9end)
=9CloseBtn.MouseButton1Click:Connect(CloseUI)

=9if IsMobile then
=9=9local cam =3D Workspace.CurrentCamera
=9=9local viewport =3D (cam and cam.ViewportSize) or Vector2New(1920, 1080=
)
=9=9UIScale.Scale =3D MathClamp(viewport.Y / 720, 0.7, 1.2)
=9end

=9Tween(Main, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirect=
ion.Out), {
=9=9Size =3D UDim2New(0, panel=5Fw, 0, panel=5Fh),
=9})

=9wait(0.18)

=9Tween(MainStroke, fade=5Fin, { Transparency =3D 0.2 })
=9Tween(CloseBtn, fade=5Fin, { ImageTransparency =3D 0 })
=9set=5Ffade(0)
end
