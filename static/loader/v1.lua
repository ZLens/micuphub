if _G.GEH_Running then
	return warn("Script already running")
end

_G.GEH_Running = true
warn("Golds Easy Hub: currently loading")

local textChatService = game:GetService("TextChatService")

local chatChannel = textChatService:FindFirstChild("TextChannels") and textChatService.TextChannels:FindFirstChild("RBXGeneral")
if chatChannel then
	chatChannel:SendAsync("Golds Easy Hub ON TOP!")
else
	warn("Error: Could not find RBXGeneral channel in TextChatService")
end

local flightSpeed = 10

local Converted = {
	["_GEH_Client"] = Instance.new("ScreenGui");
	["_NotifFrame"] = Instance.new("Frame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_UIPadding"] = Instance.new("UIPadding");
	["_NotifFrame1"] = Instance.new("TextButton");
	["_UICorner"] = Instance.new("UICorner");
	["_TextLabel"] = Instance.new("TextLabel");
	["_UIPadding1"] = Instance.new("UIPadding");
	["_UIListLayout1"] = Instance.new("UIListLayout");
	["_Version"] = Instance.new("Frame");
	["_UIListLayout2"] = Instance.new("UIListLayout");
	["_UIPadding2"] = Instance.new("UIPadding");
	["_fps"] = Instance.new("TextLabel");
	["_UIPadding3"] = Instance.new("UIPadding");
	["_version"] = Instance.new("TextButton");
	["_LocalHost"] = Instance.new("LocalScript");
	["_AnimationsScript"] = Instance.new("LocalScript");
	["_UniversalsScript"] = Instance.new("LocalScript");
	["_LocalPlayerScript"] = Instance.new("LocalScript");
	["_PlayersScript"] = Instance.new("LocalScript");
	["_VoiceChatScript"] = Instance.new("LocalScript");
	["_LightingScript"] = Instance.new("LocalScript");
	["_BetaScript"] = Instance.new("LocalScript");
	["_UIDrag"] = Instance.new("LocalScript");
	["_MainFrame"] = Instance.new("CanvasGroup");
	["_corner"] = Instance.new("UICorner");
	["_list"] = Instance.new("UIListLayout");
	["_scale"] = Instance.new("UIScale");
	["_Btns"] = Instance.new("ScrollingFrame");
	["_UIListLayout3"] = Instance.new("UIListLayout");
	["_LocalPlayer"] = Instance.new("Frame");
	["_Title"] = Instance.new("TextLabel");
	["_UIListLayout4"] = Instance.new("UIListLayout");
	["_UIPadding4"] = Instance.new("UIPadding");
	["_ToggleFlight"] = Instance.new("Frame");
	["_UICorner1"] = Instance.new("UICorner");
	["_UIStroke"] = Instance.new("UIStroke");
	["_BoxTitle"] = Instance.new("TextLabel");
	["_Templates"] = Instance.new("Frame");
	["_UIPadding5"] = Instance.new("UIPadding");
	["_Execute"] = Instance.new("TextButton");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_UICorner2"] = Instance.new("UICorner");
	["_Player"] = Instance.new("TextBox");
	["_UICorner3"] = Instance.new("UICorner");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_Input"] = Instance.new("TextBox");
	["_UICorner4"] = Instance.new("UICorner");
	["_UIStroke3"] = Instance.new("UIStroke");
	["_ToggleNoclip"] = Instance.new("Frame");
	["_UICorner5"] = Instance.new("UICorner");
	["_UIStroke4"] = Instance.new("UIStroke");
	["_BoxTitle1"] = Instance.new("TextLabel");
	["_Templates1"] = Instance.new("Frame");
	["_UIPadding6"] = Instance.new("UIPadding");
	["_Execute1"] = Instance.new("TextButton");
	["_UIStroke5"] = Instance.new("UIStroke");
	["_UICorner6"] = Instance.new("UICorner");
	["_Player1"] = Instance.new("TextBox");
	["_UICorner7"] = Instance.new("UICorner");
	["_UIStroke6"] = Instance.new("UIStroke");
	["_Input1"] = Instance.new("TextBox");
	["_UICorner8"] = Instance.new("UICorner");
	["_UIStroke7"] = Instance.new("UIStroke");
	["_WalkSpeed"] = Instance.new("Frame");
	["_UICorner9"] = Instance.new("UICorner");
	["_UIStroke8"] = Instance.new("UIStroke");
	["_BoxTitle2"] = Instance.new("TextLabel");
	["_Templates2"] = Instance.new("Frame");
	["_UIPadding7"] = Instance.new("UIPadding");
	["_Execute2"] = Instance.new("TextButton");
	["_UIStroke9"] = Instance.new("UIStroke");
	["_UICorner10"] = Instance.new("UICorner");
	["_Player2"] = Instance.new("TextBox");
	["_UICorner11"] = Instance.new("UICorner");
	["_UIStroke10"] = Instance.new("UIStroke");
	["_UIListLayout5"] = Instance.new("UIListLayout");
	["_Input2"] = Instance.new("TextBox");
	["_UICorner12"] = Instance.new("UICorner");
	["_UIStroke11"] = Instance.new("UIStroke");
	["_UIPadding8"] = Instance.new("UIPadding");
	["_UIListLayout6"] = Instance.new("UIListLayout");
	["_JumpPower"] = Instance.new("Frame");
	["_UICorner13"] = Instance.new("UICorner");
	["_UIStroke12"] = Instance.new("UIStroke");
	["_BoxTitle3"] = Instance.new("TextLabel");
	["_Templates3"] = Instance.new("Frame");
	["_UIPadding9"] = Instance.new("UIPadding");
	["_Execute3"] = Instance.new("TextButton");
	["_UIStroke13"] = Instance.new("UIStroke");
	["_UICorner14"] = Instance.new("UICorner");
	["_Player3"] = Instance.new("TextBox");
	["_UICorner15"] = Instance.new("UICorner");
	["_UIStroke14"] = Instance.new("UIStroke");
	["_Input3"] = Instance.new("TextBox");
	["_UICorner16"] = Instance.new("UICorner");
	["_UIStroke15"] = Instance.new("UIStroke");
	["_AntiSit"] = Instance.new("Frame");
	["_UICorner17"] = Instance.new("UICorner");
	["_UIStroke16"] = Instance.new("UIStroke");
	["_BoxTitle4"] = Instance.new("TextLabel");
	["_Templates4"] = Instance.new("Frame");
	["_UIPadding10"] = Instance.new("UIPadding");
	["_Execute4"] = Instance.new("TextButton");
	["_UIStroke17"] = Instance.new("UIStroke");
	["_UICorner18"] = Instance.new("UICorner");
	["_Player4"] = Instance.new("TextBox");
	["_UICorner19"] = Instance.new("UICorner");
	["_UIStroke18"] = Instance.new("UIStroke");
	["_Input4"] = Instance.new("TextBox");
	["_UICorner20"] = Instance.new("UICorner");
	["_UIStroke19"] = Instance.new("UIStroke");
	["_VoidBaseplate"] = Instance.new("Frame");
	["_UICorner21"] = Instance.new("UICorner");
	["_UIStroke20"] = Instance.new("UIStroke");
	["_BoxTitle5"] = Instance.new("TextLabel");
	["_Templates5"] = Instance.new("Frame");
	["_UIPadding11"] = Instance.new("UIPadding");
	["_Execute5"] = Instance.new("TextButton");
	["_UIStroke21"] = Instance.new("UIStroke");
	["_UICorner22"] = Instance.new("UICorner");
	["_Player5"] = Instance.new("TextBox");
	["_UICorner23"] = Instance.new("UICorner");
	["_UIStroke22"] = Instance.new("UIStroke");
	["_Input5"] = Instance.new("TextBox");
	["_UICorner24"] = Instance.new("UICorner");
	["_UIStroke23"] = Instance.new("UIStroke");
	["_Freeze"] = Instance.new("Frame");
	["_UICorner25"] = Instance.new("UICorner");
	["_UIStroke24"] = Instance.new("UIStroke");
	["_BoxTitle6"] = Instance.new("TextLabel");
	["_Templates6"] = Instance.new("Frame");
	["_UIPadding12"] = Instance.new("UIPadding");
	["_Execute6"] = Instance.new("TextButton");
	["_UIStroke25"] = Instance.new("UIStroke");
	["_UICorner26"] = Instance.new("UICorner");
	["_Player6"] = Instance.new("TextBox");
	["_UICorner27"] = Instance.new("UICorner");
	["_UIStroke26"] = Instance.new("UIStroke");
	["_Input6"] = Instance.new("TextBox");
	["_UICorner28"] = Instance.new("UICorner");
	["_UIStroke27"] = Instance.new("UIStroke");
	["_Players"] = Instance.new("Frame");
	["_Title1"] = Instance.new("TextLabel");
	["_UIListLayout7"] = Instance.new("UIListLayout");
	["_TeleportTo"] = Instance.new("Frame");
	["_UICorner29"] = Instance.new("UICorner");
	["_UIStroke28"] = Instance.new("UIStroke");
	["_BoxTitle7"] = Instance.new("TextLabel");
	["_Templates7"] = Instance.new("Frame");
	["_UIPadding13"] = Instance.new("UIPadding");
	["_Execute7"] = Instance.new("TextButton");
	["_UIStroke29"] = Instance.new("UIStroke");
	["_UICorner30"] = Instance.new("UICorner");
	["_Player7"] = Instance.new("TextBox");
	["_UICorner31"] = Instance.new("UICorner");
	["_UIStroke30"] = Instance.new("UIStroke");
	["_Input7"] = Instance.new("TextBox");
	["_UICorner32"] = Instance.new("UICorner");
	["_UIStroke31"] = Instance.new("UIStroke");
	["_UIPadding14"] = Instance.new("UIPadding");
	["_ClientBring"] = Instance.new("Frame");
	["_UICorner33"] = Instance.new("UICorner");
	["_UIStroke32"] = Instance.new("UIStroke");
	["_BoxTitle8"] = Instance.new("TextLabel");
	["_Templates8"] = Instance.new("Frame");
	["_UIPadding15"] = Instance.new("UIPadding");
	["_Execute8"] = Instance.new("TextButton");
	["_UIStroke33"] = Instance.new("UIStroke");
	["_UICorner34"] = Instance.new("UICorner");
	["_Player8"] = Instance.new("TextBox");
	["_UICorner35"] = Instance.new("UICorner");
	["_UIStroke34"] = Instance.new("UIStroke");
	["_Input8"] = Instance.new("TextBox");
	["_UICorner36"] = Instance.new("UICorner");
	["_UIStroke35"] = Instance.new("UIStroke");
	["_Spectate"] = Instance.new("Frame");
	["_UICorner37"] = Instance.new("UICorner");
	["_UIStroke36"] = Instance.new("UIStroke");
	["_BoxTitle9"] = Instance.new("TextLabel");
	["_Templates9"] = Instance.new("Frame");
	["_UIPadding16"] = Instance.new("UIPadding");
	["_Execute9"] = Instance.new("TextButton");
	["_UIStroke37"] = Instance.new("UIStroke");
	["_UICorner38"] = Instance.new("UICorner");
	["_Player9"] = Instance.new("TextBox");
	["_UICorner39"] = Instance.new("UICorner");
	["_UIStroke38"] = Instance.new("UIStroke");
	["_Input9"] = Instance.new("TextBox");
	["_UICorner40"] = Instance.new("UICorner");
	["_UIStroke39"] = Instance.new("UIStroke");
	["_Unview"] = Instance.new("Frame");
	["_UICorner41"] = Instance.new("UICorner");
	["_UIStroke40"] = Instance.new("UIStroke");
	["_BoxTitle10"] = Instance.new("TextLabel");
	["_Templates10"] = Instance.new("Frame");
	["_UIPadding17"] = Instance.new("UIPadding");
	["_Execute10"] = Instance.new("TextButton");
	["_UIStroke41"] = Instance.new("UIStroke");
	["_UICorner42"] = Instance.new("UICorner");
	["_Player10"] = Instance.new("TextBox");
	["_UICorner43"] = Instance.new("UICorner");
	["_UIStroke42"] = Instance.new("UIStroke");
	["_Input10"] = Instance.new("TextBox");
	["_UICorner44"] = Instance.new("UICorner");
	["_UIStroke43"] = Instance.new("UIStroke");
	["_NameTags"] = Instance.new("Frame");
	["_UICorner45"] = Instance.new("UICorner");
	["_UIStroke44"] = Instance.new("UIStroke");
	["_BoxTitle11"] = Instance.new("TextLabel");
	["_Templates11"] = Instance.new("Frame");
	["_UIPadding18"] = Instance.new("UIPadding");
	["_Execute11"] = Instance.new("TextButton");
	["_UIStroke45"] = Instance.new("UIStroke");
	["_UICorner46"] = Instance.new("UICorner");
	["_Player11"] = Instance.new("TextBox");
	["_UICorner47"] = Instance.new("UICorner");
	["_UIStroke46"] = Instance.new("UIStroke");
	["_Input11"] = Instance.new("TextBox");
	["_UICorner48"] = Instance.new("UICorner");
	["_UIStroke47"] = Instance.new("UIStroke");
	["_UIPadding19"] = Instance.new("UIPadding");
	["_Credits"] = Instance.new("Frame");
	["_Title2"] = Instance.new("TextLabel");
	["_UIListLayout8"] = Instance.new("UIListLayout");
	["_Template"] = Instance.new("Frame");
	["_UICorner49"] = Instance.new("UICorner");
	["_UIStroke48"] = Instance.new("UIStroke");
	["_BoxTitle12"] = Instance.new("TextLabel");
	["_UIListLayout9"] = Instance.new("UIListLayout");
	["_BoxTitle13"] = Instance.new("TextLabel");
	["_UIPadding20"] = Instance.new("UIPadding");
	["_UIPadding21"] = Instance.new("UIPadding");
	["_Universal"] = Instance.new("Frame");
	["_Title3"] = Instance.new("TextLabel");
	["_UIListLayout10"] = Instance.new("UIListLayout");
	["_UIPadding22"] = Instance.new("UIPadding");
	["_InfiniteYield"] = Instance.new("Frame");
	["_UICorner50"] = Instance.new("UICorner");
	["_UIStroke49"] = Instance.new("UIStroke");
	["_BoxTitle14"] = Instance.new("TextLabel");
	["_Templates12"] = Instance.new("Frame");
	["_UIPadding23"] = Instance.new("UIPadding");
	["_Execute12"] = Instance.new("TextButton");
	["_UIStroke50"] = Instance.new("UIStroke");
	["_UICorner51"] = Instance.new("UICorner");
	["_Player12"] = Instance.new("TextBox");
	["_UICorner52"] = Instance.new("UICorner");
	["_UIStroke51"] = Instance.new("UIStroke");
	["_Input12"] = Instance.new("TextBox");
	["_UICorner53"] = Instance.new("UICorner");
	["_UIStroke52"] = Instance.new("UIStroke");
	["_VoiceChat"] = Instance.new("Frame");
	["_Title4"] = Instance.new("TextLabel");
	["_UIListLayout11"] = Instance.new("UIListLayout");
	["_UIPadding24"] = Instance.new("UIPadding");
	["_Rejoin"] = Instance.new("Frame");
	["_UICorner54"] = Instance.new("UICorner");
	["_UIStroke53"] = Instance.new("UIStroke");
	["_BoxTitle15"] = Instance.new("TextLabel");
	["_Templates13"] = Instance.new("Frame");
	["_UIPadding25"] = Instance.new("UIPadding");
	["_Execute13"] = Instance.new("TextButton");
	["_UIStroke54"] = Instance.new("UIStroke");
	["_UICorner55"] = Instance.new("UICorner");
	["_Player13"] = Instance.new("TextBox");
	["_UICorner56"] = Instance.new("UICorner");
	["_UIStroke55"] = Instance.new("UIStroke");
	["_Input13"] = Instance.new("TextBox");
	["_UICorner57"] = Instance.new("UICorner");
	["_UIStroke56"] = Instance.new("UIStroke");
	["_Disconnect"] = Instance.new("Frame");
	["_UICorner58"] = Instance.new("UICorner");
	["_UIStroke57"] = Instance.new("UIStroke");
	["_BoxTitle16"] = Instance.new("TextLabel");
	["_Templates14"] = Instance.new("Frame");
	["_UIPadding26"] = Instance.new("UIPadding");
	["_Execute14"] = Instance.new("TextButton");
	["_UIStroke58"] = Instance.new("UIStroke");
	["_UICorner59"] = Instance.new("UICorner");
	["_Player14"] = Instance.new("TextBox");
	["_UICorner60"] = Instance.new("UICorner");
	["_UIStroke59"] = Instance.new("UIStroke");
	["_Input14"] = Instance.new("TextBox");
	["_UICorner61"] = Instance.new("UICorner");
	["_UIStroke60"] = Instance.new("UIStroke");
	["_Priority"] = Instance.new("Frame");
	["_UICorner62"] = Instance.new("UICorner");
	["_UIStroke61"] = Instance.new("UIStroke");
	["_BoxTitle17"] = Instance.new("TextLabel");
	["_Templates15"] = Instance.new("Frame");
	["_UIPadding27"] = Instance.new("UIPadding");
	["_Execute15"] = Instance.new("TextButton");
	["_UIStroke62"] = Instance.new("UIStroke");
	["_UICorner63"] = Instance.new("UICorner");
	["_Player15"] = Instance.new("TextBox");
	["_UICorner64"] = Instance.new("UICorner");
	["_UIStroke63"] = Instance.new("UIStroke");
	["_Input15"] = Instance.new("TextBox");
	["_UICorner65"] = Instance.new("UICorner");
	["_UIStroke64"] = Instance.new("UIStroke");
	["_AntiSuspend"] = Instance.new("Frame");
	["_UICorner66"] = Instance.new("UICorner");
	["_UIStroke65"] = Instance.new("UIStroke");
	["_BoxTitle18"] = Instance.new("TextLabel");
	["_Templates16"] = Instance.new("Frame");
	["_UIPadding28"] = Instance.new("UIPadding");
	["_Execute16"] = Instance.new("TextButton");
	["_UIStroke66"] = Instance.new("UIStroke");
	["_UICorner67"] = Instance.new("UICorner");
	["_Player16"] = Instance.new("TextBox");
	["_UICorner68"] = Instance.new("UICorner");
	["_UIStroke67"] = Instance.new("UIStroke");
	["_Input16"] = Instance.new("TextBox");
	["_UICorner69"] = Instance.new("UICorner");
	["_UIStroke68"] = Instance.new("UIStroke");
	["_Execute17"] = Instance.new("TextLabel");
	["_UIStroke69"] = Instance.new("UIStroke");
	["_UICorner70"] = Instance.new("UICorner");
	["_Animations"] = Instance.new("Frame");
	["_Title5"] = Instance.new("TextLabel");
	["_UIListLayout12"] = Instance.new("UIListLayout");
	["_UIPadding29"] = Instance.new("UIPadding");
	["_PlayAnim"] = Instance.new("Frame");
	["_UICorner71"] = Instance.new("UICorner");
	["_UIStroke70"] = Instance.new("UIStroke");
	["_BoxTitle19"] = Instance.new("TextLabel");
	["_Templates17"] = Instance.new("Frame");
	["_UIPadding30"] = Instance.new("UIPadding");
	["_Execute18"] = Instance.new("TextButton");
	["_UIStroke71"] = Instance.new("UIStroke");
	["_UICorner72"] = Instance.new("UICorner");
	["_Player17"] = Instance.new("TextBox");
	["_UICorner73"] = Instance.new("UICorner");
	["_UIStroke72"] = Instance.new("UIStroke");
	["_Input17"] = Instance.new("TextBox");
	["_UICorner74"] = Instance.new("UICorner");
	["_UIStroke73"] = Instance.new("UIStroke");
	["_DropDown"] = Instance.new("ImageButton");
	["_AnimID"] = Instance.new("Frame");
	["_UICorner75"] = Instance.new("UICorner");
	["_UIStroke74"] = Instance.new("UIStroke");
	["_BoxTitle20"] = Instance.new("TextLabel");
	["_FlySpeedContainer"] = Instance.new("Frame");
	["_FlySpeedTitle"] = Instance.new("TextLabel");
	["_FlySpeedCorner"] = Instance.new("UICorner");
	["_FlySpeedStroke"] = Instance.new("UIStroke");
	["_FlySpeedOptions"] = Instance.new("Frame");
	["_FlySpeedPadding"] = Instance.new("UIPadding");
	["_FlySpeedButton"] = Instance.new("TextBox");
	["_FlySpeedButtonStroke"] = Instance.new("UIStroke");
	["_FlySpeedButtonCorner"] = Instance.new("UICorner");
	["_Templates18"] = Instance.new("Frame");
	["_UIPadding31"] = Instance.new("UIPadding");
	["_Execute19"] = Instance.new("TextButton");
	["_UIStroke75"] = Instance.new("UIStroke");
	["_UICorner76"] = Instance.new("UICorner");
	["_Player18"] = Instance.new("TextBox");
	["_UICorner77"] = Instance.new("UICorner");
	["_UIStroke76"] = Instance.new("UIStroke");
	["_Input18"] = Instance.new("TextBox");
	["_UICorner78"] = Instance.new("UICorner");
	["_UIStroke77"] = Instance.new("UIStroke");
	["_DropDown1"] = Instance.new("ImageButton");
	["_StopAnims"] = Instance.new("Frame");
	["_UICorner79"] = Instance.new("UICorner");
	["_UIStroke78"] = Instance.new("UIStroke");
	["_BoxTitle21"] = Instance.new("TextLabel");
	["_Templates19"] = Instance.new("Frame");
	["_UIPadding32"] = Instance.new("UIPadding");
	["_Execute20"] = Instance.new("TextButton");
	["_UIStroke79"] = Instance.new("UIStroke");
	["_UICorner80"] = Instance.new("UICorner");
	["_Player19"] = Instance.new("TextBox");
	["_UICorner81"] = Instance.new("UICorner");
	["_UIStroke80"] = Instance.new("UIStroke");
	["_Input19"] = Instance.new("TextBox");
	["_UICorner82"] = Instance.new("UICorner");
	["_UIStroke81"] = Instance.new("UIStroke");
	["_DropDown2"] = Instance.new("ImageButton");
	["_Exploits"] = Instance.new("Frame");
	["_Title6"] = Instance.new("TextLabel");
	["_UIListLayout13"] = Instance.new("UIListLayout");
	["_UIPadding33"] = Instance.new("UIPadding");
	["_Priority1"] = Instance.new("Frame");
	["_UICorner83"] = Instance.new("UICorner");
	["_UIStroke82"] = Instance.new("UIStroke");
	["_BoxTitle22"] = Instance.new("TextLabel");
	["_Templates20"] = Instance.new("Frame");
	["_UIPadding34"] = Instance.new("UIPadding");
	["_Execute21"] = Instance.new("TextButton");
	["_UIStroke83"] = Instance.new("UIStroke");
	["_UICorner84"] = Instance.new("UICorner");
	["_Player20"] = Instance.new("TextBox");
	["_UICorner85"] = Instance.new("UICorner");
	["_UIStroke84"] = Instance.new("UIStroke");
	["_Input20"] = Instance.new("TextBox");
	["_UICorner86"] = Instance.new("UICorner");
	["_UIStroke85"] = Instance.new("UIStroke");
	["_DropDown3"] = Instance.new("ImageButton");
	["_BetaFeatures"] = Instance.new("Frame");
	["_Title7"] = Instance.new("TextLabel");
	["_UIListLayout14"] = Instance.new("UIListLayout");
	["_UIPadding35"] = Instance.new("UIPadding");
	["_Backpack"] = Instance.new("Frame");
	["_UICorner87"] = Instance.new("UICorner");
	["_UIStroke86"] = Instance.new("UIStroke");
	["_BoxTitle23"] = Instance.new("TextLabel");
	["_Templates21"] = Instance.new("Frame");
	["_UIPadding36"] = Instance.new("UIPadding");
	["_Execute22"] = Instance.new("TextButton");
	["_UIStroke87"] = Instance.new("UIStroke");
	["_UICorner88"] = Instance.new("UICorner");
	["_Player21"] = Instance.new("TextBox");
	["_UICorner89"] = Instance.new("UICorner");
	["_UIStroke88"] = Instance.new("UIStroke");
	["_Input21"] = Instance.new("TextBox");
	["_UICorner90"] = Instance.new("UICorner");
	["_UIStroke89"] = Instance.new("UIStroke");
	["_DropDown4"] = Instance.new("ImageButton");
	["_Disable"] = Instance.new("Frame");
	["_UICorner91"] = Instance.new("UICorner");
	["_UIStroke90"] = Instance.new("UIStroke");
	["_BoxTitle24"] = Instance.new("TextLabel");
	["_Templates22"] = Instance.new("Frame");
	["_UIPadding37"] = Instance.new("UIPadding");
	["_Execute23"] = Instance.new("TextButton");
	["_UIStroke91"] = Instance.new("UIStroke");
	["_UICorner92"] = Instance.new("UICorner");
	["_Player22"] = Instance.new("TextBox");
	["_UICorner93"] = Instance.new("UICorner");
	["_UIStroke92"] = Instance.new("UIStroke");
	["_Input22"] = Instance.new("TextBox");
	["_UICorner94"] = Instance.new("UICorner");
	["_UIStroke93"] = Instance.new("UIStroke");
	["_DropDown5"] = Instance.new("ImageButton");
	["_Lighting"] = Instance.new("Frame");
	["_Title8"] = Instance.new("TextLabel");
	["_UIListLayout15"] = Instance.new("UIListLayout");
	["_UIPadding38"] = Instance.new("UIPadding");
	["_RTX"] = Instance.new("Frame");
	["_UICorner95"] = Instance.new("UICorner");
	["_UIStroke94"] = Instance.new("UIStroke");
	["_BoxTitle25"] = Instance.new("TextLabel");
	["_Templates23"] = Instance.new("Frame");
	["_UIPadding39"] = Instance.new("UIPadding");
	["_Execute24"] = Instance.new("TextButton");
	["_UIStroke95"] = Instance.new("UIStroke");
	["_UICorner96"] = Instance.new("UICorner");
	["_Player23"] = Instance.new("TextBox");
	["_UICorner97"] = Instance.new("UICorner");
	["_UIStroke96"] = Instance.new("UIStroke");
	["_Input23"] = Instance.new("TextBox");
	["_UICorner98"] = Instance.new("UICorner");
	["_UIStroke97"] = Instance.new("UIStroke");
	["_DropDown6"] = Instance.new("ImageButton");
	["_Enhanced"] = Instance.new("Frame");
	["_UICorner99"] = Instance.new("UICorner");
	["_UIStroke98"] = Instance.new("UIStroke");
	["_BoxTitle26"] = Instance.new("TextLabel");
	["_Templates24"] = Instance.new("Frame");
	["_UIPadding40"] = Instance.new("UIPadding");
	["_Execute25"] = Instance.new("TextButton");
	["_UIStroke99"] = Instance.new("UIStroke");
	["_UICorner100"] = Instance.new("UICorner");
	["_Player24"] = Instance.new("TextBox");
	["_UICorner101"] = Instance.new("UICorner");
	["_UIStroke100"] = Instance.new("UIStroke");
	["_Input24"] = Instance.new("TextBox");
	["_UICorner102"] = Instance.new("UICorner");
	["_UIStroke101"] = Instance.new("UIStroke");
	["_DropDown7"] = Instance.new("ImageButton");
	["_Centre"] = Instance.new("ScrollingFrame");
	["_UIListLayout16"] = Instance.new("UIListLayout");
	["_Anims"] = Instance.new("ImageButton");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_UIStroke102"] = Instance.new("UIStroke");
	["_UICorner103"] = Instance.new("UICorner");
	["_UIListLayout17"] = Instance.new("UIListLayout");
	["_UIPadding41"] = Instance.new("UIPadding");
	["_Exploits1"] = Instance.new("ImageButton");
	["_TextLabel2"] = Instance.new("TextLabel");
	["_UIStroke103"] = Instance.new("UIStroke");
	["_UICorner104"] = Instance.new("UICorner");
	["_UIListLayout18"] = Instance.new("UIListLayout");
	["_UIPadding42"] = Instance.new("UIPadding");
	["_LocalPlayer1"] = Instance.new("ImageButton");
	["_TextLabel3"] = Instance.new("TextLabel");
	["_UIStroke104"] = Instance.new("UIStroke");
	["_UICorner105"] = Instance.new("UICorner");
	["_UIListLayout19"] = Instance.new("UIListLayout");
	["_UIPadding43"] = Instance.new("UIPadding");
	["_Players1"] = Instance.new("ImageButton");
	["_TextLabel4"] = Instance.new("TextLabel");
	["_UIStroke105"] = Instance.new("UIStroke");
	["_UICorner106"] = Instance.new("UICorner");
	["_UIListLayout20"] = Instance.new("UIListLayout");
	["_UIPadding44"] = Instance.new("UIPadding");
	["_Universal1"] = Instance.new("ImageButton");
	["_TextLabel5"] = Instance.new("TextLabel");
	["_UIStroke106"] = Instance.new("UIStroke");
	["_UICorner107"] = Instance.new("UICorner");
	["_UIListLayout21"] = Instance.new("UIListLayout");
	["_UIPadding45"] = Instance.new("UIPadding");
	["_Voicechat"] = Instance.new("ImageButton");
	["_TextLabel6"] = Instance.new("TextLabel");
	["_UIStroke107"] = Instance.new("UIStroke");
	["_UICorner108"] = Instance.new("UICorner");
	["_UIListLayout22"] = Instance.new("UIListLayout");
	["_UIPadding46"] = Instance.new("UIPadding");
	["_UIPadding47"] = Instance.new("UIPadding");
	["_BETA"] = Instance.new("ImageButton");
	["_TextLabel7"] = Instance.new("TextLabel");
	["_UIStroke108"] = Instance.new("UIStroke");
	["_UICorner109"] = Instance.new("UICorner");
	["_UIListLayout23"] = Instance.new("UIListLayout");
	["_UIPadding48"] = Instance.new("UIPadding");
	["_Lighting1"] = Instance.new("ImageButton");
	["_TextLabel8"] = Instance.new("TextLabel");
	["_UIStroke109"] = Instance.new("UIStroke");
	["_UICorner110"] = Instance.new("UICorner");
	["_UIListLayout24"] = Instance.new("UIListLayout");
	["_UIPadding49"] = Instance.new("UIPadding");
	["_TopBar"] = Instance.new("Frame");
	["_UIStroke110"] = Instance.new("UIStroke");
	["_Title9"] = Instance.new("TextLabel");
	["_UIPadding50"] = Instance.new("UIPadding");
	["_Executor"] = Instance.new("TextLabel");
	["_Close"] = Instance.new("ImageButton");
}

-- Properties:

Converted["_GEH_Client"].ResetOnSpawn = false
Converted["_GEH_Client"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_GEH_Client"].Name = "GEH_Client"
Converted["_GEH_Client"].Parent = game:GetService("CoreGui")

Converted["_NotifFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_NotifFrame"].BackgroundTransparency = 1
Converted["_NotifFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_NotifFrame"].BorderSizePixel = 0
Converted["_NotifFrame"].Position = UDim2.new(0.328765213, 0, 0.921802521, 0)
Converted["_NotifFrame"].Size = UDim2.new(0, 494, 0, 67)
Converted["_NotifFrame"].Visible = false
Converted["_NotifFrame"].Name = "NotifFrame"
Converted["_NotifFrame"].Parent = Converted["_GEH_Client"]

Converted["_UIListLayout"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].VerticalAlignment = Enum.VerticalAlignment.Bottom
Converted["_UIListLayout"].Parent = Converted["_NotifFrame"]

Converted["_UIPadding"].PaddingBottom = UDim.new(0, 15)
Converted["_UIPadding"].Parent = Converted["_NotifFrame"]

Converted["_NotifFrame1"].Text = ""
Converted["_NotifFrame1"].AutoButtonColor = false
Converted["_NotifFrame1"].Active = false
Converted["_NotifFrame1"].AutomaticSize = Enum.AutomaticSize.X
Converted["_NotifFrame1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_NotifFrame1"].BackgroundTransparency = 0.20000000298023224
Converted["_NotifFrame1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_NotifFrame1"].BorderSizePixel = 0
Converted["_NotifFrame1"].Position = UDim2.new(0.355263144, 0, 0.230769232, 0)
Converted["_NotifFrame1"].Selectable = false
Converted["_NotifFrame1"].Size = UDim2.new(0, -8, 0, 40)
Converted["_NotifFrame1"].Name = "NotifFrame"
Converted["_NotifFrame1"].Parent = Converted["_NotifFrame"]

Converted["_UICorner"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner"].Parent = Converted["_NotifFrame1"]

Converted["_TextLabel"].Font = Enum.Font.Montserrat
Converted["_TextLabel"].Text = "sahfkjashgfjsahghjfasg"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].TextSize = 16
Converted["_TextLabel"].TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].TextTransparency = 0.5
Converted["_TextLabel"].AutomaticSize = Enum.AutomaticSize.X
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel"].BackgroundTransparency = 1
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Size = UDim2.new(0, 0, 1, 0)
Converted["_TextLabel"].Parent = Converted["_NotifFrame1"]

Converted["_UIPadding1"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding1"].PaddingRight = UDim.new(0, 15)
Converted["_UIPadding1"].Parent = Converted["_NotifFrame1"]

Converted["_UIListLayout1"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout1"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout1"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout1"].Parent = Converted["_NotifFrame1"]

Converted["_Version"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Version"].AutomaticSize = Enum.AutomaticSize.X
Converted["_Version"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Version"].BackgroundTransparency = 1
Converted["_Version"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Version"].BorderSizePixel = 0
Converted["_Version"].Position = UDim2.new(0.5, 0, 0.5, 0)
Converted["_Version"].Size = UDim2.new(1, 0, 1, 0)
Converted["_Version"].Name = "Version"
Converted["_Version"].Parent = Converted["_GEH_Client"]

Converted["_UIListLayout2"].HorizontalAlignment = Enum.HorizontalAlignment.Right
Converted["_UIListLayout2"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout2"].VerticalAlignment = Enum.VerticalAlignment.Bottom
Converted["_UIListLayout2"].Parent = Converted["_Version"]

Converted["_UIPadding2"].PaddingBottom = UDim.new(0, 20)
Converted["_UIPadding2"].PaddingRight = UDim.new(0, 20)
Converted["_UIPadding2"].Parent = Converted["_Version"]

Converted["_fps"].Font = Enum.Font.MontserratBold
Converted["_fps"].RichText = true
Converted["_fps"].Text = "FPS 0000"
Converted["_fps"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_fps"].TextSize = 13
Converted["_fps"].TextTransparency = 0.699999988079071
Converted["_fps"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_fps"].TextYAlignment = Enum.TextYAlignment.Bottom
Converted["_fps"].AutomaticSize = Enum.AutomaticSize.X
Converted["_fps"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_fps"].BackgroundTransparency = 1
Converted["_fps"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_fps"].BorderSizePixel = 0
Converted["_fps"].LayoutOrder = 2
Converted["_fps"].Position = UDim2.new(0.804042697, 0, 0.985768497, 0)
Converted["_fps"].Size = UDim2.new(0, 279, 0, 12)
Converted["_fps"].Name = "fps"
Converted["_fps"].Parent = Converted["_Version"]

Converted["_UIPadding3"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding3"].Parent = Converted["_fps"]

Converted["_version"].Font = Enum.Font.MontserratBlack
Converted["_version"].Text = "Gold's Easy Hub, Version {v.stat}"
Converted["_version"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_version"].TextSize = 20
Converted["_version"].TextTransparency = 0.699999988079071
Converted["_version"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_version"].TextYAlignment = Enum.TextYAlignment.Bottom
Converted["_version"].Active = false
Converted["_version"].AutomaticSize = Enum.AutomaticSize.X
Converted["_version"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_version"].BackgroundTransparency = 1
Converted["_version"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_version"].BorderSizePixel = 0
Converted["_version"].LayoutOrder = 1
Converted["_version"].Position = UDim2.new(0.862998366, 0, 0.946631908, 0)
Converted["_version"].Selectable = false
Converted["_version"].Size = UDim2.new(0, 195, 0, 45)
Converted["_version"].Name = "version"
Converted["_version"].Parent = Converted["_Version"]

Converted["_MainFrame"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_MainFrame"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_MainFrame"].BackgroundTransparency = 0.20000000298023224
Converted["_MainFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_MainFrame"].BorderSizePixel = 0
Converted["_MainFrame"].Position = UDim2.new(0.5, 0, -0.5, 0)
Converted["_MainFrame"].Size = UDim2.new(0, 468, 0, 390)
Converted["_MainFrame"].Name = "MainFrame"
Converted["_MainFrame"].Parent = Converted["_GEH_Client"]

Converted["_corner"].CornerRadius = UDim.new(0, 10)
Converted["_corner"].Name = "corner"
Converted["_corner"].Parent = Converted["_MainFrame"]

Converted["_list"].Padding = UDim.new(0, 5)
Converted["_list"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_list"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_list"].Name = "list"
Converted["_list"].Parent = Converted["_MainFrame"]

Converted["_scale"].Name = "scale"
Converted["_scale"].Parent = Converted["_MainFrame"]

Converted["_Btns"].AutomaticCanvasSize = Enum.AutomaticSize.Y
Converted["_Btns"].BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Converted["_Btns"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Btns"].ScrollBarImageTransparency = 0.5
Converted["_Btns"].ScrollBarThickness = 3
Converted["_Btns"].TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Converted["_Btns"].Active = true
Converted["_Btns"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Btns"].BackgroundTransparency = 1
Converted["_Btns"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Btns"].BorderSizePixel = 0
Converted["_Btns"].LayoutOrder = 4
Converted["_Btns"].Position = UDim2.new(0, 0, 0.239999995, 0)
Converted["_Btns"].Size = UDim2.new(0, 468, 0, 297)
Converted["_Btns"].Name = "Btns"
Converted["_Btns"].Parent = Converted["_MainFrame"]

Converted["_UIListLayout3"].Padding = UDim.new(0, 10)
Converted["_UIListLayout3"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout3"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout3"].Parent = Converted["_Btns"]

Converted["_LocalPlayer"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_LocalPlayer"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_LocalPlayer"].BackgroundTransparency = 1
Converted["_LocalPlayer"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_LocalPlayer"].BorderSizePixel = 0
Converted["_LocalPlayer"].Position = UDim2.new(0.00106837612, 0, 0, 0)
Converted["_LocalPlayer"].Size = UDim2.new(0, 467, 0, 0)
Converted["_LocalPlayer"].Name = "LocalPlayer"
Converted["_LocalPlayer"].Parent = Converted["_Btns"]

Converted["_Title"].Font = Enum.Font.Montserrat
Converted["_Title"].Text = "LocalPlayer"
Converted["_Title"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title"].TextSize = 14
Converted["_Title"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title"].BackgroundTransparency = 1
Converted["_Title"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title"].BorderSizePixel = 0
Converted["_Title"].Size = UDim2.new(0, 439, 0, 11)
Converted["_Title"].Name = "Title"
Converted["_Title"].Parent = Converted["_LocalPlayer"]

Converted["_UIListLayout4"].Padding = UDim.new(0, 10)
Converted["_UIListLayout4"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout4"].Parent = Converted["_LocalPlayer"]

Converted["_UIPadding4"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding4"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding4"].Parent = Converted["_LocalPlayer"]

Converted["_ToggleFlight"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ToggleFlight"].BackgroundTransparency = 0.8999999761581421
Converted["_ToggleFlight"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ToggleFlight"].BorderSizePixel = 0
Converted["_ToggleFlight"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_ToggleFlight"].Size = UDim2.new(0, 439, 0, 40)
Converted["_ToggleFlight"].Name = "ToggleFlight"
Converted["_ToggleFlight"].Parent = Converted["_LocalPlayer"]

Converted["_UICorner1"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner1"].Parent = Converted["_ToggleFlight"]

Converted["_UIStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke"].Thickness = 2
Converted["_UIStroke"].Parent = Converted["_ToggleFlight"]

Converted["_BoxTitle"].Font = Enum.Font.Montserrat
Converted["_BoxTitle"].Text = "Toggle flight"
Converted["_BoxTitle"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle"].TextSize = 15
Converted["_BoxTitle"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle"].BackgroundTransparency = 1
Converted["_BoxTitle"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle"].BorderSizePixel = 0
Converted["_BoxTitle"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle"].Name = "BoxTitle"
Converted["_BoxTitle"].Parent = Converted["_ToggleFlight"]

Converted["_Templates"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates"].BackgroundTransparency = 1
Converted["_Templates"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates"].BorderSizePixel = 0
Converted["_Templates"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates"].Name = "Templates"
Converted["_Templates"].Parent = Converted["_ToggleFlight"]

Converted["_UIPadding5"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding5"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding5"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding5"].Parent = Converted["_Templates"]

Converted["_Execute"].Font = Enum.Font.Montserrat
Converted["_Execute"].Text = "Execute"
Converted["_Execute"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute"].TextSize = 14
Converted["_Execute"].Active = false
Converted["_Execute"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute"].BorderSizePixel = 0
Converted["_Execute"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute"].Selectable = false
Converted["_Execute"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute"].Name = "Execute"
Converted["_Execute"].Parent = Converted["_Templates"]

Converted["_UIStroke1"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke1"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke1"].Thickness = 1.5
Converted["_UIStroke1"].Parent = Converted["_Execute"]

Converted["_UICorner2"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner2"].Parent = Converted["_Execute"]

Converted["_Player"].Font = Enum.Font.Montserrat
Converted["_Player"].PlaceholderText = "Player"
Converted["_Player"].Text = ""
Converted["_Player"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player"].TextSize = 14
Converted["_Player"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player"].BackgroundTransparency = 0.6000000238418579
Converted["_Player"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player"].BorderSizePixel = 0
Converted["_Player"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player"].Visible = false
Converted["_Player"].Name = "Player"
Converted["_Player"].Parent = Converted["_Templates"]

Converted["_UICorner3"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner3"].Parent = Converted["_Player"]

Converted["_UIStroke2"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke2"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke2"].Thickness = 1.5
Converted["_UIStroke2"].Parent = Converted["_Player"]

Converted["_Input"].Font = Enum.Font.Montserrat
Converted["_Input"].PlaceholderText = "Input"
Converted["_Input"].Text = ""
Converted["_Input"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input"].TextSize = 14
Converted["_Input"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input"].BackgroundTransparency = 0.6000000238418579
Converted["_Input"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input"].BorderSizePixel = 0
Converted["_Input"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input"].Visible = false
Converted["_Input"].Name = "Input"
Converted["_Input"].Parent = Converted["_Templates"]

Converted["_UICorner4"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner4"].Parent = Converted["_Input"]

Converted["_UIStroke3"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke3"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke3"].Thickness = 1.5
Converted["_UIStroke3"].Parent = Converted["_Input"]

Converted["_ToggleNoclip"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ToggleNoclip"].BackgroundTransparency = 0.8999999761581421
Converted["_ToggleNoclip"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ToggleNoclip"].BorderSizePixel = 0
Converted["_ToggleNoclip"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_ToggleNoclip"].Size = UDim2.new(0, 439, 0, 40)
Converted["_ToggleNoclip"].Name = "ToggleNoclip"
Converted["_ToggleNoclip"].Parent = Converted["_LocalPlayer"]

Converted["_UICorner5"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner5"].Parent = Converted["_ToggleNoclip"]

Converted["_UIStroke4"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke4"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke4"].Thickness = 2
Converted["_UIStroke4"].Parent = Converted["_ToggleNoclip"]

Converted["_BoxTitle1"].Font = Enum.Font.Montserrat
Converted["_BoxTitle1"].Text = "Toggle noclip"
Converted["_BoxTitle1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle1"].TextSize = 15
Converted["_BoxTitle1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle1"].BackgroundTransparency = 1
Converted["_BoxTitle1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle1"].BorderSizePixel = 0
Converted["_BoxTitle1"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle1"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle1"].Name = "BoxTitle"
Converted["_BoxTitle1"].Parent = Converted["_ToggleNoclip"]

Converted["_Templates1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates1"].BackgroundTransparency = 1
Converted["_Templates1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates1"].BorderSizePixel = 0
Converted["_Templates1"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates1"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates1"].Name = "Templates"
Converted["_Templates1"].Parent = Converted["_ToggleNoclip"]

Converted["_UIPadding6"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding6"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding6"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding6"].Parent = Converted["_Templates1"]

Converted["_Execute1"].Font = Enum.Font.Montserrat
Converted["_Execute1"].Text = "Execute"
Converted["_Execute1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute1"].TextSize = 14
Converted["_Execute1"].Active = false
Converted["_Execute1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute1"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute1"].BorderSizePixel = 0
Converted["_Execute1"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute1"].Selectable = false
Converted["_Execute1"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute1"].Name = "Execute"
Converted["_Execute1"].Parent = Converted["_Templates1"]

Converted["_UIStroke5"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke5"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke5"].Thickness = 1.5
Converted["_UIStroke5"].Parent = Converted["_Execute1"]

Converted["_UICorner6"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner6"].Parent = Converted["_Execute1"]

Converted["_Player1"].Font = Enum.Font.Montserrat
Converted["_Player1"].PlaceholderText = "Player"
Converted["_Player1"].Text = ""
Converted["_Player1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player1"].TextSize = 14
Converted["_Player1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player1"].BackgroundTransparency = 0.6000000238418579
Converted["_Player1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player1"].BorderSizePixel = 0
Converted["_Player1"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player1"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player1"].Visible = false
Converted["_Player1"].Name = "Player"
Converted["_Player1"].Parent = Converted["_Templates1"]

Converted["_UICorner7"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner7"].Parent = Converted["_Player1"]

Converted["_UIStroke6"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke6"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke6"].Thickness = 1.5
Converted["_UIStroke6"].Parent = Converted["_Player1"]

Converted["_Input1"].Font = Enum.Font.Montserrat
Converted["_Input1"].PlaceholderText = "Input"
Converted["_Input1"].Text = ""
Converted["_Input1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input1"].TextSize = 14
Converted["_Input1"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input1"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input1"].BackgroundTransparency = 0.6000000238418579
Converted["_Input1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input1"].BorderSizePixel = 0
Converted["_Input1"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input1"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input1"].Visible = false
Converted["_Input1"].Name = "Input"
Converted["_Input1"].Parent = Converted["_Templates1"]

Converted["_UICorner8"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner8"].Parent = Converted["_Input1"]

Converted["_UIStroke7"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke7"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke7"].Thickness = 1.5
Converted["_UIStroke7"].Parent = Converted["_Input1"]

Converted["_WalkSpeed"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_WalkSpeed"].BackgroundTransparency = 0.8999999761581421
Converted["_WalkSpeed"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_WalkSpeed"].BorderSizePixel = 0
Converted["_WalkSpeed"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_WalkSpeed"].Size = UDim2.new(0, 439, 0, 40)
Converted["_WalkSpeed"].Name = "WalkSpeed"
Converted["_WalkSpeed"].Parent = Converted["_LocalPlayer"]

Converted["_UICorner9"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner9"].Parent = Converted["_WalkSpeed"]

Converted["_UIStroke8"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke8"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke8"].Thickness = 2
Converted["_UIStroke8"].Parent = Converted["_WalkSpeed"]

Converted["_BoxTitle2"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle2"].Text = "Set walkspeed"
Converted["_BoxTitle2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle2"].TextSize = 15
Converted["_BoxTitle2"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle2"].BackgroundTransparency = 1
Converted["_BoxTitle2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle2"].BorderSizePixel = 0
Converted["_BoxTitle2"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle2"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle2"].Name = "BoxTitle"
Converted["_BoxTitle2"].Parent = Converted["_WalkSpeed"]

Converted["_Templates2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates2"].BackgroundTransparency = 1
Converted["_Templates2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates2"].BorderSizePixel = 0
Converted["_Templates2"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates2"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates2"].Name = "Templates"
Converted["_Templates2"].Parent = Converted["_WalkSpeed"]

Converted["_UIPadding7"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding7"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding7"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding7"].Parent = Converted["_Templates2"]

Converted["_Execute2"].Font = Enum.Font.Montserrat
Converted["_Execute2"].Text = "Execute"
Converted["_Execute2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute2"].TextSize = 14
Converted["_Execute2"].Active = false
Converted["_Execute2"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute2"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute2"].BorderSizePixel = 0
Converted["_Execute2"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute2"].Selectable = false
Converted["_Execute2"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute2"].Visible = false
Converted["_Execute2"].Name = "Execute"
Converted["_Execute2"].Parent = Converted["_Templates2"]

Converted["_FlySpeedContainer"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FlySpeedContainer"].BackgroundTransparency = 0.8999999761581421
Converted["_FlySpeedContainer"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FlySpeedContainer"].BorderSizePixel = 0
Converted["_FlySpeedContainer"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_FlySpeedContainer"].Size = UDim2.new(0, 439, 0, 40)
Converted["_FlySpeedContainer"].Name = "FlySpeedContainer"
Converted["_FlySpeedContainer"].Parent = Converted["_LocalPlayer"]

Converted["_FlySpeedTitle"].Font = Enum.Font.MontserratMedium
Converted["_FlySpeedTitle"].Text = "Set Fly Speed"
Converted["_FlySpeedTitle"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FlySpeedTitle"].TextSize = 15
Converted["_FlySpeedTitle"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_FlySpeedTitle"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FlySpeedTitle"].BackgroundTransparency = 1
Converted["_FlySpeedTitle"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FlySpeedTitle"].BorderSizePixel = 0
Converted["_FlySpeedTitle"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_FlySpeedTitle"].Size = UDim2.new(0, 215, 0, 40)
Converted["_FlySpeedTitle"].Name = "FlySpeedTitle"
Converted["_FlySpeedTitle"].Parent = Converted["_FlySpeedContainer"]

Converted["_FlySpeedCorner"].CornerRadius = UDim.new(0, 5)
Converted["_FlySpeedCorner"].Parent = Converted["_FlySpeedContainer"]

Converted["_FlySpeedStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_FlySpeedStroke"].Color = Color3.fromRGB(255, 255, 255)
Converted["_FlySpeedStroke"].Thickness = 2
Converted["_FlySpeedStroke"].Parent = Converted["_FlySpeedContainer"]

Converted["_FlySpeedOptions"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FlySpeedOptions"].BackgroundTransparency = 1
Converted["_FlySpeedOptions"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FlySpeedOptions"].BorderSizePixel = 0
Converted["_FlySpeedOptions"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_FlySpeedOptions"].Size = UDim2.new(0, 151, 0, 40)
Converted["_FlySpeedOptions"].Name = "FlySpeedOptions"
Converted["_FlySpeedOptions"].Parent = Converted["_FlySpeedContainer"]

Converted["_FlySpeedPadding"].PaddingBottom = UDim.new(0, 6)
Converted["_FlySpeedPadding"].PaddingRight = UDim.new(0, 6)
Converted["_FlySpeedPadding"].PaddingTop = UDim.new(0, 6)
Converted["_FlySpeedPadding"].Parent = Converted["_FlySpeedOptions"]

Converted["_FlySpeedButton"].Font = Enum.Font.Montserrat
Converted["_FlySpeedButton"].Text = ""
Converted["_FlySpeedButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_FlySpeedButton"].PlaceholderText = "Input"
Converted["_FlySpeedButton"].TextSize = 14
Converted["_FlySpeedButton"].Active = false
Converted["_FlySpeedButton"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_FlySpeedButton"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FlySpeedButton"].BackgroundTransparency = 0.6000000238418579
Converted["_FlySpeedButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_FlySpeedButton"].BorderSizePixel = 0
Converted["_FlySpeedButton"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_FlySpeedButton"].Selectable = false
Converted["_FlySpeedButton"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_FlySpeedButton"].Visible = true
Converted["_FlySpeedButton"].Name = "FlySpeedButton"
Converted["_FlySpeedButton"].Parent = Converted["_FlySpeedOptions"]

Converted["_FlySpeedButtonStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_FlySpeedButtonStroke"].Color = Color3.fromRGB(255, 255, 255)
Converted["_FlySpeedButtonStroke"].Thickness = 1.5
Converted["_FlySpeedButtonStroke"].Parent = Converted["_FlySpeedButton"]

Converted["_FlySpeedButtonCorner"].CornerRadius = UDim.new(0, 5)
Converted["_FlySpeedButtonCorner"].Parent = Converted["_FlySpeedButton"]

Converted["_UIStroke9"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke9"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke9"].Thickness = 1.5
Converted["_UIStroke9"].Parent = Converted["_Execute2"]

Converted["_UICorner10"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner10"].Parent = Converted["_Execute2"]

Converted["_Player2"].Font = Enum.Font.Montserrat
Converted["_Player2"].PlaceholderText = "Player"
Converted["_Player2"].Text = ""
Converted["_Player2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player2"].TextSize = 14
Converted["_Player2"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player2"].BackgroundTransparency = 0.6000000238418579
Converted["_Player2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player2"].BorderSizePixel = 0
Converted["_Player2"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player2"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player2"].Visible = false
Converted["_Player2"].Name = "Player"
Converted["_Player2"].Parent = Converted["_Templates2"]

Converted["_UICorner11"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner11"].Parent = Converted["_Player2"]

Converted["_UIStroke10"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke10"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke10"].Thickness = 1.5
Converted["_UIStroke10"].Parent = Converted["_Player2"]

Converted["_UIListLayout5"].HorizontalAlignment = Enum.HorizontalAlignment.Right
Converted["_UIListLayout5"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout5"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout5"].Parent = Converted["_Templates2"]

Converted["_Input2"].Font = Enum.Font.Montserrat
Converted["_Input2"].PlaceholderText = "Input"
Converted["_Input2"].Text = ""
Converted["_Input2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input2"].TextSize = 14
Converted["_Input2"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input2"].AutomaticSize = Enum.AutomaticSize.X
Converted["_Input2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input2"].BackgroundTransparency = 0.6000000238418579
Converted["_Input2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input2"].BorderSizePixel = 0
Converted["_Input2"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input2"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input2"].Name = "Input"
Converted["_Input2"].Parent = Converted["_Templates2"]

Converted["_UICorner12"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner12"].Parent = Converted["_Input2"]

Converted["_UIStroke11"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke11"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke11"].Thickness = 1.5
Converted["_UIStroke11"].Parent = Converted["_Input2"]

Converted["_UIPadding8"].PaddingLeft = UDim.new(0, 5)
Converted["_UIPadding8"].PaddingRight = UDim.new(0, 5)
Converted["_UIPadding8"].Parent = Converted["_Input2"]

Converted["_UIListLayout6"].HorizontalAlignment = Enum.HorizontalAlignment.Right
Converted["_UIListLayout6"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout6"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout6"].Parent = Converted["_Templates2"]

Converted["_JumpPower"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_JumpPower"].BackgroundTransparency = 0.8999999761581421
Converted["_JumpPower"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_JumpPower"].BorderSizePixel = 0
Converted["_JumpPower"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_JumpPower"].Size = UDim2.new(0, 439, 0, 40)
Converted["_JumpPower"].Name = "JumpPower"
Converted["_JumpPower"].Parent = Converted["_LocalPlayer"]

Converted["_UICorner13"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner13"].Parent = Converted["_JumpPower"]

Converted["_UIStroke12"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke12"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke12"].Thickness = 2
Converted["_UIStroke12"].Parent = Converted["_JumpPower"]

Converted["_BoxTitle3"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle3"].Text = "Set jumppower"
Converted["_BoxTitle3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle3"].TextSize = 15
Converted["_BoxTitle3"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle3"].BackgroundTransparency = 1
Converted["_BoxTitle3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle3"].BorderSizePixel = 0
Converted["_BoxTitle3"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle3"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle3"].Name = "BoxTitle"
Converted["_BoxTitle3"].Parent = Converted["_JumpPower"]

Converted["_Templates3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates3"].BackgroundTransparency = 1
Converted["_Templates3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates3"].BorderSizePixel = 0
Converted["_Templates3"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates3"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates3"].Name = "Templates"
Converted["_Templates3"].Parent = Converted["_JumpPower"]

Converted["_UIPadding9"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding9"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding9"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding9"].Parent = Converted["_Templates3"]

Converted["_Execute3"].Font = Enum.Font.Montserrat
Converted["_Execute3"].Text = "Execute"
Converted["_Execute3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute3"].TextSize = 14
Converted["_Execute3"].Active = false
Converted["_Execute3"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute3"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute3"].BorderSizePixel = 0
Converted["_Execute3"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute3"].Selectable = false
Converted["_Execute3"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute3"].Visible = false
Converted["_Execute3"].Name = "Execute"
Converted["_Execute3"].Parent = Converted["_Templates3"]

Converted["_UIStroke13"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke13"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke13"].Thickness = 1.5
Converted["_UIStroke13"].Parent = Converted["_Execute3"]

Converted["_UICorner14"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner14"].Parent = Converted["_Execute3"]

Converted["_Player3"].Font = Enum.Font.Montserrat
Converted["_Player3"].PlaceholderText = "Player"
Converted["_Player3"].Text = ""
Converted["_Player3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player3"].TextSize = 14
Converted["_Player3"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player3"].BackgroundTransparency = 0.6000000238418579
Converted["_Player3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player3"].BorderSizePixel = 0
Converted["_Player3"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player3"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player3"].Visible = false
Converted["_Player3"].Name = "Player"
Converted["_Player3"].Parent = Converted["_Templates3"]

Converted["_UICorner15"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner15"].Parent = Converted["_Player3"]

Converted["_UIStroke14"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke14"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke14"].Thickness = 1.5
Converted["_UIStroke14"].Parent = Converted["_Player3"]

Converted["_Input3"].Font = Enum.Font.Montserrat
Converted["_Input3"].PlaceholderText = "Input"
Converted["_Input3"].Text = ""
Converted["_Input3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input3"].TextSize = 14
Converted["_Input3"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input3"].BackgroundTransparency = 0.6000000238418579
Converted["_Input3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input3"].BorderSizePixel = 0
Converted["_Input3"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input3"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input3"].Name = "Input"
Converted["_Input3"].Parent = Converted["_Templates3"]

Converted["_UICorner16"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner16"].Parent = Converted["_Input3"]

Converted["_UIStroke15"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke15"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke15"].Thickness = 1.5
Converted["_UIStroke15"].Parent = Converted["_Input3"]

Converted["_AntiSit"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_AntiSit"].BackgroundTransparency = 0.8999999761581421
Converted["_AntiSit"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_AntiSit"].BorderSizePixel = 0
Converted["_AntiSit"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_AntiSit"].Size = UDim2.new(0, 439, 0, 40)
Converted["_AntiSit"].Name = "AntiSit"
Converted["_AntiSit"].Parent = Converted["_LocalPlayer"]

Converted["_UICorner17"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner17"].Parent = Converted["_AntiSit"]

Converted["_UIStroke16"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke16"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke16"].Thickness = 2
Converted["_UIStroke16"].Parent = Converted["_AntiSit"]

Converted["_BoxTitle4"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle4"].Text = "Toggle anti sit"
Converted["_BoxTitle4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle4"].TextSize = 15
Converted["_BoxTitle4"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle4"].BackgroundTransparency = 1
Converted["_BoxTitle4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle4"].BorderSizePixel = 0
Converted["_BoxTitle4"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle4"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle4"].Name = "BoxTitle"
Converted["_BoxTitle4"].Parent = Converted["_AntiSit"]

Converted["_Templates4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates4"].BackgroundTransparency = 1
Converted["_Templates4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates4"].BorderSizePixel = 0
Converted["_Templates4"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates4"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates4"].Name = "Templates"
Converted["_Templates4"].Parent = Converted["_AntiSit"]

Converted["_UIPadding10"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding10"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding10"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding10"].Parent = Converted["_Templates4"]

Converted["_Execute4"].Font = Enum.Font.Montserrat
Converted["_Execute4"].Text = "Execute"
Converted["_Execute4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute4"].TextSize = 14
Converted["_Execute4"].Active = false
Converted["_Execute4"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute4"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute4"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute4"].BorderSizePixel = 0
Converted["_Execute4"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute4"].Selectable = false
Converted["_Execute4"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute4"].Name = "Execute"
Converted["_Execute4"].Parent = Converted["_Templates4"]

Converted["_UIStroke17"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke17"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke17"].Thickness = 1.5
Converted["_UIStroke17"].Parent = Converted["_Execute4"]

Converted["_UICorner18"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner18"].Parent = Converted["_Execute4"]

Converted["_Player4"].Font = Enum.Font.Montserrat
Converted["_Player4"].PlaceholderText = "Player"
Converted["_Player4"].Text = ""
Converted["_Player4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player4"].TextSize = 14
Converted["_Player4"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player4"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player4"].BackgroundTransparency = 0.6000000238418579
Converted["_Player4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player4"].BorderSizePixel = 0
Converted["_Player4"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player4"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player4"].Visible = false
Converted["_Player4"].Name = "Player"
Converted["_Player4"].Parent = Converted["_Templates4"]

Converted["_UICorner19"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner19"].Parent = Converted["_Player4"]

Converted["_UIStroke18"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke18"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke18"].Thickness = 1.5
Converted["_UIStroke18"].Parent = Converted["_Player4"]

Converted["_Input4"].Font = Enum.Font.Montserrat
Converted["_Input4"].PlaceholderText = "Input"
Converted["_Input4"].Text = ""
Converted["_Input4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input4"].TextSize = 14
Converted["_Input4"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input4"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input4"].BackgroundTransparency = 0.6000000238418579
Converted["_Input4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input4"].BorderSizePixel = 0
Converted["_Input4"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input4"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input4"].Visible = false
Converted["_Input4"].Name = "Input"
Converted["_Input4"].Parent = Converted["_Templates4"]

Converted["_UICorner20"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner20"].Parent = Converted["_Input4"]

Converted["_UIStroke19"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke19"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke19"].Thickness = 1.5
Converted["_UIStroke19"].Parent = Converted["_Input4"]

Converted["_VoidBaseplate"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_VoidBaseplate"].BackgroundTransparency = 0.8999999761581421
Converted["_VoidBaseplate"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_VoidBaseplate"].BorderSizePixel = 0
Converted["_VoidBaseplate"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_VoidBaseplate"].Size = UDim2.new(0, 439, 0, 40)
Converted["_VoidBaseplate"].Name = "VoidBaseplate"
Converted["_VoidBaseplate"].Parent = Converted["_LocalPlayer"]

Converted["_UICorner21"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner21"].Parent = Converted["_VoidBaseplate"]

Converted["_UIStroke20"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke20"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke20"].Thickness = 2
Converted["_UIStroke20"].Parent = Converted["_VoidBaseplate"]

Converted["_BoxTitle5"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle5"].Text = "Toggle anti void baseplate"
Converted["_BoxTitle5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle5"].TextSize = 15
Converted["_BoxTitle5"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle5"].BackgroundTransparency = 1
Converted["_BoxTitle5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle5"].BorderSizePixel = 0
Converted["_BoxTitle5"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle5"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle5"].Name = "BoxTitle"
Converted["_BoxTitle5"].Parent = Converted["_VoidBaseplate"]

Converted["_Templates5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates5"].BackgroundTransparency = 1
Converted["_Templates5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates5"].BorderSizePixel = 0
Converted["_Templates5"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates5"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates5"].Name = "Templates"
Converted["_Templates5"].Parent = Converted["_VoidBaseplate"]

Converted["_UIPadding11"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding11"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding11"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding11"].Parent = Converted["_Templates5"]

Converted["_Execute5"].Font = Enum.Font.Montserrat
Converted["_Execute5"].Text = "Execute"
Converted["_Execute5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute5"].TextSize = 14
Converted["_Execute5"].Active = false
Converted["_Execute5"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute5"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute5"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute5"].BorderSizePixel = 0
Converted["_Execute5"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute5"].Selectable = false
Converted["_Execute5"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute5"].Name = "Execute"
Converted["_Execute5"].Parent = Converted["_Templates5"]

Converted["_UIStroke21"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke21"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke21"].Thickness = 1.5
Converted["_UIStroke21"].Parent = Converted["_Execute5"]

Converted["_UICorner22"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner22"].Parent = Converted["_Execute5"]

Converted["_Player5"].Font = Enum.Font.Montserrat
Converted["_Player5"].PlaceholderText = "Player"
Converted["_Player5"].Text = ""
Converted["_Player5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player5"].TextSize = 14
Converted["_Player5"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player5"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player5"].BackgroundTransparency = 0.6000000238418579
Converted["_Player5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player5"].BorderSizePixel = 0
Converted["_Player5"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player5"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player5"].Visible = false
Converted["_Player5"].Name = "Player"
Converted["_Player5"].Parent = Converted["_Templates5"]

Converted["_UICorner23"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner23"].Parent = Converted["_Player5"]

Converted["_UIStroke22"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke22"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke22"].Thickness = 1.5
Converted["_UIStroke22"].Parent = Converted["_Player5"]

Converted["_Input5"].Font = Enum.Font.Montserrat
Converted["_Input5"].PlaceholderText = "Input"
Converted["_Input5"].Text = ""
Converted["_Input5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input5"].TextSize = 14
Converted["_Input5"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input5"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input5"].BackgroundTransparency = 0.6000000238418579
Converted["_Input5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input5"].BorderSizePixel = 0
Converted["_Input5"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input5"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input5"].Visible = false
Converted["_Input5"].Name = "Input"
Converted["_Input5"].Parent = Converted["_Templates5"]

Converted["_UICorner24"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner24"].Parent = Converted["_Input5"]

Converted["_UIStroke23"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke23"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke23"].Thickness = 1.5
Converted["_UIStroke23"].Parent = Converted["_Input5"]

Converted["_Freeze"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Freeze"].BackgroundTransparency = 0.8999999761581421
Converted["_Freeze"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Freeze"].BorderSizePixel = 0
Converted["_Freeze"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Freeze"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Freeze"].Name = "Freeze"
Converted["_Freeze"].Parent = Converted["_LocalPlayer"]

Converted["_UICorner25"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner25"].Parent = Converted["_Freeze"]

Converted["_UIStroke24"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke24"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke24"].Thickness = 2
Converted["_UIStroke24"].Parent = Converted["_Freeze"]

Converted["_BoxTitle6"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle6"].Text = "Toggle character freeze"
Converted["_BoxTitle6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle6"].TextSize = 15
Converted["_BoxTitle6"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle6"].BackgroundTransparency = 1
Converted["_BoxTitle6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle6"].BorderSizePixel = 0
Converted["_BoxTitle6"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle6"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle6"].Name = "BoxTitle"
Converted["_BoxTitle6"].Parent = Converted["_Freeze"]

Converted["_Templates6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates6"].BackgroundTransparency = 1
Converted["_Templates6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates6"].BorderSizePixel = 0
Converted["_Templates6"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates6"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates6"].Name = "Templates"
Converted["_Templates6"].Parent = Converted["_Freeze"]

Converted["_UIPadding12"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding12"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding12"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding12"].Parent = Converted["_Templates6"]

Converted["_Execute6"].Font = Enum.Font.Montserrat
Converted["_Execute6"].Text = "Execute"
Converted["_Execute6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute6"].TextSize = 14
Converted["_Execute6"].Active = false
Converted["_Execute6"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute6"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute6"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute6"].BorderSizePixel = 0
Converted["_Execute6"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute6"].Selectable = false
Converted["_Execute6"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute6"].Name = "Execute"
Converted["_Execute6"].Parent = Converted["_Templates6"]

Converted["_UIStroke25"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke25"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke25"].Thickness = 1.5
Converted["_UIStroke25"].Parent = Converted["_Execute6"]

Converted["_UICorner26"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner26"].Parent = Converted["_Execute6"]

Converted["_Player6"].Font = Enum.Font.Montserrat
Converted["_Player6"].PlaceholderText = "Player"
Converted["_Player6"].Text = ""
Converted["_Player6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player6"].TextSize = 14
Converted["_Player6"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player6"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player6"].BackgroundTransparency = 0.6000000238418579
Converted["_Player6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player6"].BorderSizePixel = 0
Converted["_Player6"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player6"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player6"].Visible = false
Converted["_Player6"].Name = "Player"
Converted["_Player6"].Parent = Converted["_Templates6"]

Converted["_UICorner27"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner27"].Parent = Converted["_Player6"]

Converted["_UIStroke26"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke26"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke26"].Thickness = 1.5
Converted["_UIStroke26"].Parent = Converted["_Player6"]

Converted["_Input6"].Font = Enum.Font.Montserrat
Converted["_Input6"].PlaceholderText = "Input"
Converted["_Input6"].Text = ""
Converted["_Input6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input6"].TextSize = 14
Converted["_Input6"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input6"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input6"].BackgroundTransparency = 0.6000000238418579
Converted["_Input6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input6"].BorderSizePixel = 0
Converted["_Input6"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input6"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input6"].Visible = false
Converted["_Input6"].Name = "Input"
Converted["_Input6"].Parent = Converted["_Templates6"]

Converted["_UICorner28"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner28"].Parent = Converted["_Input6"]

Converted["_UIStroke27"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke27"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke27"].Thickness = 1.5
Converted["_UIStroke27"].Parent = Converted["_Input6"]

Converted["_Players"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_Players"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Players"].BackgroundTransparency = 1
Converted["_Players"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Players"].BorderSizePixel = 0
Converted["_Players"].Position = UDim2.new(0.00106837612, 0, 0.127659574, 0)
Converted["_Players"].Size = UDim2.new(0, 467, 0, -4)
Converted["_Players"].Name = "Players"
Converted["_Players"].Parent = Converted["_Btns"]

Converted["_Title1"].Font = Enum.Font.MontserratMedium
Converted["_Title1"].Text = "Players"
Converted["_Title1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title1"].TextSize = 14
Converted["_Title1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title1"].BackgroundTransparency = 1
Converted["_Title1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title1"].BorderSizePixel = 0
Converted["_Title1"].Size = UDim2.new(0, 439, 0, 11)
Converted["_Title1"].Name = "Title"
Converted["_Title1"].Parent = Converted["_Players"]

Converted["_UIListLayout7"].Padding = UDim.new(0, 10)
Converted["_UIListLayout7"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout7"].Parent = Converted["_Players"]

Converted["_TeleportTo"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TeleportTo"].BackgroundTransparency = 0.8999999761581421
Converted["_TeleportTo"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TeleportTo"].BorderSizePixel = 0
Converted["_TeleportTo"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_TeleportTo"].Size = UDim2.new(0, 439, 0, 40)
Converted["_TeleportTo"].Name = "TeleportTo"
Converted["_TeleportTo"].Parent = Converted["_Players"]

Converted["_UICorner29"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner29"].Parent = Converted["_TeleportTo"]

Converted["_UIStroke28"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke28"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke28"].Thickness = 2
Converted["_UIStroke28"].Parent = Converted["_TeleportTo"]

Converted["_BoxTitle7"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle7"].Text = "Teleport to player"
Converted["_BoxTitle7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle7"].TextSize = 15
Converted["_BoxTitle7"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle7"].BackgroundTransparency = 1
Converted["_BoxTitle7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle7"].BorderSizePixel = 0
Converted["_BoxTitle7"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle7"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle7"].Name = "BoxTitle"
Converted["_BoxTitle7"].Parent = Converted["_TeleportTo"]

Converted["_Templates7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates7"].BackgroundTransparency = 1
Converted["_Templates7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates7"].BorderSizePixel = 0
Converted["_Templates7"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates7"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates7"].Name = "Templates"
Converted["_Templates7"].Parent = Converted["_TeleportTo"]

Converted["_UIPadding13"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding13"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding13"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding13"].Parent = Converted["_Templates7"]

Converted["_Execute7"].Font = Enum.Font.Montserrat
Converted["_Execute7"].Text = "Execute"
Converted["_Execute7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute7"].TextSize = 14
Converted["_Execute7"].Active = false
Converted["_Execute7"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute7"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute7"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute7"].BorderSizePixel = 0
Converted["_Execute7"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute7"].Selectable = false
Converted["_Execute7"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute7"].Visible = false
Converted["_Execute7"].Name = "Execute"
Converted["_Execute7"].Parent = Converted["_Templates7"]

Converted["_UIStroke29"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke29"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke29"].Thickness = 1.5
Converted["_UIStroke29"].Parent = Converted["_Execute7"]

Converted["_UICorner30"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner30"].Parent = Converted["_Execute7"]

Converted["_Player7"].Font = Enum.Font.Montserrat
Converted["_Player7"].PlaceholderText = "Player"
Converted["_Player7"].Text = ""
Converted["_Player7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player7"].TextSize = 14
Converted["_Player7"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player7"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player7"].BackgroundTransparency = 0.6000000238418579
Converted["_Player7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player7"].BorderSizePixel = 0
Converted["_Player7"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player7"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player7"].Name = "Player"
Converted["_Player7"].Parent = Converted["_Templates7"]

Converted["_UICorner31"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner31"].Parent = Converted["_Player7"]

Converted["_UIStroke30"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke30"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke30"].Thickness = 1.5
Converted["_UIStroke30"].Parent = Converted["_Player7"]

Converted["_Input7"].Font = Enum.Font.Montserrat
Converted["_Input7"].PlaceholderText = "Input"
Converted["_Input7"].Text = ""
Converted["_Input7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input7"].TextSize = 14
Converted["_Input7"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input7"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input7"].BackgroundTransparency = 0.6000000238418579
Converted["_Input7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input7"].BorderSizePixel = 0
Converted["_Input7"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input7"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input7"].Visible = false
Converted["_Input7"].Name = "Input"
Converted["_Input7"].Parent = Converted["_Templates7"]

Converted["_UICorner32"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner32"].Parent = Converted["_Input7"]

Converted["_UIStroke31"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke31"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke31"].Thickness = 1.5
Converted["_UIStroke31"].Parent = Converted["_Input7"]

Converted["_UIPadding14"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding14"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding14"].Parent = Converted["_Players"]

Converted["_ClientBring"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ClientBring"].BackgroundTransparency = 0.8999999761581421
Converted["_ClientBring"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ClientBring"].BorderSizePixel = 0
Converted["_ClientBring"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_ClientBring"].Size = UDim2.new(0, 439, 0, 40)
Converted["_ClientBring"].Name = "ClientBring"
Converted["_ClientBring"].Parent = Converted["_Players"]

Converted["_UICorner33"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner33"].Parent = Converted["_ClientBring"]

Converted["_UIStroke32"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke32"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke32"].Thickness = 2
Converted["_UIStroke32"].Parent = Converted["_ClientBring"]

Converted["_BoxTitle8"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle8"].Text = "Bring player on your client"
Converted["_BoxTitle8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle8"].TextSize = 15
Converted["_BoxTitle8"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle8"].BackgroundTransparency = 1
Converted["_BoxTitle8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle8"].BorderSizePixel = 0
Converted["_BoxTitle8"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle8"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle8"].Name = "BoxTitle"
Converted["_BoxTitle8"].Parent = Converted["_ClientBring"]

Converted["_Templates8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates8"].BackgroundTransparency = 1
Converted["_Templates8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates8"].BorderSizePixel = 0
Converted["_Templates8"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates8"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates8"].Name = "Templates"
Converted["_Templates8"].Parent = Converted["_ClientBring"]

Converted["_UIPadding15"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding15"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding15"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding15"].Parent = Converted["_Templates8"]

Converted["_Execute8"].Font = Enum.Font.Montserrat
Converted["_Execute8"].Text = "Execute"
Converted["_Execute8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute8"].TextSize = 14
Converted["_Execute8"].Active = false
Converted["_Execute8"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute8"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute8"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute8"].BorderSizePixel = 0
Converted["_Execute8"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute8"].Selectable = false
Converted["_Execute8"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute8"].Visible = false
Converted["_Execute8"].Name = "Execute"
Converted["_Execute8"].Parent = Converted["_Templates8"]

Converted["_UIStroke33"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke33"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke33"].Thickness = 1.5
Converted["_UIStroke33"].Parent = Converted["_Execute8"]

Converted["_UICorner34"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner34"].Parent = Converted["_Execute8"]

Converted["_Player8"].Font = Enum.Font.Montserrat
Converted["_Player8"].PlaceholderText = "Player"
Converted["_Player8"].Text = ""
Converted["_Player8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player8"].TextSize = 14
Converted["_Player8"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player8"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player8"].BackgroundTransparency = 0.6000000238418579
Converted["_Player8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player8"].BorderSizePixel = 0
Converted["_Player8"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player8"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player8"].Name = "Player"
Converted["_Player8"].Parent = Converted["_Templates8"]

Converted["_UICorner35"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner35"].Parent = Converted["_Player8"]

Converted["_UIStroke34"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke34"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke34"].Thickness = 1.5
Converted["_UIStroke34"].Parent = Converted["_Player8"]

Converted["_Input8"].Font = Enum.Font.Montserrat
Converted["_Input8"].PlaceholderText = "Input"
Converted["_Input8"].Text = ""
Converted["_Input8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input8"].TextSize = 14
Converted["_Input8"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input8"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input8"].BackgroundTransparency = 0.6000000238418579
Converted["_Input8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input8"].BorderSizePixel = 0
Converted["_Input8"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input8"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input8"].Visible = false
Converted["_Input8"].Name = "Input"
Converted["_Input8"].Parent = Converted["_Templates8"]

Converted["_UICorner36"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner36"].Parent = Converted["_Input8"]

Converted["_UIStroke35"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke35"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke35"].Thickness = 1.5
Converted["_UIStroke35"].Parent = Converted["_Input8"]

Converted["_Spectate"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Spectate"].BackgroundTransparency = 0.8999999761581421
Converted["_Spectate"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Spectate"].BorderSizePixel = 0
Converted["_Spectate"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Spectate"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Spectate"].Name = "Spectate"
Converted["_Spectate"].Parent = Converted["_Players"]

Converted["_UICorner37"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner37"].Parent = Converted["_Spectate"]

Converted["_UIStroke36"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke36"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke36"].Thickness = 2
Converted["_UIStroke36"].Parent = Converted["_Spectate"]

Converted["_BoxTitle9"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle9"].Text = "Spectate player"
Converted["_BoxTitle9"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle9"].TextSize = 15
Converted["_BoxTitle9"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle9"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle9"].BackgroundTransparency = 1
Converted["_BoxTitle9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle9"].BorderSizePixel = 0
Converted["_BoxTitle9"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle9"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle9"].Name = "BoxTitle"
Converted["_BoxTitle9"].Parent = Converted["_Spectate"]

Converted["_Templates9"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates9"].BackgroundTransparency = 1
Converted["_Templates9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates9"].BorderSizePixel = 0
Converted["_Templates9"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates9"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates9"].Name = "Templates"
Converted["_Templates9"].Parent = Converted["_Spectate"]

Converted["_UIPadding16"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding16"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding16"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding16"].Parent = Converted["_Templates9"]

Converted["_Execute9"].Font = Enum.Font.Montserrat
Converted["_Execute9"].Text = "Execute"
Converted["_Execute9"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute9"].TextSize = 14
Converted["_Execute9"].Active = false
Converted["_Execute9"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute9"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute9"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute9"].BorderSizePixel = 0
Converted["_Execute9"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute9"].Selectable = false
Converted["_Execute9"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute9"].Visible = false
Converted["_Execute9"].Name = "Execute"
Converted["_Execute9"].Parent = Converted["_Templates9"]

Converted["_UIStroke37"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke37"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke37"].Thickness = 1.5
Converted["_UIStroke37"].Parent = Converted["_Execute9"]

Converted["_UICorner38"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner38"].Parent = Converted["_Execute9"]

Converted["_Player9"].Font = Enum.Font.Montserrat
Converted["_Player9"].PlaceholderText = "Player"
Converted["_Player9"].Text = ""
Converted["_Player9"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player9"].TextSize = 14
Converted["_Player9"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player9"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player9"].BackgroundTransparency = 0.6000000238418579
Converted["_Player9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player9"].BorderSizePixel = 0
Converted["_Player9"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player9"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player9"].Name = "Player"
Converted["_Player9"].Parent = Converted["_Templates9"]

Converted["_UICorner39"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner39"].Parent = Converted["_Player9"]

Converted["_UIStroke38"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke38"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke38"].Thickness = 1.5
Converted["_UIStroke38"].Parent = Converted["_Player9"]

Converted["_Input9"].Font = Enum.Font.Montserrat
Converted["_Input9"].PlaceholderText = "Input"
Converted["_Input9"].Text = ""
Converted["_Input9"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input9"].TextSize = 14
Converted["_Input9"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input9"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input9"].BackgroundTransparency = 0.6000000238418579
Converted["_Input9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input9"].BorderSizePixel = 0
Converted["_Input9"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input9"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input9"].Visible = false
Converted["_Input9"].Name = "Input"
Converted["_Input9"].Parent = Converted["_Templates9"]

Converted["_UICorner40"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner40"].Parent = Converted["_Input9"]

Converted["_UIStroke39"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke39"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke39"].Thickness = 1.5
Converted["_UIStroke39"].Parent = Converted["_Input9"]

Converted["_Unview"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Unview"].BackgroundTransparency = 0.8999999761581421
Converted["_Unview"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Unview"].BorderSizePixel = 0
Converted["_Unview"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Unview"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Unview"].Name = "Unview"
Converted["_Unview"].Parent = Converted["_Players"]

Converted["_UICorner41"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner41"].Parent = Converted["_Unview"]

Converted["_UIStroke40"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke40"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke40"].Thickness = 2
Converted["_UIStroke40"].Parent = Converted["_Unview"]

Converted["_BoxTitle10"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle10"].Text = "Stop spectating player"
Converted["_BoxTitle10"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle10"].TextSize = 15
Converted["_BoxTitle10"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle10"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle10"].BackgroundTransparency = 1
Converted["_BoxTitle10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle10"].BorderSizePixel = 0
Converted["_BoxTitle10"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle10"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle10"].Name = "BoxTitle"
Converted["_BoxTitle10"].Parent = Converted["_Unview"]

Converted["_Templates10"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates10"].BackgroundTransparency = 1
Converted["_Templates10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates10"].BorderSizePixel = 0
Converted["_Templates10"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates10"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates10"].Name = "Templates"
Converted["_Templates10"].Parent = Converted["_Unview"]

Converted["_UIPadding17"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding17"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding17"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding17"].Parent = Converted["_Templates10"]

Converted["_Execute10"].Font = Enum.Font.Montserrat
Converted["_Execute10"].Text = "Execute"
Converted["_Execute10"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute10"].TextSize = 14
Converted["_Execute10"].Active = false
Converted["_Execute10"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute10"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute10"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute10"].BorderSizePixel = 0
Converted["_Execute10"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute10"].Selectable = false
Converted["_Execute10"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute10"].Name = "Execute"
Converted["_Execute10"].Parent = Converted["_Templates10"]

Converted["_UIStroke41"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke41"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke41"].Thickness = 1.5
Converted["_UIStroke41"].Parent = Converted["_Execute10"]

Converted["_UICorner42"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner42"].Parent = Converted["_Execute10"]

Converted["_Player10"].Font = Enum.Font.Montserrat
Converted["_Player10"].PlaceholderText = "Player"
Converted["_Player10"].Text = ""
Converted["_Player10"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player10"].TextSize = 14
Converted["_Player10"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player10"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player10"].BackgroundTransparency = 0.6000000238418579
Converted["_Player10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player10"].BorderSizePixel = 0
Converted["_Player10"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player10"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player10"].Visible = false
Converted["_Player10"].Name = "Player"
Converted["_Player10"].Parent = Converted["_Templates10"]

Converted["_UICorner43"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner43"].Parent = Converted["_Player10"]

Converted["_UIStroke42"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke42"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke42"].Thickness = 1.5
Converted["_UIStroke42"].Parent = Converted["_Player10"]

Converted["_Input10"].Font = Enum.Font.Montserrat
Converted["_Input10"].PlaceholderText = "Input"
Converted["_Input10"].Text = ""
Converted["_Input10"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input10"].TextSize = 14
Converted["_Input10"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input10"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input10"].BackgroundTransparency = 0.6000000238418579
Converted["_Input10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input10"].BorderSizePixel = 0
Converted["_Input10"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input10"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input10"].Visible = false
Converted["_Input10"].Name = "Input"
Converted["_Input10"].Parent = Converted["_Templates10"]

Converted["_UICorner44"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner44"].Parent = Converted["_Input10"]

Converted["_UIStroke43"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke43"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke43"].Thickness = 1.5
Converted["_UIStroke43"].Parent = Converted["_Input10"]

Converted["_NameTags"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_NameTags"].BackgroundTransparency = 0.8999999761581421
Converted["_NameTags"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_NameTags"].BorderSizePixel = 0
Converted["_NameTags"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_NameTags"].Size = UDim2.new(0, 439, 0, 40)
Converted["_NameTags"].Name = "NameTags"
Converted["_NameTags"].Parent = Converted["_Players"]

Converted["_UICorner45"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner45"].Parent = Converted["_NameTags"]

Converted["_UIStroke44"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke44"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke44"].Thickness = 2
Converted["_UIStroke44"].Parent = Converted["_NameTags"]

Converted["_BoxTitle11"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle11"].Text = "Toggle name headtags"
Converted["_BoxTitle11"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle11"].TextSize = 15
Converted["_BoxTitle11"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle11"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle11"].BackgroundTransparency = 1
Converted["_BoxTitle11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle11"].BorderSizePixel = 0
Converted["_BoxTitle11"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle11"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle11"].Name = "BoxTitle"
Converted["_BoxTitle11"].Parent = Converted["_NameTags"]

Converted["_Templates11"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates11"].BackgroundTransparency = 1
Converted["_Templates11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates11"].BorderSizePixel = 0
Converted["_Templates11"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates11"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates11"].Name = "Templates"
Converted["_Templates11"].Parent = Converted["_NameTags"]

Converted["_UIPadding18"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding18"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding18"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding18"].Parent = Converted["_Templates11"]

Converted["_Execute11"].Font = Enum.Font.Montserrat
Converted["_Execute11"].Text = "Execute"
Converted["_Execute11"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute11"].TextSize = 14
Converted["_Execute11"].Active = false
Converted["_Execute11"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute11"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute11"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute11"].BorderSizePixel = 0
Converted["_Execute11"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute11"].Selectable = false
Converted["_Execute11"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute11"].Name = "Execute"
Converted["_Execute11"].Parent = Converted["_Templates11"]

Converted["_UIStroke45"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke45"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke45"].Thickness = 1.5
Converted["_UIStroke45"].Parent = Converted["_Execute11"]

Converted["_UICorner46"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner46"].Parent = Converted["_Execute11"]

Converted["_Player11"].Font = Enum.Font.Montserrat
Converted["_Player11"].PlaceholderText = "Player"
Converted["_Player11"].Text = ""
Converted["_Player11"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player11"].TextSize = 14
Converted["_Player11"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player11"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player11"].BackgroundTransparency = 0.6000000238418579
Converted["_Player11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player11"].BorderSizePixel = 0
Converted["_Player11"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player11"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player11"].Visible = false
Converted["_Player11"].Name = "Player"
Converted["_Player11"].Parent = Converted["_Templates11"]

Converted["_UICorner47"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner47"].Parent = Converted["_Player11"]

Converted["_UIStroke46"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke46"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke46"].Thickness = 1.5
Converted["_UIStroke46"].Parent = Converted["_Player11"]

Converted["_Input11"].Font = Enum.Font.Montserrat
Converted["_Input11"].PlaceholderText = "Input"
Converted["_Input11"].Text = ""
Converted["_Input11"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input11"].TextSize = 14
Converted["_Input11"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input11"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input11"].BackgroundTransparency = 0.6000000238418579
Converted["_Input11"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input11"].BorderSizePixel = 0
Converted["_Input11"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input11"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input11"].Visible = false
Converted["_Input11"].Name = "Input"
Converted["_Input11"].Parent = Converted["_Templates11"]

Converted["_UICorner48"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner48"].Parent = Converted["_Input11"]

Converted["_UIStroke47"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke47"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke47"].Thickness = 1.5
Converted["_UIStroke47"].Parent = Converted["_Input11"]

Converted["_UIPadding19"].PaddingBottom = UDim.new(0, 15)
Converted["_UIPadding19"].Parent = Converted["_Btns"]

Converted["_Credits"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_Credits"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Credits"].BackgroundTransparency = 1
Converted["_Credits"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Credits"].BorderSizePixel = 0
Converted["_Credits"].LayoutOrder = 324324234
Converted["_Credits"].Position = UDim2.new(0.00106837612, 0, 0.429077893, 0)
Converted["_Credits"].Size = UDim2.new(0, 467, 0, 29)
Converted["_Credits"].Name = "Credits"
Converted["_Credits"].Parent = Converted["_Btns"]

Converted["_Title2"].Font = Enum.Font.MontserratMedium
Converted["_Title2"].Text = "Credits"
Converted["_Title2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title2"].TextSize = 14
Converted["_Title2"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title2"].BackgroundTransparency = 1
Converted["_Title2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title2"].BorderSizePixel = 0
Converted["_Title2"].Size = UDim2.new(0, 439, 0, 11)
Converted["_Title2"].Name = "Title"
Converted["_Title2"].Parent = Converted["_Credits"]

Converted["_UIListLayout8"].Padding = UDim.new(0, 10)
Converted["_UIListLayout8"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout8"].Parent = Converted["_Credits"]

Converted["_Template"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_Template"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Template"].BackgroundTransparency = 0.8999999761581421
Converted["_Template"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Template"].BorderSizePixel = 0
Converted["_Template"].Position = UDim2.new(0, 0, 0.134615391, 0)
Converted["_Template"].Size = UDim2.new(0, 439, 0, -4)
Converted["_Template"].Name = "Template"
Converted["_Template"].Parent = Converted["_Credits"]

Converted["_UICorner49"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner49"].Parent = Converted["_Template"]

Converted["_UIStroke48"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke48"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke48"].Thickness = 2
Converted["_UIStroke48"].Parent = Converted["_Template"]

Converted["_BoxTitle12"].Font = Enum.Font.Montserrat
Converted["_BoxTitle12"].RichText = true
Converted["_BoxTitle12"].Text = "<b>Creator:</b> lvasion / mi2tak3s"
Converted["_BoxTitle12"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle12"].TextSize = 15
Converted["_BoxTitle12"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle12"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle12"].BackgroundTransparency = 1
Converted["_BoxTitle12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle12"].BorderSizePixel = 0
Converted["_BoxTitle12"].LayoutOrder = 2
Converted["_BoxTitle12"].Size = UDim2.new(0, 215, 0, 32)
Converted["_BoxTitle12"].Name = "BoxTitle"
Converted["_BoxTitle12"].Parent = Converted["_Template"]

Converted["_UIListLayout9"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout9"].Parent = Converted["_Template"]

Converted["_BoxTitle13"].Font = Enum.Font.Montserrat
Converted["_BoxTitle13"].RichText = true
Converted["_BoxTitle13"].Text = "<b>Owner:</b> goldgoldgoldblazn / Sushi"
Converted["_BoxTitle13"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle13"].TextSize = 15
Converted["_BoxTitle13"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle13"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle13"].BackgroundTransparency = 1
Converted["_BoxTitle13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle13"].BorderSizePixel = 0
Converted["_BoxTitle13"].LayoutOrder = 1
Converted["_BoxTitle13"].Position = UDim2.new(0, 0, 0.516129017, 0)
Converted["_BoxTitle13"].Size = UDim2.new(0, 215, 0, 32)
Converted["_BoxTitle13"].Name = "BoxTitle"
Converted["_BoxTitle13"].Parent = Converted["_Template"]

Converted["_UIPadding20"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding20"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding20"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding20"].Parent = Converted["_Template"]

Converted["_UIPadding21"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding21"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding21"].Parent = Converted["_Credits"]

Converted["_Universal"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_Universal"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Universal"].BackgroundTransparency = 1
Converted["_Universal"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Universal"].BorderSizePixel = 0
Converted["_Universal"].Position = UDim2.new(0.00106837612, 0, 0.127659574, 0)
Converted["_Universal"].Size = UDim2.new(0, 467, 0, -4)
Converted["_Universal"].Name = "Universal"
Converted["_Universal"].Parent = Converted["_Btns"]

Converted["_Title3"].Font = Enum.Font.MontserratMedium
Converted["_Title3"].Text = "Universal"
Converted["_Title3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title3"].TextSize = 14
Converted["_Title3"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title3"].BackgroundTransparency = 1
Converted["_Title3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title3"].BorderSizePixel = 0
Converted["_Title3"].Size = UDim2.new(0, 439, 0, 11)
Converted["_Title3"].Name = "Title"
Converted["_Title3"].Parent = Converted["_Universal"]

Converted["_UIListLayout10"].Padding = UDim.new(0, 10)
Converted["_UIListLayout10"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout10"].Parent = Converted["_Universal"]

Converted["_UIPadding22"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding22"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding22"].Parent = Converted["_Universal"]

Converted["_InfiniteYield"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_InfiniteYield"].BackgroundTransparency = 0.8999999761581421
Converted["_InfiniteYield"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_InfiniteYield"].BorderSizePixel = 0
Converted["_InfiniteYield"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_InfiniteYield"].Size = UDim2.new(0, 439, 0, 40)
Converted["_InfiniteYield"].Name = "InfiniteYield"
Converted["_InfiniteYield"].Parent = Converted["_Universal"]

Converted["_UICorner50"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner50"].Parent = Converted["_InfiniteYield"]

Converted["_UIStroke49"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke49"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke49"].Thickness = 2
Converted["_UIStroke49"].Parent = Converted["_InfiniteYield"]

Converted["_BoxTitle14"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle14"].Text = "Execute infinite yield"
Converted["_BoxTitle14"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle14"].TextSize = 15
Converted["_BoxTitle14"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle14"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle14"].BackgroundTransparency = 1
Converted["_BoxTitle14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle14"].BorderSizePixel = 0
Converted["_BoxTitle14"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle14"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle14"].Name = "BoxTitle"
Converted["_BoxTitle14"].Parent = Converted["_InfiniteYield"]

Converted["_Templates12"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates12"].BackgroundTransparency = 1
Converted["_Templates12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates12"].BorderSizePixel = 0
Converted["_Templates12"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates12"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates12"].Name = "Templates"
Converted["_Templates12"].Parent = Converted["_InfiniteYield"]

Converted["_UIPadding23"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding23"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding23"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding23"].Parent = Converted["_Templates12"]

Converted["_Execute12"].Font = Enum.Font.Montserrat
Converted["_Execute12"].Text = "Execute"
Converted["_Execute12"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute12"].TextSize = 14
Converted["_Execute12"].Active = false
Converted["_Execute12"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute12"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute12"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute12"].BorderSizePixel = 0
Converted["_Execute12"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute12"].Selectable = false
Converted["_Execute12"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute12"].Name = "Execute"
Converted["_Execute12"].Parent = Converted["_Templates12"]

Converted["_UIStroke50"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke50"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke50"].Thickness = 1.5
Converted["_UIStroke50"].Parent = Converted["_Execute12"]

Converted["_UICorner51"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner51"].Parent = Converted["_Execute12"]

Converted["_Player12"].Font = Enum.Font.Montserrat
Converted["_Player12"].PlaceholderText = "Player"
Converted["_Player12"].Text = ""
Converted["_Player12"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player12"].TextSize = 14
Converted["_Player12"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player12"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player12"].BackgroundTransparency = 0.6000000238418579
Converted["_Player12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player12"].BorderSizePixel = 0
Converted["_Player12"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player12"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player12"].Visible = false
Converted["_Player12"].Name = "Player"
Converted["_Player12"].Parent = Converted["_Templates12"]

Converted["_UICorner52"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner52"].Parent = Converted["_Player12"]

Converted["_UIStroke51"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke51"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke51"].Thickness = 1.5
Converted["_UIStroke51"].Parent = Converted["_Player12"]

Converted["_Input12"].Font = Enum.Font.Montserrat
Converted["_Input12"].PlaceholderText = "Input"
Converted["_Input12"].Text = ""
Converted["_Input12"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input12"].TextSize = 14
Converted["_Input12"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input12"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input12"].BackgroundTransparency = 0.6000000238418579
Converted["_Input12"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input12"].BorderSizePixel = 0
Converted["_Input12"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input12"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input12"].Visible = false
Converted["_Input12"].Name = "Input"
Converted["_Input12"].Parent = Converted["_Templates12"]

Converted["_UICorner53"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner53"].Parent = Converted["_Input12"]

Converted["_UIStroke52"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke52"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke52"].Thickness = 1.5
Converted["_UIStroke52"].Parent = Converted["_Input12"]

Converted["_VoiceChat"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_VoiceChat"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_VoiceChat"].BackgroundTransparency = 1
Converted["_VoiceChat"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_VoiceChat"].BorderSizePixel = 0
Converted["_VoiceChat"].Position = UDim2.new(0.00106837612, 0, 0.127659574, 0)
Converted["_VoiceChat"].Size = UDim2.new(0, 467, 0, -4)
Converted["_VoiceChat"].Name = "VoiceChat"
Converted["_VoiceChat"].Parent = Converted["_Btns"]

Converted["_Title4"].Font = Enum.Font.MontserratMedium
Converted["_Title4"].Text = "Voice Chat"
Converted["_Title4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title4"].TextSize = 14
Converted["_Title4"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title4"].BackgroundTransparency = 1
Converted["_Title4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title4"].BorderSizePixel = 0
Converted["_Title4"].Size = UDim2.new(0, 439, 0, 11)
Converted["_Title4"].Name = "Title"
Converted["_Title4"].Parent = Converted["_VoiceChat"]

Converted["_UIListLayout11"].Padding = UDim.new(0, 10)
Converted["_UIListLayout11"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout11"].Parent = Converted["_VoiceChat"]

Converted["_UIPadding24"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding24"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding24"].Parent = Converted["_VoiceChat"]

Converted["_Rejoin"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Rejoin"].BackgroundTransparency = 0.8999999761581421
Converted["_Rejoin"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Rejoin"].BorderSizePixel = 0
Converted["_Rejoin"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Rejoin"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Rejoin"].Name = "Rejoin"
Converted["_Rejoin"].Parent = Converted["_VoiceChat"]

Converted["_UICorner54"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner54"].Parent = Converted["_Rejoin"]

Converted["_UIStroke53"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke53"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke53"].Thickness = 2
Converted["_UIStroke53"].Parent = Converted["_Rejoin"]

Converted["_BoxTitle15"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle15"].Text = "Rejoin voice chat"
Converted["_BoxTitle15"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle15"].TextSize = 15
Converted["_BoxTitle15"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle15"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle15"].BackgroundTransparency = 1
Converted["_BoxTitle15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle15"].BorderSizePixel = 0
Converted["_BoxTitle15"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle15"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle15"].Name = "BoxTitle"
Converted["_BoxTitle15"].Parent = Converted["_Rejoin"]

Converted["_Templates13"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates13"].BackgroundTransparency = 1
Converted["_Templates13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates13"].BorderSizePixel = 0
Converted["_Templates13"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates13"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates13"].Name = "Templates"
Converted["_Templates13"].Parent = Converted["_Rejoin"]

Converted["_UIPadding25"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding25"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding25"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding25"].Parent = Converted["_Templates13"]

Converted["_Execute13"].Font = Enum.Font.Montserrat
Converted["_Execute13"].Text = "Execute"
Converted["_Execute13"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute13"].TextSize = 14
Converted["_Execute13"].Active = false
Converted["_Execute13"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute13"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute13"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute13"].BorderSizePixel = 0
Converted["_Execute13"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute13"].Selectable = false
Converted["_Execute13"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute13"].Name = "Execute"
Converted["_Execute13"].Parent = Converted["_Templates13"]

Converted["_UIStroke54"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke54"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke54"].Thickness = 1.5
Converted["_UIStroke54"].Parent = Converted["_Execute13"]

Converted["_UICorner55"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner55"].Parent = Converted["_Execute13"]

Converted["_Player13"].Font = Enum.Font.Montserrat
Converted["_Player13"].PlaceholderText = "Player"
Converted["_Player13"].Text = ""
Converted["_Player13"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player13"].TextSize = 14
Converted["_Player13"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player13"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player13"].BackgroundTransparency = 0.6000000238418579
Converted["_Player13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player13"].BorderSizePixel = 0
Converted["_Player13"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player13"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player13"].Visible = false
Converted["_Player13"].Name = "Player"
Converted["_Player13"].Parent = Converted["_Templates13"]

Converted["_UICorner56"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner56"].Parent = Converted["_Player13"]

Converted["_UIStroke55"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke55"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke55"].Thickness = 1.5
Converted["_UIStroke55"].Parent = Converted["_Player13"]

Converted["_Input13"].Font = Enum.Font.Montserrat
Converted["_Input13"].PlaceholderText = "Input"
Converted["_Input13"].Text = ""
Converted["_Input13"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input13"].TextSize = 14
Converted["_Input13"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input13"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input13"].BackgroundTransparency = 0.6000000238418579
Converted["_Input13"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input13"].BorderSizePixel = 0
Converted["_Input13"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input13"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input13"].Visible = false
Converted["_Input13"].Name = "Input"
Converted["_Input13"].Parent = Converted["_Templates13"]

Converted["_UICorner57"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner57"].Parent = Converted["_Input13"]

Converted["_UIStroke56"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke56"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke56"].Thickness = 1.5
Converted["_UIStroke56"].Parent = Converted["_Input13"]

Converted["_Disconnect"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Disconnect"].BackgroundTransparency = 0.8999999761581421
Converted["_Disconnect"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Disconnect"].BorderSizePixel = 0
Converted["_Disconnect"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Disconnect"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Disconnect"].Name = "Disconnect"
Converted["_Disconnect"].Parent = Converted["_VoiceChat"]

Converted["_UICorner58"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner58"].Parent = Converted["_Disconnect"]

Converted["_UIStroke57"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke57"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke57"].Thickness = 2
Converted["_UIStroke57"].Parent = Converted["_Disconnect"]

Converted["_BoxTitle16"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle16"].Text = "Disconnect voice chat"
Converted["_BoxTitle16"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle16"].TextSize = 15
Converted["_BoxTitle16"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle16"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle16"].BackgroundTransparency = 1
Converted["_BoxTitle16"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle16"].BorderSizePixel = 0
Converted["_BoxTitle16"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle16"].Size = UDim2.new(0, 215, 0, 40)
Converted["_BoxTitle16"].Name = "BoxTitle"
Converted["_BoxTitle16"].Parent = Converted["_Disconnect"]

Converted["_Templates14"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates14"].BackgroundTransparency = 1
Converted["_Templates14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates14"].BorderSizePixel = 0
Converted["_Templates14"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates14"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates14"].Name = "Templates"
Converted["_Templates14"].Parent = Converted["_Disconnect"]

Converted["_UIPadding26"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding26"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding26"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding26"].Parent = Converted["_Templates14"]

Converted["_Execute14"].Font = Enum.Font.Montserrat
Converted["_Execute14"].Text = "Execute"
Converted["_Execute14"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute14"].TextSize = 14
Converted["_Execute14"].Active = false
Converted["_Execute14"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute14"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute14"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute14"].BorderSizePixel = 0
Converted["_Execute14"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute14"].Selectable = false
Converted["_Execute14"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute14"].Name = "Execute"
Converted["_Execute14"].Parent = Converted["_Templates14"]

Converted["_UIStroke58"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke58"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke58"].Thickness = 1.5
Converted["_UIStroke58"].Parent = Converted["_Execute14"]

Converted["_UICorner59"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner59"].Parent = Converted["_Execute14"]

Converted["_Player14"].Font = Enum.Font.Montserrat
Converted["_Player14"].PlaceholderText = "Player"
Converted["_Player14"].Text = ""
Converted["_Player14"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player14"].TextSize = 14
Converted["_Player14"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player14"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player14"].BackgroundTransparency = 0.6000000238418579
Converted["_Player14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player14"].BorderSizePixel = 0
Converted["_Player14"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player14"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player14"].Visible = false
Converted["_Player14"].Name = "Player"
Converted["_Player14"].Parent = Converted["_Templates14"]

Converted["_UICorner60"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner60"].Parent = Converted["_Player14"]

Converted["_UIStroke59"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke59"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke59"].Thickness = 1.5
Converted["_UIStroke59"].Parent = Converted["_Player14"]

Converted["_Input14"].Font = Enum.Font.Montserrat
Converted["_Input14"].PlaceholderText = "Input"
Converted["_Input14"].Text = ""
Converted["_Input14"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input14"].TextSize = 14
Converted["_Input14"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input14"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input14"].BackgroundTransparency = 0.6000000238418579
Converted["_Input14"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input14"].BorderSizePixel = 0
Converted["_Input14"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input14"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input14"].Visible = false
Converted["_Input14"].Name = "Input"
Converted["_Input14"].Parent = Converted["_Templates14"]

Converted["_UICorner61"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner61"].Parent = Converted["_Input14"]

Converted["_UIStroke60"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke60"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke60"].Thickness = 1.5
Converted["_UIStroke60"].Parent = Converted["_Input14"]

Converted["_Priority"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Priority"].BackgroundTransparency = 0.8999999761581421
Converted["_Priority"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Priority"].BorderSizePixel = 0
Converted["_Priority"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Priority"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Priority"].Name = "Priority"
Converted["_Priority"].Parent = Converted["_VoiceChat"]

Converted["_UICorner62"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner62"].Parent = Converted["_Priority"]

Converted["_UIStroke61"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke61"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke61"].Thickness = 2
Converted["_UIStroke61"].Parent = Converted["_Priority"]

Converted["_BoxTitle17"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle17"].Text = "Become priority speaker (Detectable)"
Converted["_BoxTitle17"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle17"].TextSize = 15
Converted["_BoxTitle17"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle17"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle17"].BackgroundTransparency = 1
Converted["_BoxTitle17"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle17"].BorderSizePixel = 0
Converted["_BoxTitle17"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle17"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle17"].Name = "BoxTitle"
Converted["_BoxTitle17"].Parent = Converted["_Priority"]

Converted["_Templates15"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates15"].BackgroundTransparency = 1
Converted["_Templates15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates15"].BorderSizePixel = 0
Converted["_Templates15"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates15"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates15"].Name = "Templates"
Converted["_Templates15"].Parent = Converted["_Priority"]

Converted["_UIPadding27"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding27"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding27"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding27"].Parent = Converted["_Templates15"]

Converted["_Execute15"].Font = Enum.Font.Montserrat
Converted["_Execute15"].Text = "Execute"
Converted["_Execute15"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute15"].TextSize = 14
Converted["_Execute15"].Active = false
Converted["_Execute15"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute15"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute15"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute15"].BorderSizePixel = 0
Converted["_Execute15"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute15"].Selectable = false
Converted["_Execute15"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute15"].Name = "Execute"
Converted["_Execute15"].Parent = Converted["_Templates15"]

Converted["_UIStroke62"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke62"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke62"].Thickness = 1.5
Converted["_UIStroke62"].Parent = Converted["_Execute15"]

Converted["_UICorner63"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner63"].Parent = Converted["_Execute15"]

Converted["_Player15"].Font = Enum.Font.Montserrat
Converted["_Player15"].PlaceholderText = "Player"
Converted["_Player15"].Text = ""
Converted["_Player15"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player15"].TextSize = 14
Converted["_Player15"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player15"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player15"].BackgroundTransparency = 0.6000000238418579
Converted["_Player15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player15"].BorderSizePixel = 0
Converted["_Player15"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player15"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player15"].Visible = false
Converted["_Player15"].Name = "Player"
Converted["_Player15"].Parent = Converted["_Templates15"]

Converted["_UICorner64"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner64"].Parent = Converted["_Player15"]

Converted["_UIStroke63"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke63"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke63"].Thickness = 1.5
Converted["_UIStroke63"].Parent = Converted["_Player15"]

Converted["_Input15"].Font = Enum.Font.Montserrat
Converted["_Input15"].PlaceholderText = "Input"
Converted["_Input15"].Text = ""
Converted["_Input15"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input15"].TextSize = 14
Converted["_Input15"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input15"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input15"].BackgroundTransparency = 0.6000000238418579
Converted["_Input15"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input15"].BorderSizePixel = 0
Converted["_Input15"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input15"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input15"].Visible = false
Converted["_Input15"].Name = "Input"
Converted["_Input15"].Parent = Converted["_Templates15"]

Converted["_UICorner65"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner65"].Parent = Converted["_Input15"]

Converted["_UIStroke64"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke64"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke64"].Thickness = 1.5
Converted["_UIStroke64"].Parent = Converted["_Input15"]

Converted["_AntiSuspend"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_AntiSuspend"].BackgroundTransparency = 0.8999999761581421
Converted["_AntiSuspend"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_AntiSuspend"].BorderSizePixel = 0
Converted["_AntiSuspend"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_AntiSuspend"].Size = UDim2.new(0, 439, 0, 40)
Converted["_AntiSuspend"].Name = "AntiSuspend"
Converted["_AntiSuspend"].Parent = Converted["_VoiceChat"]

Converted["_UICorner66"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner66"].Parent = Converted["_AntiSuspend"]

Converted["_UIStroke65"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke65"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke65"].Thickness = 2
Converted["_UIStroke65"].Parent = Converted["_AntiSuspend"]

Converted["_BoxTitle18"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle18"].Text = "Remove suspension automatically"
Converted["_BoxTitle18"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle18"].TextSize = 15
Converted["_BoxTitle18"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle18"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle18"].BackgroundTransparency = 1
Converted["_BoxTitle18"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle18"].BorderSizePixel = 0
Converted["_BoxTitle18"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle18"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle18"].Name = "BoxTitle"
Converted["_BoxTitle18"].Parent = Converted["_AntiSuspend"]

Converted["_Templates16"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates16"].BackgroundTransparency = 1
Converted["_Templates16"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates16"].BorderSizePixel = 0
Converted["_Templates16"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates16"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates16"].Name = "Templates"
Converted["_Templates16"].Parent = Converted["_AntiSuspend"]

Converted["_UIPadding28"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding28"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding28"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding28"].Parent = Converted["_Templates16"]

Converted["_Execute16"].Font = Enum.Font.Montserrat
Converted["_Execute16"].Text = "Execute"
Converted["_Execute16"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute16"].TextSize = 14
Converted["_Execute16"].Active = false
Converted["_Execute16"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute16"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute16"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute16"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute16"].BorderSizePixel = 0
Converted["_Execute16"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute16"].Selectable = false
Converted["_Execute16"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute16"].Visible = false
Converted["_Execute16"].Name = "Execute"
Converted["_Execute16"].Parent = Converted["_Templates16"]

Converted["_UIStroke66"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke66"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke66"].Thickness = 1.5
Converted["_UIStroke66"].Parent = Converted["_Execute16"]

Converted["_UICorner67"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner67"].Parent = Converted["_Execute16"]

Converted["_Player16"].Font = Enum.Font.Montserrat
Converted["_Player16"].PlaceholderText = "Player"
Converted["_Player16"].Text = ""
Converted["_Player16"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player16"].TextSize = 14
Converted["_Player16"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player16"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player16"].BackgroundTransparency = 0.6000000238418579
Converted["_Player16"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player16"].BorderSizePixel = 0
Converted["_Player16"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player16"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player16"].Visible = false
Converted["_Player16"].Name = "Player"
Converted["_Player16"].Parent = Converted["_Templates16"]

Converted["_UICorner68"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner68"].Parent = Converted["_Player16"]

Converted["_UIStroke67"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke67"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke67"].Thickness = 1.5
Converted["_UIStroke67"].Parent = Converted["_Player16"]

Converted["_Input16"].Font = Enum.Font.Montserrat
Converted["_Input16"].PlaceholderText = "Input"
Converted["_Input16"].Text = ""
Converted["_Input16"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input16"].TextSize = 14
Converted["_Input16"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input16"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input16"].BackgroundTransparency = 0.6000000238418579
Converted["_Input16"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input16"].BorderSizePixel = 0
Converted["_Input16"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input16"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input16"].Visible = false
Converted["_Input16"].Name = "Input"
Converted["_Input16"].Parent = Converted["_Templates16"]

Converted["_UICorner69"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner69"].Parent = Converted["_Input16"]

Converted["_UIStroke68"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke68"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke68"].Thickness = 1.5
Converted["_UIStroke68"].Parent = Converted["_Input16"]

Converted["_Execute17"].Font = Enum.Font.Montserrat
Converted["_Execute17"].Text = "Enabled by default"
Converted["_Execute17"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute17"].TextSize = 14
Converted["_Execute17"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute17"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute17"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute17"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute17"].BorderSizePixel = 0
Converted["_Execute17"].Position = UDim2.new(0.526206791, 0, 0.5, 0)
Converted["_Execute17"].Size = UDim2.new(0.947586358, 0, 1, 0)
Converted["_Execute17"].Name = "Execute"
Converted["_Execute17"].Parent = Converted["_Templates16"]

Converted["_UIStroke69"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke69"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke69"].Thickness = 1.5
Converted["_UIStroke69"].Parent = Converted["_Execute17"]

Converted["_UICorner70"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner70"].Parent = Converted["_Execute17"]

Converted["_Animations"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_Animations"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Animations"].BackgroundTransparency = 1
Converted["_Animations"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Animations"].BorderSizePixel = 0
Converted["_Animations"].Position = UDim2.new(0.00106837612, 0, 0.127659574, 0)
Converted["_Animations"].Size = UDim2.new(0, 467, 0, -4)
Converted["_Animations"].Name = "Animations"
Converted["_Animations"].Parent = Converted["_Btns"]

Converted["_Title5"].Font = Enum.Font.MontserratMedium
Converted["_Title5"].Text = "Animations"
Converted["_Title5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title5"].TextSize = 14
Converted["_Title5"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title5"].BackgroundTransparency = 1
Converted["_Title5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title5"].BorderSizePixel = 0
Converted["_Title5"].Size = UDim2.new(0, 439, 0, 11)
Converted["_Title5"].Name = "Title"
Converted["_Title5"].Parent = Converted["_Animations"]

Converted["_UIListLayout12"].Padding = UDim.new(0, 10)
Converted["_UIListLayout12"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout12"].Parent = Converted["_Animations"]

Converted["_UIPadding29"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding29"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding29"].Parent = Converted["_Animations"]

Converted["_PlayAnim"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_PlayAnim"].BackgroundTransparency = 0.8999999761581421
Converted["_PlayAnim"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_PlayAnim"].BorderSizePixel = 0
Converted["_PlayAnim"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_PlayAnim"].Size = UDim2.new(0, 439, 0, 40)
Converted["_PlayAnim"].Name = "PlayAnim"
Converted["_PlayAnim"].Parent = Converted["_Animations"]

Converted["_UICorner71"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner71"].Parent = Converted["_PlayAnim"]

Converted["_UIStroke70"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke70"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke70"].Thickness = 2
Converted["_UIStroke70"].Parent = Converted["_PlayAnim"]

Converted["_BoxTitle19"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle19"].Text = "Play animation"
Converted["_BoxTitle19"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle19"].TextSize = 15
Converted["_BoxTitle19"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle19"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle19"].BackgroundTransparency = 1
Converted["_BoxTitle19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle19"].BorderSizePixel = 0
Converted["_BoxTitle19"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle19"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle19"].Name = "BoxTitle"
Converted["_BoxTitle19"].Parent = Converted["_PlayAnim"]

Converted["_Templates17"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates17"].BackgroundTransparency = 1
Converted["_Templates17"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates17"].BorderSizePixel = 0
Converted["_Templates17"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates17"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates17"].Name = "Templates"
Converted["_Templates17"].Parent = Converted["_PlayAnim"]

Converted["_UIPadding30"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding30"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding30"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding30"].Parent = Converted["_Templates17"]

Converted["_Execute18"].Font = Enum.Font.Montserrat
Converted["_Execute18"].Text = "Execute"
Converted["_Execute18"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute18"].TextSize = 14
Converted["_Execute18"].Active = false
Converted["_Execute18"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute18"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute18"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute18"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute18"].BorderSizePixel = 0
Converted["_Execute18"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute18"].Selectable = false
Converted["_Execute18"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute18"].Visible = false
Converted["_Execute18"].Name = "Execute"
Converted["_Execute18"].Parent = Converted["_Templates17"]

Converted["_UIStroke71"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke71"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke71"].Thickness = 1.5
Converted["_UIStroke71"].Parent = Converted["_Execute18"]

Converted["_UICorner72"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner72"].Parent = Converted["_Execute18"]

Converted["_Player17"].Font = Enum.Font.Montserrat
Converted["_Player17"].PlaceholderText = "Player"
Converted["_Player17"].Text = ""
Converted["_Player17"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player17"].TextSize = 14
Converted["_Player17"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player17"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player17"].BackgroundTransparency = 0.6000000238418579
Converted["_Player17"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player17"].BorderSizePixel = 0
Converted["_Player17"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player17"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player17"].Visible = false
Converted["_Player17"].Name = "Player"
Converted["_Player17"].Parent = Converted["_Templates17"]

Converted["_UICorner73"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner73"].Parent = Converted["_Player17"]

Converted["_UIStroke72"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke72"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke72"].Thickness = 1.5
Converted["_UIStroke72"].Parent = Converted["_Player17"]

Converted["_Input17"].Font = Enum.Font.Montserrat
Converted["_Input17"].PlaceholderText = "Input"
Converted["_Input17"].Text = ""
Converted["_Input17"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input17"].TextSize = 14
Converted["_Input17"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input17"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input17"].BackgroundTransparency = 0.6000000238418579
Converted["_Input17"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input17"].BorderSizePixel = 0
Converted["_Input17"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input17"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input17"].Visible = false
Converted["_Input17"].Name = "Input"
Converted["_Input17"].Parent = Converted["_Templates17"]

Converted["_UICorner74"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner74"].Parent = Converted["_Input17"]

Converted["_UIStroke73"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke73"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke73"].Thickness = 1.5
Converted["_UIStroke73"].Parent = Converted["_Input17"]

Converted["_DropDown"].Image = "rbxassetid://12974428978"
Converted["_DropDown"].ImageTransparency = 0.30000001192092896
Converted["_DropDown"].ScaleType = Enum.ScaleType.Fit
Converted["_DropDown"].Active = false
Converted["_DropDown"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DropDown"].BackgroundTransparency = 1
Converted["_DropDown"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropDown"].BorderSizePixel = 0
Converted["_DropDown"].Position = UDim2.new(0.82344842, 0, -0.214286804, 0)
Converted["_DropDown"].Selectable = false
Converted["_DropDown"].Size = UDim2.new(0, 20, 0, 40)
Converted["_DropDown"].Name = "DropDown"
Converted["_DropDown"].Parent = Converted["_Templates17"]

Converted["_AnimID"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_AnimID"].BackgroundTransparency = 0.8999999761581421
Converted["_AnimID"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_AnimID"].BorderSizePixel = 0
Converted["_AnimID"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_AnimID"].Size = UDim2.new(0, 439, 0, 40)
Converted["_AnimID"].Name = "AnimID"
Converted["_AnimID"].Parent = Converted["_Animations"]

Converted["_UICorner75"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner75"].Parent = Converted["_AnimID"]

Converted["_UIStroke74"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke74"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke74"].Thickness = 2
Converted["_UIStroke74"].Parent = Converted["_AnimID"]

Converted["_BoxTitle20"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle20"].Text = "Play animationId"
Converted["_BoxTitle20"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle20"].TextSize = 15
Converted["_BoxTitle20"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle20"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle20"].BackgroundTransparency = 1
Converted["_BoxTitle20"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle20"].BorderSizePixel = 0
Converted["_BoxTitle20"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle20"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle20"].Name = "BoxTitle"
Converted["_BoxTitle20"].Parent = Converted["_AnimID"]

Converted["_Templates18"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates18"].BackgroundTransparency = 1
Converted["_Templates18"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates18"].BorderSizePixel = 0
Converted["_Templates18"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates18"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates18"].Name = "Templates"
Converted["_Templates18"].Parent = Converted["_AnimID"]

Converted["_UIPadding31"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding31"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding31"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding31"].Parent = Converted["_Templates18"]

Converted["_Execute19"].Font = Enum.Font.Montserrat
Converted["_Execute19"].Text = "Execute"
Converted["_Execute19"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute19"].TextSize = 14
Converted["_Execute19"].Active = false
Converted["_Execute19"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute19"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute19"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute19"].BorderSizePixel = 0
Converted["_Execute19"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute19"].Selectable = false
Converted["_Execute19"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute19"].Visible = false
Converted["_Execute19"].Name = "Execute"
Converted["_Execute19"].Parent = Converted["_Templates18"]

Converted["_UIStroke75"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke75"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke75"].Thickness = 1.5
Converted["_UIStroke75"].Parent = Converted["_Execute19"]

Converted["_UICorner76"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner76"].Parent = Converted["_Execute19"]

Converted["_Player18"].Font = Enum.Font.Montserrat
Converted["_Player18"].PlaceholderText = "Player"
Converted["_Player18"].Text = ""
Converted["_Player18"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player18"].TextSize = 14
Converted["_Player18"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player18"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player18"].BackgroundTransparency = 0.6000000238418579
Converted["_Player18"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player18"].BorderSizePixel = 0
Converted["_Player18"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player18"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player18"].Visible = false
Converted["_Player18"].Name = "Player"
Converted["_Player18"].Parent = Converted["_Templates18"]

Converted["_UICorner77"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner77"].Parent = Converted["_Player18"]

Converted["_UIStroke76"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke76"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke76"].Thickness = 1.5
Converted["_UIStroke76"].Parent = Converted["_Player18"]

Converted["_Input18"].Font = Enum.Font.Montserrat
Converted["_Input18"].PlaceholderText = "Input"
Converted["_Input18"].Text = ""
Converted["_Input18"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input18"].TextSize = 14
Converted["_Input18"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input18"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input18"].BackgroundTransparency = 0.6000000238418579
Converted["_Input18"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input18"].BorderSizePixel = 0
Converted["_Input18"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input18"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input18"].Name = "Input"
Converted["_Input18"].Parent = Converted["_Templates18"]

Converted["_UICorner78"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner78"].Parent = Converted["_Input18"]

Converted["_UIStroke77"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke77"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke77"].Thickness = 1.5
Converted["_UIStroke77"].Parent = Converted["_Input18"]

Converted["_DropDown1"].Image = "rbxassetid://12974428978"
Converted["_DropDown1"].ImageTransparency = 0.30000001192092896
Converted["_DropDown1"].ScaleType = Enum.ScaleType.Fit
Converted["_DropDown1"].Active = false
Converted["_DropDown1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DropDown1"].BackgroundTransparency = 1
Converted["_DropDown1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropDown1"].BorderSizePixel = 0
Converted["_DropDown1"].Position = UDim2.new(0.82344842, 0, -0.214286804, 0)
Converted["_DropDown1"].Selectable = false
Converted["_DropDown1"].Size = UDim2.new(0, 20, 0, 40)
Converted["_DropDown1"].Visible = false
Converted["_DropDown1"].Name = "DropDown"
Converted["_DropDown1"].Parent = Converted["_Templates18"]

Converted["_StopAnims"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_StopAnims"].BackgroundTransparency = 0.8999999761581421
Converted["_StopAnims"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_StopAnims"].BorderSizePixel = 0
Converted["_StopAnims"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_StopAnims"].Size = UDim2.new(0, 439, 0, 40)
Converted["_StopAnims"].Name = "StopAnims"
Converted["_StopAnims"].Parent = Converted["_Animations"]

Converted["_UICorner79"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner79"].Parent = Converted["_StopAnims"]

Converted["_UIStroke78"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke78"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke78"].Thickness = 2
Converted["_UIStroke78"].Parent = Converted["_StopAnims"]

Converted["_BoxTitle21"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle21"].Text = "Stop animations"
Converted["_BoxTitle21"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle21"].TextSize = 15
Converted["_BoxTitle21"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle21"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle21"].BackgroundTransparency = 1
Converted["_BoxTitle21"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle21"].BorderSizePixel = 0
Converted["_BoxTitle21"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle21"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle21"].Name = "BoxTitle"
Converted["_BoxTitle21"].Parent = Converted["_StopAnims"]

Converted["_Templates19"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates19"].BackgroundTransparency = 1
Converted["_Templates19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates19"].BorderSizePixel = 0
Converted["_Templates19"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates19"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates19"].Name = "Templates"
Converted["_Templates19"].Parent = Converted["_StopAnims"]

Converted["_UIPadding32"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding32"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding32"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding32"].Parent = Converted["_Templates19"]

Converted["_Execute20"].Font = Enum.Font.Montserrat
Converted["_Execute20"].Text = "Execute"
Converted["_Execute20"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute20"].TextSize = 14
Converted["_Execute20"].Active = false
Converted["_Execute20"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute20"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute20"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute20"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute20"].BorderSizePixel = 0
Converted["_Execute20"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute20"].Selectable = false
Converted["_Execute20"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute20"].Name = "Execute"
Converted["_Execute20"].Parent = Converted["_Templates19"]

Converted["_UIStroke79"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke79"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke79"].Thickness = 1.5
Converted["_UIStroke79"].Parent = Converted["_Execute20"]

Converted["_UICorner80"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner80"].Parent = Converted["_Execute20"]

Converted["_Player19"].Font = Enum.Font.Montserrat
Converted["_Player19"].PlaceholderText = "Player"
Converted["_Player19"].Text = ""
Converted["_Player19"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player19"].TextSize = 14
Converted["_Player19"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player19"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player19"].BackgroundTransparency = 0.6000000238418579
Converted["_Player19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player19"].BorderSizePixel = 0
Converted["_Player19"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player19"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player19"].Visible = false
Converted["_Player19"].Name = "Player"
Converted["_Player19"].Parent = Converted["_Templates19"]

Converted["_UICorner81"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner81"].Parent = Converted["_Player19"]

Converted["_UIStroke80"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke80"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke80"].Thickness = 1.5
Converted["_UIStroke80"].Parent = Converted["_Player19"]

Converted["_Input19"].Font = Enum.Font.Montserrat
Converted["_Input19"].PlaceholderText = "Input"
Converted["_Input19"].Text = ""
Converted["_Input19"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input19"].TextSize = 14
Converted["_Input19"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input19"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input19"].BackgroundTransparency = 0.6000000238418579
Converted["_Input19"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input19"].BorderSizePixel = 0
Converted["_Input19"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input19"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input19"].Visible = false
Converted["_Input19"].Name = "Input"
Converted["_Input19"].Parent = Converted["_Templates19"]

Converted["_UICorner82"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner82"].Parent = Converted["_Input19"]

Converted["_UIStroke81"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke81"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke81"].Thickness = 1.5
Converted["_UIStroke81"].Parent = Converted["_Input19"]

Converted["_DropDown2"].Image = "rbxassetid://12974428978"
Converted["_DropDown2"].ImageTransparency = 0.30000001192092896
Converted["_DropDown2"].ScaleType = Enum.ScaleType.Fit
Converted["_DropDown2"].Active = false
Converted["_DropDown2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DropDown2"].BackgroundTransparency = 1
Converted["_DropDown2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropDown2"].BorderSizePixel = 0
Converted["_DropDown2"].Position = UDim2.new(0.82344842, 0, -0.214286804, 0)
Converted["_DropDown2"].Selectable = false
Converted["_DropDown2"].Size = UDim2.new(0, 20, 0, 40)
Converted["_DropDown2"].Visible = false
Converted["_DropDown2"].Name = "DropDown"
Converted["_DropDown2"].Parent = Converted["_Templates19"]

Converted["_Exploits"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_Exploits"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Exploits"].BackgroundTransparency = 1
Converted["_Exploits"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Exploits"].BorderSizePixel = 0
Converted["_Exploits"].Position = UDim2.new(0.00106837612, 0, 0.127659574, 0)
Converted["_Exploits"].Size = UDim2.new(0, 467, 0, -4)
Converted["_Exploits"].Name = "Exploits"
Converted["_Exploits"].Parent = Converted["_Btns"]

Converted["_Title6"].Font = Enum.Font.MontserratMedium
Converted["_Title6"].Text = "Exploits"
Converted["_Title6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title6"].TextSize = 14
Converted["_Title6"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title6"].BackgroundTransparency = 1
Converted["_Title6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title6"].BorderSizePixel = 0
Converted["_Title6"].Size = UDim2.new(0, 439, 0, 11)
Converted["_Title6"].Name = "Title"
Converted["_Title6"].Parent = Converted["_Exploits"]

Converted["_UIListLayout13"].Padding = UDim.new(0, 10)
Converted["_UIListLayout13"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout13"].Parent = Converted["_Exploits"]

Converted["_UIPadding33"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding33"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding33"].Parent = Converted["_Exploits"]

Converted["_Priority1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Priority1"].BackgroundTransparency = 0.8999999761581421
Converted["_Priority1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Priority1"].BorderSizePixel = 0
Converted["_Priority1"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Priority1"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Priority1"].Visible = false
Converted["_Priority1"].Name = "Priority"
Converted["_Priority1"].Parent = Converted["_Exploits"]

Converted["_UICorner83"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner83"].Parent = Converted["_Priority1"]

Converted["_UIStroke82"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke82"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke82"].Thickness = 2
Converted["_UIStroke82"].Parent = Converted["_Priority1"]

Converted["_BoxTitle22"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle22"].Text = "Click all "
Converted["_BoxTitle22"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle22"].TextSize = 15
Converted["_BoxTitle22"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle22"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle22"].BackgroundTransparency = 1
Converted["_BoxTitle22"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle22"].BorderSizePixel = 0
Converted["_BoxTitle22"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle22"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle22"].Name = "BoxTitle"
Converted["_BoxTitle22"].Parent = Converted["_Priority1"]

Converted["_Templates20"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates20"].BackgroundTransparency = 1
Converted["_Templates20"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates20"].BorderSizePixel = 0
Converted["_Templates20"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates20"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates20"].Name = "Templates"
Converted["_Templates20"].Parent = Converted["_Priority1"]

Converted["_UIPadding34"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding34"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding34"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding34"].Parent = Converted["_Templates20"]

Converted["_Execute21"].Font = Enum.Font.Montserrat
Converted["_Execute21"].Text = "Execute"
Converted["_Execute21"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute21"].TextSize = 14
Converted["_Execute21"].Active = false
Converted["_Execute21"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute21"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute21"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute21"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute21"].BorderSizePixel = 0
Converted["_Execute21"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute21"].Selectable = false
Converted["_Execute21"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute21"].Visible = false
Converted["_Execute21"].Name = "Execute"
Converted["_Execute21"].Parent = Converted["_Templates20"]

Converted["_UIStroke83"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke83"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke83"].Thickness = 1.5
Converted["_UIStroke83"].Parent = Converted["_Execute21"]

Converted["_UICorner84"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner84"].Parent = Converted["_Execute21"]

Converted["_Player20"].Font = Enum.Font.Montserrat
Converted["_Player20"].PlaceholderText = "Player"
Converted["_Player20"].Text = ""
Converted["_Player20"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player20"].TextSize = 14
Converted["_Player20"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player20"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player20"].BackgroundTransparency = 0.6000000238418579
Converted["_Player20"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player20"].BorderSizePixel = 0
Converted["_Player20"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player20"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player20"].Visible = false
Converted["_Player20"].Name = "Player"
Converted["_Player20"].Parent = Converted["_Templates20"]

Converted["_UICorner85"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner85"].Parent = Converted["_Player20"]

Converted["_UIStroke84"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke84"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke84"].Thickness = 1.5
Converted["_UIStroke84"].Parent = Converted["_Player20"]

Converted["_Input20"].Font = Enum.Font.Montserrat
Converted["_Input20"].PlaceholderText = "Input"
Converted["_Input20"].Text = ""
Converted["_Input20"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input20"].TextSize = 14
Converted["_Input20"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input20"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input20"].BackgroundTransparency = 0.6000000238418579
Converted["_Input20"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input20"].BorderSizePixel = 0
Converted["_Input20"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input20"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input20"].Visible = false
Converted["_Input20"].Name = "Input"
Converted["_Input20"].Parent = Converted["_Templates20"]

Converted["_UICorner86"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner86"].Parent = Converted["_Input20"]

Converted["_UIStroke85"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke85"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke85"].Thickness = 1.5
Converted["_UIStroke85"].Parent = Converted["_Input20"]

Converted["_DropDown3"].Image = "rbxassetid://12974428978"
Converted["_DropDown3"].ImageTransparency = 0.30000001192092896
Converted["_DropDown3"].ScaleType = Enum.ScaleType.Fit
Converted["_DropDown3"].Active = false
Converted["_DropDown3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DropDown3"].BackgroundTransparency = 1
Converted["_DropDown3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropDown3"].BorderSizePixel = 0
Converted["_DropDown3"].Position = UDim2.new(0.82344842, 0, -0.214286804, 0)
Converted["_DropDown3"].Selectable = false
Converted["_DropDown3"].Size = UDim2.new(0, 20, 0, 40)
Converted["_DropDown3"].Name = "DropDown"
Converted["_DropDown3"].Parent = Converted["_Templates20"]

Converted["_BetaFeatures"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_BetaFeatures"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BetaFeatures"].BackgroundTransparency = 1
Converted["_BetaFeatures"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BetaFeatures"].BorderSizePixel = 0
Converted["_BetaFeatures"].Position = UDim2.new(0.00106837612, 0, 0.127659574, 0)
Converted["_BetaFeatures"].Size = UDim2.new(0, 467, 0, -4)
Converted["_BetaFeatures"].Name = "BetaFeatures"
Converted["_BetaFeatures"].Parent = Converted["_Btns"]

Converted["_Title7"].Font = Enum.Font.MontserratMedium
Converted["_Title7"].Text = "Beta Features"
Converted["_Title7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title7"].TextSize = 14
Converted["_Title7"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title7"].BackgroundTransparency = 1
Converted["_Title7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title7"].BorderSizePixel = 0
Converted["_Title7"].Size = UDim2.new(0, 439, 0, 11)
Converted["_Title7"].Name = "Title"
Converted["_Title7"].Parent = Converted["_BetaFeatures"]

Converted["_UIListLayout14"].Padding = UDim.new(0, 10)
Converted["_UIListLayout14"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout14"].Parent = Converted["_BetaFeatures"]

Converted["_UIPadding35"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding35"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding35"].Parent = Converted["_BetaFeatures"]

Converted["_Backpack"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Backpack"].BackgroundTransparency = 0.8999999761581421
Converted["_Backpack"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Backpack"].BorderSizePixel = 0
Converted["_Backpack"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Backpack"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Backpack"].Name = "Backpack"
Converted["_Backpack"].Parent = Converted["_BetaFeatures"]

Converted["_UICorner87"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner87"].Parent = Converted["_Backpack"]

Converted["_UIStroke86"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke86"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke86"].Thickness = 2
Converted["_UIStroke86"].Parent = Converted["_Backpack"]

Converted["_BoxTitle23"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle23"].Text = "Exploits / Human backpack"
Converted["_BoxTitle23"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle23"].TextSize = 15
Converted["_BoxTitle23"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle23"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle23"].BackgroundTransparency = 1
Converted["_BoxTitle23"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle23"].BorderSizePixel = 0
Converted["_BoxTitle23"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle23"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle23"].Name = "BoxTitle"
Converted["_BoxTitle23"].Parent = Converted["_Backpack"]

Converted["_Templates21"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates21"].BackgroundTransparency = 1
Converted["_Templates21"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates21"].BorderSizePixel = 0
Converted["_Templates21"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates21"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates21"].Name = "Templates"
Converted["_Templates21"].Parent = Converted["_Backpack"]

Converted["_UIPadding36"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding36"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding36"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding36"].Parent = Converted["_Templates21"]

Converted["_Execute22"].Font = Enum.Font.Montserrat
Converted["_Execute22"].Text = "Execute"
Converted["_Execute22"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute22"].TextSize = 14
Converted["_Execute22"].Active = false
Converted["_Execute22"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute22"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute22"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute22"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute22"].BorderSizePixel = 0
Converted["_Execute22"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute22"].Selectable = false
Converted["_Execute22"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute22"].Visible = false
Converted["_Execute22"].Name = "Execute"
Converted["_Execute22"].Parent = Converted["_Templates21"]

Converted["_UIStroke87"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke87"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke87"].Thickness = 1.5
Converted["_UIStroke87"].Parent = Converted["_Execute22"]

Converted["_UICorner88"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner88"].Parent = Converted["_Execute22"]

Converted["_Player21"].Font = Enum.Font.Montserrat
Converted["_Player21"].PlaceholderText = "Player"
Converted["_Player21"].Text = ""
Converted["_Player21"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player21"].TextSize = 14
Converted["_Player21"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player21"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player21"].BackgroundTransparency = 0.6000000238418579
Converted["_Player21"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player21"].BorderSizePixel = 0
Converted["_Player21"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player21"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player21"].Name = "Player"
Converted["_Player21"].Parent = Converted["_Templates21"]

Converted["_UICorner89"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner89"].Parent = Converted["_Player21"]

Converted["_UIStroke88"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke88"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke88"].Thickness = 1.5
Converted["_UIStroke88"].Parent = Converted["_Player21"]

Converted["_Input21"].Font = Enum.Font.Montserrat
Converted["_Input21"].PlaceholderText = "Input"
Converted["_Input21"].Text = ""
Converted["_Input21"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input21"].TextSize = 14
Converted["_Input21"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input21"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input21"].BackgroundTransparency = 0.6000000238418579
Converted["_Input21"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input21"].BorderSizePixel = 0
Converted["_Input21"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input21"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input21"].Visible = false
Converted["_Input21"].Name = "Input"
Converted["_Input21"].Parent = Converted["_Templates21"]

Converted["_UICorner90"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner90"].Parent = Converted["_Input21"]

Converted["_UIStroke89"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke89"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke89"].Thickness = 1.5
Converted["_UIStroke89"].Parent = Converted["_Input21"]

Converted["_DropDown4"].Image = "rbxassetid://12974428978"
Converted["_DropDown4"].ImageTransparency = 0.30000001192092896
Converted["_DropDown4"].ScaleType = Enum.ScaleType.Fit
Converted["_DropDown4"].Active = false
Converted["_DropDown4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DropDown4"].BackgroundTransparency = 1
Converted["_DropDown4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropDown4"].BorderSizePixel = 0
Converted["_DropDown4"].Position = UDim2.new(0.82344842, 0, -0.214286804, 0)
Converted["_DropDown4"].Selectable = false
Converted["_DropDown4"].Size = UDim2.new(0, 20, 0, 40)
Converted["_DropDown4"].Visible = false
Converted["_DropDown4"].Name = "DropDown"
Converted["_DropDown4"].Parent = Converted["_Templates21"]

Converted["_Disable"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Disable"].BackgroundTransparency = 0.8999999761581421
Converted["_Disable"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Disable"].BorderSizePixel = 0
Converted["_Disable"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Disable"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Disable"].Name = "Disable"
Converted["_Disable"].Parent = Converted["_BetaFeatures"]

Converted["_UICorner91"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner91"].Parent = Converted["_Disable"]

Converted["_UIStroke90"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke90"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke90"].Thickness = 2
Converted["_UIStroke90"].Parent = Converted["_Disable"]

Converted["_BoxTitle24"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle24"].Text = "Exploits / Disable backpack"
Converted["_BoxTitle24"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle24"].TextSize = 15
Converted["_BoxTitle24"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle24"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle24"].BackgroundTransparency = 1
Converted["_BoxTitle24"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle24"].BorderSizePixel = 0
Converted["_BoxTitle24"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle24"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle24"].Name = "BoxTitle"
Converted["_BoxTitle24"].Parent = Converted["_Disable"]

Converted["_Templates22"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates22"].BackgroundTransparency = 1
Converted["_Templates22"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates22"].BorderSizePixel = 0
Converted["_Templates22"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates22"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates22"].Name = "Templates"
Converted["_Templates22"].Parent = Converted["_Disable"]

Converted["_UIPadding37"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding37"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding37"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding37"].Parent = Converted["_Templates22"]

Converted["_Execute23"].Font = Enum.Font.Montserrat
Converted["_Execute23"].Text = "Execute"
Converted["_Execute23"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute23"].TextSize = 14
Converted["_Execute23"].Active = false
Converted["_Execute23"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute23"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute23"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute23"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute23"].BorderSizePixel = 0
Converted["_Execute23"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute23"].Selectable = false
Converted["_Execute23"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute23"].Name = "Execute"
Converted["_Execute23"].Parent = Converted["_Templates22"]

Converted["_UIStroke91"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke91"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke91"].Thickness = 1.5
Converted["_UIStroke91"].Parent = Converted["_Execute23"]

Converted["_UICorner92"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner92"].Parent = Converted["_Execute23"]

Converted["_Player22"].Font = Enum.Font.Montserrat
Converted["_Player22"].PlaceholderText = "Player"
Converted["_Player22"].Text = ""
Converted["_Player22"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player22"].TextSize = 14
Converted["_Player22"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player22"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player22"].BackgroundTransparency = 0.6000000238418579
Converted["_Player22"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player22"].BorderSizePixel = 0
Converted["_Player22"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player22"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player22"].Visible = false
Converted["_Player22"].Name = "Player"
Converted["_Player22"].Parent = Converted["_Templates22"]

Converted["_UICorner93"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner93"].Parent = Converted["_Player22"]

Converted["_UIStroke92"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke92"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke92"].Thickness = 1.5
Converted["_UIStroke92"].Parent = Converted["_Player22"]

Converted["_Input22"].Font = Enum.Font.Montserrat
Converted["_Input22"].PlaceholderText = "Input"
Converted["_Input22"].Text = ""
Converted["_Input22"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input22"].TextSize = 14
Converted["_Input22"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input22"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input22"].BackgroundTransparency = 0.6000000238418579
Converted["_Input22"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input22"].BorderSizePixel = 0
Converted["_Input22"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input22"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input22"].Visible = false
Converted["_Input22"].Name = "Input"
Converted["_Input22"].Parent = Converted["_Templates22"]

Converted["_UICorner94"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner94"].Parent = Converted["_Input22"]

Converted["_UIStroke93"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke93"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke93"].Thickness = 1.5
Converted["_UIStroke93"].Parent = Converted["_Input22"]

Converted["_DropDown5"].Image = "rbxassetid://12974428978"
Converted["_DropDown5"].ImageTransparency = 0.30000001192092896
Converted["_DropDown5"].ScaleType = Enum.ScaleType.Fit
Converted["_DropDown5"].Active = false
Converted["_DropDown5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DropDown5"].BackgroundTransparency = 1
Converted["_DropDown5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropDown5"].BorderSizePixel = 0
Converted["_DropDown5"].Position = UDim2.new(0.82344842, 0, -0.214286804, 0)
Converted["_DropDown5"].Selectable = false
Converted["_DropDown5"].Size = UDim2.new(0, 20, 0, 40)
Converted["_DropDown5"].Visible = false
Converted["_DropDown5"].Name = "DropDown"
Converted["_DropDown5"].Parent = Converted["_Templates22"]

Converted["_Lighting"].AutomaticSize = Enum.AutomaticSize.Y
Converted["_Lighting"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Lighting"].BackgroundTransparency = 1
Converted["_Lighting"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Lighting"].BorderSizePixel = 0
Converted["_Lighting"].Position = UDim2.new(0.00106837612, 0, 0.127659574, 0)
Converted["_Lighting"].Size = UDim2.new(0, 467, 0, -4)
Converted["_Lighting"].Name = "Lighting"
Converted["_Lighting"].Parent = Converted["_Btns"]

Converted["_Title8"].Font = Enum.Font.MontserratMedium
Converted["_Title8"].Text = "Lighting"
Converted["_Title8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title8"].TextSize = 14
Converted["_Title8"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title8"].BackgroundTransparency = 1
Converted["_Title8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title8"].BorderSizePixel = 0
Converted["_Title8"].Size = UDim2.new(0, 439, 0, 11)
Converted["_Title8"].Name = "Title"
Converted["_Title8"].Parent = Converted["_Lighting"]

Converted["_UIListLayout15"].Padding = UDim.new(0, 10)
Converted["_UIListLayout15"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout15"].Parent = Converted["_Lighting"]

Converted["_UIPadding38"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding38"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding38"].Parent = Converted["_Lighting"]

Converted["_RTX"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_RTX"].BackgroundTransparency = 0.8999999761581421
Converted["_RTX"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_RTX"].BorderSizePixel = 0
Converted["_RTX"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_RTX"].Size = UDim2.new(0, 439, 0, 40)
Converted["_RTX"].Name = "RTX"
Converted["_RTX"].Parent = Converted["_Lighting"]

Converted["_UICorner95"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner95"].Parent = Converted["_RTX"]

Converted["_UIStroke94"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke94"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke94"].Thickness = 2
Converted["_UIStroke94"].Parent = Converted["_RTX"]

Converted["_BoxTitle25"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle25"].Text = "RTX Graphics"
Converted["_BoxTitle25"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle25"].TextSize = 15
Converted["_BoxTitle25"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle25"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle25"].BackgroundTransparency = 1
Converted["_BoxTitle25"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle25"].BorderSizePixel = 0
Converted["_BoxTitle25"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle25"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle25"].Name = "BoxTitle"
Converted["_BoxTitle25"].Parent = Converted["_RTX"]

Converted["_Templates23"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates23"].BackgroundTransparency = 1
Converted["_Templates23"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates23"].BorderSizePixel = 0
Converted["_Templates23"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates23"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates23"].Name = "Templates"
Converted["_Templates23"].Parent = Converted["_RTX"]

Converted["_UIPadding39"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding39"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding39"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding39"].Parent = Converted["_Templates23"]

Converted["_Execute24"].Font = Enum.Font.Montserrat
Converted["_Execute24"].Text = "Execute"
Converted["_Execute24"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute24"].TextSize = 14
Converted["_Execute24"].Active = false
Converted["_Execute24"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute24"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute24"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute24"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute24"].BorderSizePixel = 0
Converted["_Execute24"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute24"].Selectable = false
Converted["_Execute24"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute24"].Name = "Execute"
Converted["_Execute24"].Parent = Converted["_Templates23"]

Converted["_UIStroke95"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke95"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke95"].Thickness = 1.5
Converted["_UIStroke95"].Parent = Converted["_Execute24"]

Converted["_UICorner96"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner96"].Parent = Converted["_Execute24"]

Converted["_Player23"].Font = Enum.Font.Montserrat
Converted["_Player23"].PlaceholderText = "Player"
Converted["_Player23"].Text = ""
Converted["_Player23"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player23"].TextSize = 14
Converted["_Player23"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player23"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player23"].BackgroundTransparency = 0.6000000238418579
Converted["_Player23"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player23"].BorderSizePixel = 0
Converted["_Player23"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player23"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player23"].Visible = false
Converted["_Player23"].Name = "Player"
Converted["_Player23"].Parent = Converted["_Templates23"]

Converted["_UICorner97"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner97"].Parent = Converted["_Player23"]

Converted["_UIStroke96"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke96"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke96"].Thickness = 1.5
Converted["_UIStroke96"].Parent = Converted["_Player23"]

Converted["_Input23"].Font = Enum.Font.Montserrat
Converted["_Input23"].PlaceholderText = "Input"
Converted["_Input23"].Text = ""
Converted["_Input23"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input23"].TextSize = 14
Converted["_Input23"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input23"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input23"].BackgroundTransparency = 0.6000000238418579
Converted["_Input23"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input23"].BorderSizePixel = 0
Converted["_Input23"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input23"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input23"].Visible = false
Converted["_Input23"].Name = "Input"
Converted["_Input23"].Parent = Converted["_Templates23"]

Converted["_UICorner98"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner98"].Parent = Converted["_Input23"]

Converted["_UIStroke97"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke97"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke97"].Thickness = 1.5
Converted["_UIStroke97"].Parent = Converted["_Input23"]

Converted["_DropDown6"].Image = "rbxassetid://12974428978"
Converted["_DropDown6"].ImageTransparency = 0.30000001192092896
Converted["_DropDown6"].ScaleType = Enum.ScaleType.Fit
Converted["_DropDown6"].Active = false
Converted["_DropDown6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DropDown6"].BackgroundTransparency = 1
Converted["_DropDown6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropDown6"].BorderSizePixel = 0
Converted["_DropDown6"].Position = UDim2.new(0.82344842, 0, -0.214286804, 0)
Converted["_DropDown6"].Selectable = false
Converted["_DropDown6"].Size = UDim2.new(0, 20, 0, 40)
Converted["_DropDown6"].Visible = false
Converted["_DropDown6"].Name = "DropDown"
Converted["_DropDown6"].Parent = Converted["_Templates23"]

Converted["_Enhanced"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Enhanced"].BackgroundTransparency = 0.8999999761581421
Converted["_Enhanced"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Enhanced"].BorderSizePixel = 0
Converted["_Enhanced"].Position = UDim2.new(0, 0, 0.270000011, 0)
Converted["_Enhanced"].Size = UDim2.new(0, 439, 0, 40)
Converted["_Enhanced"].Name = "Enhanced"
Converted["_Enhanced"].Parent = Converted["_Lighting"]

Converted["_UICorner99"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner99"].Parent = Converted["_Enhanced"]

Converted["_UIStroke98"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke98"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke98"].Thickness = 2
Converted["_UIStroke98"].Parent = Converted["_Enhanced"]

Converted["_BoxTitle26"].Font = Enum.Font.MontserratMedium
Converted["_BoxTitle26"].Text = "Enhanced Graphics"
Converted["_BoxTitle26"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle26"].TextSize = 15
Converted["_BoxTitle26"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_BoxTitle26"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BoxTitle26"].BackgroundTransparency = 1
Converted["_BoxTitle26"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BoxTitle26"].BorderSizePixel = 0
Converted["_BoxTitle26"].Position = UDim2.new(0.0261959005, 0, 0, 0)
Converted["_BoxTitle26"].Size = UDim2.new(0, 253, 0, 40)
Converted["_BoxTitle26"].Name = "BoxTitle"
Converted["_BoxTitle26"].Parent = Converted["_Enhanced"]

Converted["_Templates24"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Templates24"].BackgroundTransparency = 1
Converted["_Templates24"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Templates24"].BorderSizePixel = 0
Converted["_Templates24"].Position = UDim2.new(0.655808687, 0, 0, 0)
Converted["_Templates24"].Size = UDim2.new(0, 151, 0, 40)
Converted["_Templates24"].Name = "Templates"
Converted["_Templates24"].Parent = Converted["_Enhanced"]

Converted["_UIPadding40"].PaddingBottom = UDim.new(0, 6)
Converted["_UIPadding40"].PaddingRight = UDim.new(0, 6)
Converted["_UIPadding40"].PaddingTop = UDim.new(0, 6)
Converted["_UIPadding40"].Parent = Converted["_Templates24"]

Converted["_Execute25"].Font = Enum.Font.Montserrat
Converted["_Execute25"].Text = "Execute"
Converted["_Execute25"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Execute25"].TextSize = 14
Converted["_Execute25"].Active = false
Converted["_Execute25"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Execute25"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute25"].BackgroundTransparency = 0.6000000238418579
Converted["_Execute25"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Execute25"].BorderSizePixel = 0
Converted["_Execute25"].Position = UDim2.new(0.729370534, 0, 0.5, 0)
Converted["_Execute25"].Selectable = false
Converted["_Execute25"].Size = UDim2.new(0.541258931, 0, 1, 0)
Converted["_Execute25"].Name = "Execute"
Converted["_Execute25"].Parent = Converted["_Templates24"]

Converted["_UIStroke99"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke99"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke99"].Thickness = 1.5
Converted["_UIStroke99"].Parent = Converted["_Execute25"]

Converted["_UICorner100"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner100"].Parent = Converted["_Execute25"]

Converted["_Player24"].Font = Enum.Font.Montserrat
Converted["_Player24"].PlaceholderText = "Player"
Converted["_Player24"].Text = ""
Converted["_Player24"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Player24"].TextSize = 14
Converted["_Player24"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Player24"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player24"].BackgroundTransparency = 0.6000000238418579
Converted["_Player24"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Player24"].BorderSizePixel = 0
Converted["_Player24"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Player24"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Player24"].Visible = false
Converted["_Player24"].Name = "Player"
Converted["_Player24"].Parent = Converted["_Templates24"]

Converted["_UICorner101"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner101"].Parent = Converted["_Player24"]

Converted["_UIStroke100"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke100"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke100"].Thickness = 1.5
Converted["_UIStroke100"].Parent = Converted["_Player24"]

Converted["_Input24"].Font = Enum.Font.Montserrat
Converted["_Input24"].PlaceholderText = "Input"
Converted["_Input24"].Text = ""
Converted["_Input24"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Input24"].TextSize = 14
Converted["_Input24"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Input24"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input24"].BackgroundTransparency = 0.6000000238418579
Converted["_Input24"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Input24"].BorderSizePixel = 0
Converted["_Input24"].Position = UDim2.new(0.728999972, 0, 0.5, 0)
Converted["_Input24"].Size = UDim2.new(0.541000009, 0, 1, 0)
Converted["_Input24"].Visible = false
Converted["_Input24"].Name = "Input"
Converted["_Input24"].Parent = Converted["_Templates24"]

Converted["_UICorner102"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner102"].Parent = Converted["_Input24"]

Converted["_UIStroke101"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke101"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke101"].Thickness = 1.5
Converted["_UIStroke101"].Parent = Converted["_Input24"]

Converted["_DropDown7"].Image = "rbxassetid://12974428978"
Converted["_DropDown7"].ImageTransparency = 0.30000001192092896
Converted["_DropDown7"].ScaleType = Enum.ScaleType.Fit
Converted["_DropDown7"].Active = false
Converted["_DropDown7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_DropDown7"].BackgroundTransparency = 1
Converted["_DropDown7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_DropDown7"].BorderSizePixel = 0
Converted["_DropDown7"].Position = UDim2.new(0.82344842, 0, -0.214286804, 0)
Converted["_DropDown7"].Selectable = false
Converted["_DropDown7"].Size = UDim2.new(0, 20, 0, 40)
Converted["_DropDown7"].Visible = false
Converted["_DropDown7"].Name = "DropDown"
Converted["_DropDown7"].Parent = Converted["_Templates24"]

Converted["_Centre"].AutomaticCanvasSize = Enum.AutomaticSize.X
Converted["_Centre"].CanvasSize = UDim2.new(0, 0, 0, 0)
Converted["_Centre"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Centre"].ScrollBarThickness = 0
Converted["_Centre"].ScrollingDirection = Enum.ScrollingDirection.X
Converted["_Centre"].Active = true
Converted["_Centre"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Centre"].BackgroundTransparency = 1
Converted["_Centre"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Centre"].BorderSizePixel = 0
Converted["_Centre"].LayoutOrder = 2
Converted["_Centre"].Size = UDim2.new(0, 468, 0, 40)
Converted["_Centre"].Name = "Centre"
Converted["_Centre"].Parent = Converted["_MainFrame"]

Converted["_UIListLayout16"].Padding = UDim.new(0, 10)
Converted["_UIListLayout16"].FillDirection = Enum.FillDirection.Horizontal
Converted["_UIListLayout16"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout16"].Parent = Converted["_Centre"]

Converted["_Anims"].Active = false
Converted["_Anims"].AutomaticSize = Enum.AutomaticSize.X
Converted["_Anims"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Anims"].BackgroundTransparency = 0.8999999761581421
Converted["_Anims"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Anims"].BorderSizePixel = 0
Converted["_Anims"].LayoutOrder = 5
Converted["_Anims"].Selectable = false
Converted["_Anims"].Size = UDim2.new(0.0052360897, 0, 1, 0)
Converted["_Anims"].Name = "Anims"
Converted["_Anims"].Parent = Converted["_Centre"]

Converted["_TextLabel1"].Font = Enum.Font.MontserratMedium
Converted["_TextLabel1"].Text = "Anims"
Converted["_TextLabel1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].TextSize = 16
Converted["_TextLabel1"].TextTransparency = 0.5
Converted["_TextLabel1"].AutomaticSize = Enum.AutomaticSize.X
Converted["_TextLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel1"].BackgroundTransparency = 1
Converted["_TextLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel1"].BorderSizePixel = 0
Converted["_TextLabel1"].Size = UDim2.new(0.0521739125, 0, 1, 0)
Converted["_TextLabel1"].Parent = Converted["_Anims"]

Converted["_UIStroke102"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke102"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke102"].Thickness = 1.5
Converted["_UIStroke102"].Parent = Converted["_Anims"]

Converted["_UICorner103"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner103"].Parent = Converted["_Anims"]

Converted["_UIListLayout17"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout17"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout17"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout17"].Parent = Converted["_Anims"]

Converted["_UIPadding41"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding41"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding41"].Parent = Converted["_Anims"]

Converted["_Exploits1"].Active = false
Converted["_Exploits1"].AutomaticSize = Enum.AutomaticSize.X
Converted["_Exploits1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Exploits1"].BackgroundTransparency = 0.8999999761581421
Converted["_Exploits1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Exploits1"].BorderSizePixel = 0
Converted["_Exploits1"].LayoutOrder = 6
Converted["_Exploits1"].Selectable = false
Converted["_Exploits1"].Size = UDim2.new(0.0052360897, 0, 1, 0)
Converted["_Exploits1"].Name = "Exploits"
Converted["_Exploits1"].Parent = Converted["_Centre"]

Converted["_TextLabel2"].Font = Enum.Font.MontserratMedium
Converted["_TextLabel2"].Text = "Exploits"
Converted["_TextLabel2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel2"].TextSize = 16
Converted["_TextLabel2"].TextTransparency = 0.5
Converted["_TextLabel2"].AutomaticSize = Enum.AutomaticSize.X
Converted["_TextLabel2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel2"].BackgroundTransparency = 1
Converted["_TextLabel2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel2"].BorderSizePixel = 0
Converted["_TextLabel2"].Size = UDim2.new(0.0521739125, 0, 1, 0)
Converted["_TextLabel2"].Parent = Converted["_Exploits1"]

Converted["_UIStroke103"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke103"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke103"].Thickness = 1.5
Converted["_UIStroke103"].Parent = Converted["_Exploits1"]

Converted["_UICorner104"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner104"].Parent = Converted["_Exploits1"]

Converted["_UIListLayout18"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout18"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout18"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout18"].Parent = Converted["_Exploits1"]

Converted["_UIPadding42"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding42"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding42"].Parent = Converted["_Exploits1"]

Converted["_LocalPlayer1"].Active = false
Converted["_LocalPlayer1"].AutomaticSize = Enum.AutomaticSize.X
Converted["_LocalPlayer1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_LocalPlayer1"].BackgroundTransparency = 0.8999999761581421
Converted["_LocalPlayer1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_LocalPlayer1"].BorderSizePixel = 0
Converted["_LocalPlayer1"].LayoutOrder = 1
Converted["_LocalPlayer1"].Selectable = false
Converted["_LocalPlayer1"].Size = UDim2.new(0.0052360897, 0, 1, 0)
Converted["_LocalPlayer1"].Name = "LocalPlayer"
Converted["_LocalPlayer1"].Parent = Converted["_Centre"]

Converted["_TextLabel3"].Font = Enum.Font.MontserratMedium
Converted["_TextLabel3"].Text = "LocalPlayer"
Converted["_TextLabel3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel3"].TextSize = 16
Converted["_TextLabel3"].TextTransparency = 0.5
Converted["_TextLabel3"].AutomaticSize = Enum.AutomaticSize.X
Converted["_TextLabel3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel3"].BackgroundTransparency = 1
Converted["_TextLabel3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel3"].BorderSizePixel = 0
Converted["_TextLabel3"].Size = UDim2.new(0.0521739125, 0, 1, 0)
Converted["_TextLabel3"].Parent = Converted["_LocalPlayer1"]

Converted["_UIStroke104"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke104"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke104"].Thickness = 1.5
Converted["_UIStroke104"].Parent = Converted["_LocalPlayer1"]

Converted["_UICorner105"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner105"].Parent = Converted["_LocalPlayer1"]

Converted["_UIListLayout19"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout19"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout19"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout19"].Parent = Converted["_LocalPlayer1"]

Converted["_UIPadding43"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding43"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding43"].Parent = Converted["_LocalPlayer1"]

Converted["_Players1"].Active = false
Converted["_Players1"].AutomaticSize = Enum.AutomaticSize.X
Converted["_Players1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Players1"].BackgroundTransparency = 0.8999999761581421
Converted["_Players1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Players1"].BorderSizePixel = 0
Converted["_Players1"].LayoutOrder = 2
Converted["_Players1"].Selectable = false
Converted["_Players1"].Size = UDim2.new(0.0052360897, 0, 1, 0)
Converted["_Players1"].Name = "Players"
Converted["_Players1"].Parent = Converted["_Centre"]

Converted["_TextLabel4"].Font = Enum.Font.MontserratMedium
Converted["_TextLabel4"].Text = "Players"
Converted["_TextLabel4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel4"].TextSize = 16
Converted["_TextLabel4"].TextTransparency = 0.5
Converted["_TextLabel4"].AutomaticSize = Enum.AutomaticSize.X
Converted["_TextLabel4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel4"].BackgroundTransparency = 1
Converted["_TextLabel4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel4"].BorderSizePixel = 0
Converted["_TextLabel4"].Size = UDim2.new(0.0521739125, 0, 1, 0)
Converted["_TextLabel4"].Parent = Converted["_Players1"]

Converted["_UIStroke105"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke105"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke105"].Thickness = 1.5
Converted["_UIStroke105"].Parent = Converted["_Players1"]
local sSub1 = "kiExe V9"

Converted["_UICorner106"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner106"].Parent = Converted["_Players1"]

Converted["_UIListLayout20"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout20"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout20"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout20"].Parent = Converted["_Players1"]

Converted["_UIPadding44"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding44"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding44"].Parent = Converted["_Players1"]

Converted["_Universal1"].Active = false
Converted["_Universal1"].AutomaticSize = Enum.AutomaticSize.X
Converted["_Universal1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Universal1"].BackgroundTransparency = 0.8999999761581421
Converted["_Universal1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Universal1"].BorderSizePixel = 0
Converted["_Universal1"].LayoutOrder = 3
Converted["_Universal1"].Selectable = false
Converted["_Universal1"].Size = UDim2.new(0.0052360897, 0, 1, 0)
Converted["_Universal1"].Name = "Universal"
Converted["_Universal1"].Parent = Converted["_Centre"]

Converted["_TextLabel5"].Font = Enum.Font.MontserratMedium
Converted["_TextLabel5"].Text = "Universal"
Converted["_TextLabel5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel5"].TextSize = 16
Converted["_TextLabel5"].TextTransparency = 0.5
Converted["_TextLabel5"].AutomaticSize = Enum.AutomaticSize.X
Converted["_TextLabel5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel5"].BackgroundTransparency = 1
Converted["_TextLabel5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel5"].BorderSizePixel = 0
Converted["_TextLabel5"].Size = UDim2.new(0.0521739125, 0, 1, 0)
Converted["_TextLabel5"].Parent = Converted["_Universal1"]

Converted["_UIStroke106"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke106"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke106"].Thickness = 1.5
Converted["_UIStroke106"].Parent = Converted["_Universal1"]

Converted["_UICorner107"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner107"].Parent = Converted["_Universal1"]

Converted["_UIListLayout21"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout21"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout21"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout21"].Parent = Converted["_Universal1"]

Converted["_UIPadding45"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding45"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding45"].Parent = Converted["_Universal1"]

Converted["_Voicechat"].Active = false
Converted["_Voicechat"].AutomaticSize = Enum.AutomaticSize.X
Converted["_Voicechat"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Voicechat"].BackgroundTransparency = 0.8999999761581421
Converted["_Voicechat"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Voicechat"].BorderSizePixel = 0
Converted["_Voicechat"].LayoutOrder = 4
Converted["_Voicechat"].Selectable = false
Converted["_Voicechat"].Size = UDim2.new(0.0052360897, 0, 1, 0)
Converted["_Voicechat"].Name = "Voicechat"
Converted["_Voicechat"].Parent = Converted["_Centre"]

Converted["_TextLabel6"].Font = Enum.Font.MontserratMedium
Converted["_TextLabel6"].Text = "Voice Chat"
Converted["_TextLabel6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel6"].TextSize = 16
Converted["_TextLabel6"].TextTransparency = 0.5
Converted["_TextLabel6"].AutomaticSize = Enum.AutomaticSize.X
Converted["_TextLabel6"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel6"].BackgroundTransparency = 1
Converted["_TextLabel6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel6"].BorderSizePixel = 0
Converted["_TextLabel6"].Size = UDim2.new(0.0521739125, 0, 1, 0)
Converted["_TextLabel6"].Parent = Converted["_Voicechat"]

Converted["_UIStroke107"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke107"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke107"].Thickness = 1.5
Converted["_UIStroke107"].Parent = Converted["_Voicechat"]

Converted["_UICorner108"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner108"].Parent = Converted["_Voicechat"]

Converted["_UIListLayout22"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout22"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout22"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout22"].Parent = Converted["_Voicechat"]

Converted["_UIPadding46"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding46"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding46"].Parent = Converted["_Voicechat"]

Converted["_UIPadding47"].PaddingBottom = UDim.new(0, 5)
Converted["_UIPadding47"].PaddingLeft = UDim.new(0, 15)
Converted["_UIPadding47"].PaddingRight = UDim.new(0, 15)
Converted["_UIPadding47"].PaddingTop = UDim.new(0, 5)
Converted["_UIPadding47"].Parent = Converted["_Centre"]

Converted["_BETA"].Active = false
Converted["_BETA"].AutomaticSize = Enum.AutomaticSize.X
Converted["_BETA"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_BETA"].BackgroundTransparency = 0.8999999761581421
Converted["_BETA"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_BETA"].BorderSizePixel = 0
Converted["_BETA"].LayoutOrder = 7
Converted["_BETA"].Selectable = false
Converted["_BETA"].Size = UDim2.new(0.0052360897, 0, 1, 0)
Converted["_BETA"].Name = "BETA"
Converted["_BETA"].Parent = Converted["_Centre"]

Converted["_TextLabel7"].Font = Enum.Font.MontserratMedium
Converted["_TextLabel7"].Text = "BETA Features"
Converted["_TextLabel7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel7"].TextSize = 16
Converted["_TextLabel7"].TextTransparency = 0.5
Converted["_TextLabel7"].AutomaticSize = Enum.AutomaticSize.X
Converted["_TextLabel7"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel7"].BackgroundTransparency = 1
Converted["_TextLabel7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel7"].BorderSizePixel = 0
Converted["_TextLabel7"].Size = UDim2.new(0.0521739125, 0, 1, 0)
Converted["_TextLabel7"].Parent = Converted["_BETA"]

Converted["_UIStroke108"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke108"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke108"].Thickness = 1.5
Converted["_UIStroke108"].Parent = Converted["_BETA"]

Converted["_UICorner109"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner109"].Parent = Converted["_BETA"]

Converted["_UIListLayout23"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout23"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout23"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout23"].Parent = Converted["_BETA"]

Converted["_UIPadding48"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding48"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding48"].Parent = Converted["_BETA"]

Converted["_Lighting1"].Active = false
Converted["_Lighting1"].AutomaticSize = Enum.AutomaticSize.X
Converted["_Lighting1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Lighting1"].BackgroundTransparency = 0.8999999761581421
Converted["_Lighting1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Lighting1"].BorderSizePixel = 0
Converted["_Lighting1"].LayoutOrder = 7
Converted["_Lighting1"].Selectable = false
Converted["_Lighting1"].Size = UDim2.new(0.0052360897, 0, 1, 0)
Converted["_Lighting1"].Name = "Lighting"
Converted["_Lighting1"].Parent = Converted["_Centre"]

Converted["_TextLabel8"].Font = Enum.Font.MontserratMedium
Converted["_TextLabel8"].Text = "Lighting"
Converted["_TextLabel8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel8"].TextSize = 16
Converted["_TextLabel8"].TextTransparency = 0.5
Converted["_TextLabel8"].AutomaticSize = Enum.AutomaticSize.X
Converted["_TextLabel8"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_TextLabel8"].BackgroundTransparency = 1
Converted["_TextLabel8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TextLabel8"].BorderSizePixel = 0
Converted["_TextLabel8"].Size = UDim2.new(0.0521739125, 0, 1, 0)
Converted["_TextLabel8"].Parent = Converted["_Lighting1"]

Converted["_UIStroke109"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke109"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke109"].Thickness = 1.5
Converted["_UIStroke109"].Parent = Converted["_Lighting1"]

Converted["_UICorner110"].CornerRadius = UDim.new(0, 5)
Converted["_UICorner110"].Parent = Converted["_Lighting1"]

Converted["_UIListLayout24"].HorizontalAlignment = Enum.HorizontalAlignment.Center
Converted["_UIListLayout24"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout24"].VerticalAlignment = Enum.VerticalAlignment.Center
Converted["_UIListLayout24"].Parent = Converted["_Lighting1"]

Converted["_UIPadding49"].PaddingLeft = UDim.new(0, 10)
Converted["_UIPadding49"].PaddingRight = UDim.new(0, 10)
Converted["_UIPadding49"].Parent = Converted["_Lighting1"]

Converted["_TopBar"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TopBar"].BackgroundTransparency = 0.800000011920929
Converted["_TopBar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TopBar"].BorderSizePixel = 0
Converted["_TopBar"].LayoutOrder = 1
Converted["_TopBar"].Size = UDim2.new(0, 468, 0, 45)
Converted["_TopBar"].Name = "TopBar"
Converted["_TopBar"].Parent = Converted["_MainFrame"]

Converted["_UIStroke110"].Color = Color3.fromRGB(255, 255, 255)
Converted["_UIStroke110"].Parent = Converted["_TopBar"]

Converted["_Title9"].Font = Enum.Font.MontserratBold
Converted["_Title9"].Text = "Gold's Easy Hub V1"
Converted["_Title9"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title9"].TextSize = 16
Converted["_Title9"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Title9"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Title9"].BackgroundTransparency = 1
Converted["_Title9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Title9"].BorderSizePixel = 0
Converted["_Title9"].Size = UDim2.new(0, 156, 0, 45)
Converted["_Title9"].Name = "Title"
Converted["_Title9"].Parent = Converted["_TopBar"]

Converted["_UIPadding50"].PaddingLeft = UDim.new(0, 18)
Converted["_UIPadding50"].Parent = Converted["_Title9"]

Converted["_Executor"].Font = Enum.Font.MontserratMedium
Converted["_Executor"].Text = "– Executor"
Converted["_Executor"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Executor"].TextSize = 14
Converted["_Executor"].TextTransparency = 0.5
Converted["_Executor"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Executor"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Executor"].BackgroundTransparency = 1
Converted["_Executor"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Executor"].BorderSizePixel = 0
Converted["_Executor"].Position = UDim2.new(0.339743584, 0, 0.422222227, 0)
Converted["_Executor"].Size = UDim2.new(0, 94, 0, 7)
Converted["_Executor"].Name = "Executor"
Converted["_Executor"].Parent = Converted["_TopBar"]

Converted["_Close"].Image = "rbxassetid://8445470984"
Converted["_Close"].ImageRectOffset = Vector2.new(304, 304)
Converted["_Close"].ImageRectSize = Vector2.new(96, 96)
Converted["_Close"].ImageTransparency = 0.5
Converted["_Close"].ScaleType = Enum.ScaleType.Fit
Converted["_Close"].Active = false
Converted["_Close"].BackgroundTransparency = 1
Converted["_Close"].Position = UDim2.new(0.931174099, 0, 0.222222224, 0)
Converted["_Close"].Selectable = false
Converted["_Close"].Size = UDim2.new(0, 24, 0, 24)
Converted["_Close"].Name = "Close"
Converted["_Close"].Parent = Converted["_TopBar"]

for _,v in pairs(Converted["_GEH_Client"]:GetDescendants()) do
	if v:IsA("UIStroke") then
		if v.Parent.Name == "TopBar" then
			v.Transparency = 0.82
		else
			v.Transparency = 0.92
		end
	end
end

-- Fake Module Scripts:

local fake_module_scripts = {}

-- Fake Local Scripts:

local function SXNOFKY_fake_script() -- Fake Script: StarterGui.GEH_Client.LocalHost
	local script = Instance.new("LocalScript")
	script.Name = "LocalHost"
	script.Parent = Converted["_GEH_Client"]
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	-- start config
	local getMainUI = script.Parent
	local localPlayer = game:GetService("Players").LocalPlayer
	local userInputService = game:GetService("UserInputService")
	local tweenService = game:GetService("TweenService")
	local version = "2.0.0"
	-- mod config
	local getExecutorname = ""

	local function getExecutor()
		local name
		if identifyexecutor then
			name = identifyexecutor()
		end
		return { Name = name or "Unknown Executor"}
	end

	local exe = getExecutor()
	getExecutorname = exe.Name

	if localPlayer.UserId == 8212789248 then
		getExecutorname = sSub1
	end

	getMainUI.MainFrame.TopBar.Executor.Text = "– " .. tostring(getExecutorname)
	getMainUI.Version.version.Text = "Gold's Easy Hub, Version " .. version

	task.spawn(function()
		local lastUpdate = 0
		local frameCount = 0
		local lastTime = tick()

		while task.wait() do
			local currentTime = tick()
			frameCount =  frameCount + 1

			if currentTime - lastUpdate >= 0.5 then
				local fps = math.floor(frameCount / (currentTime - lastUpdate))
				getMainUI.Version.fps.Text = `FPS: {fps}`

				lastUpdate = currentTime
				frameCount = 0
			end
		end
	end)

	-- // headtag functions

	local permissions = {
		developers = {
			"ikDebris",
			"ixpinkyyxi",
			"restaxts"
		},
		headdevs = {
			"lvasion"
		},
		owners = {
			"starsorbitspace"
		},
		coowners = {
			"haetidglue",
			"RedBoy9052"
		},
		staff = {

		}
	}

	function headtag(plr)
		task.spawn(function()
			local tempPerms = "normal"

			for _, v in pairs(permissions.developers) do
				if v == plr.Name then
					tempPerms = "developer"
					break
				end
			end

			for _, v in pairs(permissions.headdevs) do
				if v == plr.Name then
					tempPerms = "head_dev"
					break
				end
			end

			for _, v in pairs(permissions.owners) do
				if v == plr.Name then
					tempPerms = "owner"
					break
				end
			end
			
			for _, v in pairs(permissions.coowners) do
				if v == plr.Name then
					tempPerms = "coowner"
					break
				end
			end

			for _, v in pairs(permissions.staff) do
				if v == plr.Name then
					tempPerms = "staff"
					break
				end
			end

			-- Wait for character and ensure head exists
			while not plr.Character or not plr.Character:FindFirstChild("Head") do
				task.wait()
			end

			task.wait(5)

			local overheadSuccess = false

			-- Create BillboardGui based on permissions
			local BillboardGui = Instance.new("BillboardGui")
			local Rank = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local TextLabel_2 = Instance.new("TextLabel")

			BillboardGui.Parent = plr.Character.Head
			BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			BillboardGui.Active = true
			BillboardGui.Name = "GEH_OHT"
			BillboardGui.LightInfluence = 0
			BillboardGui.AlwaysOnTop = true
			BillboardGui.Size = UDim2.new(10, 0, 1.5, 0)
			BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

			Rank.Name = "Rank"
			Rank.Parent = BillboardGui
			Rank.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Rank.BackgroundTransparency = 1.000
			Rank.BorderColor3 = Color3.fromRGB(27, 42, 53)
			Rank.Position = UDim2.new(0.400000006, 0, 0.300000012, 0)
			Rank.Size = UDim2.new(0.200000003, 0, 0.300000012, 0)

			TextLabel.Parent = BillboardGui
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextLabel.Size = UDim2.new(1, 0, 0.300000012, 0)
			TextLabel.Font = Enum.Font.MontserratBold
			TextLabel.Text = "Golds Easy Hub"
			TextLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
			TextLabel.TextScaled = true
			TextLabel.TextSize = 30.000
			TextLabel.TextStrokeTransparency = 0.540
			TextLabel.TextWrapped = true
			TextLabel.Visible = false

			-- Set permission-based rank text
			if tempPerms == "developer" then
				TextLabel_2.Text = "Developer"
				TextLabel_2.TextColor3 = Color3.new(0.333333, 0.666667, 1)
				TextLabel.Visible = true
			elseif tempPerms == "head_dev" then
				TextLabel_2.Text = "Head Developer"
				TextLabel_2.TextColor3 = Color3.new(0.666667, 0.333333, 1)
				TextLabel.Visible = true
			elseif tempPerms == "owner" then
				TextLabel_2.Text = "Owner"
				TextLabel_2.TextColor3 = Color3.new(1, 0, 0)
				TextLabel.Visible = true
			elseif tempPerms == "staff" then
				TextLabel_2.Text = "Staff Team"
				TextLabel_2.TextColor3 = Color3.new(0, 1, 1)
				TextLabel.Visible = true
			elseif tempPerms == "coowner" then
				TextLabel_2.Text = "Co Owner"
				TextLabel_2.TextColor3 = Color3.new(0.666667, 0.333333, 1)
				TextLabel.Visible = true
			else
				TextLabel_2.Text = plr.DisplayName .. " (@" .. plr.Name .. ")"
				TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
			end

			TextLabel_2.Parent = BillboardGui
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TextLabel_2.Position = UDim2.new(0.25, 0, 0.300000012, 0)
			TextLabel_2.Size = UDim2.new(0.5, 0, 0.300000012, 0)
			TextLabel_2.Font = Enum.Font.MontserratMedium
			TextLabel_2.TextScaled = true
			TextLabel_2.TextSize = 30.000
			TextLabel_2.TextStrokeTransparency = 0.540
			TextLabel_2.TextWrapped = true

			overheadSuccess = true

			if overheadSuccess then
				plr.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
			end
		end)
	end

	for _,v in pairs(getMainUI.MainFrame.Btns:GetChildren()) do
		if v:IsA("Frame") then
			if v.Name == "LocalPlayer" then
				v.Visible = true
			else
				if v.Name ~= "Credits" then
					v.Visible = false
				end
			end
		end
	end

	headtag(game.Players.LocalPlayer)

	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		task.wait()
		headtag(game.Players.LocalPlayer)
	end)

	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Character then
			headtag(v)
		end
	end

	game.Players.PlayerAdded:Connect(function(p)
		p.CharacterAdded:Connect(function()
			headtag(p)
		end)
	end)

	getMainUI.MainFrame.Centre.Anims.MouseButton1Click:Connect(function()
		for _,v in pairs(getMainUI.MainFrame.Btns:GetChildren()) do
			if v:IsA("Frame") then
				if v.Name == "Animations" then
					v.Visible = true
				else
					if v.Name ~= "Credits" then
						v.Visible = false
					end
				end
			end
		end
	end)

	getMainUI.MainFrame.Centre.BETA.MouseButton1Click:Connect(function()
		for _,v in pairs(getMainUI.MainFrame.Btns:GetChildren()) do
			if v:IsA("Frame") then
				if v.Name == "BetaFeatures" then
					v.Visible = true
				else
					if v.Name ~= "Credits" then
						v.Visible = false
					end
				end
			end
		end
	end)

	getMainUI.MainFrame.Centre.Exploits.MouseButton1Click:Connect(function()
		for _,v in pairs(getMainUI.MainFrame.Btns:GetChildren()) do
			if v:IsA("Frame") then
				if v.Name == "Exploits" then
					v.Visible = true
				else
					if v.Name ~= "Credits" then
						v.Visible = false
					end
				end
			end
		end
	end)

	getMainUI.MainFrame.Centre.Lighting.MouseButton1Click:Connect(function()
		for _,v in pairs(getMainUI.MainFrame.Btns:GetChildren()) do
			if v:IsA("Frame") then
				if v.Name == "Lighting" then
					v.Visible = true
				else
					if v.Name ~= "Credits" then
						v.Visible = false
					end
				end
			end
		end
	end)

	getMainUI.MainFrame.Centre.LocalPlayer.MouseButton1Click:Connect(function()
		for _,v in pairs(getMainUI.MainFrame.Btns:GetChildren()) do
			if v:IsA("Frame") then
				if v.Name == "LocalPlayer" then
					v.Visible = true
				else
					if v.Name ~= "Credits" then
						v.Visible = false
					end
				end
			end
		end
	end)

	getMainUI.MainFrame.Centre.Players.MouseButton1Click:Connect(function()
		for _,v in pairs(getMainUI.MainFrame.Btns:GetChildren()) do
			if v:IsA("Frame") then
				if v.Name == "Players" then
					v.Visible = true
				else
					if v.Name ~= "Credits" then
						v.Visible = false
					end
				end
			end
		end
	end)

	getMainUI.MainFrame.Centre.Universal.MouseButton1Click:Connect(function()
		for _,v in pairs(getMainUI.MainFrame.Btns:GetChildren()) do
			if v:IsA("Frame") then
				if v.Name == "Universal" then
					v.Visible = true
				else
					if v.Name ~= "Credits" then
						v.Visible = false
					end
				end
			end
		end
	end)

	getMainUI.MainFrame.Centre.Voicechat.MouseButton1Click:Connect(function()
		for _,v in pairs(getMainUI.MainFrame.Btns:GetChildren()) do
			if v:IsA("Frame") then
				if v.Name == "VoiceChat" then
					v.Visible = true
				else
					if v.Name ~= "Credits" then
						v.Visible = false
					end
				end
			end
		end
	end)

	local storePos = UDim2.new(0.5, 0, 0.5, 0)
	local hidePos = UDim2.new(0.5, 0, -0.5, 0)
	local canToggleUI = false
	local uiOpen = false

	tweenService:Create(getMainUI.MainFrame, TweenInfo.new(0.2), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
	canToggleUI = true
	uiOpen = true

	game:GetService("RunService").RenderStepped:Connect(function()
		if not uiOpen then
			return
		end

		storePos = getMainUI.MainFrame.Position
	end)

	userInputService.InputBegan:Connect(function(input, gameProcessed)
		if not canToggleUI then
			return
		end

		if not gameProcessed and input.KeyCode == Enum.KeyCode.K then
			if uiOpen then
				uiOpen = false
				getMainUI.Version.version.Text = "Click to open hub"
				tweenService:Create(getMainUI.MainFrame, TweenInfo.new(0.2), {Position = hidePos}):Play()
			else
				uiOpen = true
				getMainUI.Version.version.Text = `Gold's Easy Hub, Version {version}`
				tweenService:Create(getMainUI.MainFrame, TweenInfo.new(0.2), {Position = storePos}):Play()
			end
		end
	end)

	getMainUI.MainFrame.TopBar.Close.MouseButton1Click:Connect(function()
		if not canToggleUI then
			return
		end

		if uiOpen then
			uiOpen = false
			getMainUI.Version.version.Text = "Click to open hub"
			tweenService:Create(getMainUI.MainFrame, TweenInfo.new(0.2), {Position = hidePos}):Play()
		else
			uiOpen = true
			getMainUI.Version.version.Text = `Gold's Easy Hub, Version {version}`
			tweenService:Create(getMainUI.MainFrame, TweenInfo.new(0.2), {Position = storePos}):Play()
		end
	end)

	getMainUI.Version.version.MouseButton1Click:Connect(function()
		if not canToggleUI then
			return
		end

		if uiOpen then
			uiOpen = false
			getMainUI.Version.version.Text = "Click to open hub"
			tweenService:Create(getMainUI.MainFrame, TweenInfo.new(0.2), {Position = hidePos}):Play()
		else
			uiOpen = true
			getMainUI.Version.version.Text = `Gold's Easy Hub, Version {version}`
			tweenService:Create(getMainUI.MainFrame, TweenInfo.new(0.2), {Position = storePos}):Play()
		end
	end)

	--- gayness
	
	--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

	local v0 = tonumber;
	local v1 = string.byte;
	local v2 = string.char;
	local v3 = string.sub;
	local v4 = string.gsub;
	local v5 = string.rep;
	local v6 = table.concat;
	local v7 = table.insert;
	local v8 = math.ldexp;
	local v9 = getfenv or function()
		return _ENV;
	end;
	local v10 = setmetatable;
	local v11 = pcall;
	local v12 = select;
	local v13 = unpack or table.unpack;
	local v14 = tonumber;
	local function v15(v16, v17, ...)
		local v18 = 1;
		local v19;
		v16 = v4(v3(v16, 5), "..", function(v30)
			if (v1(v30, 2) == 81) then
				v19 = v0(v3(v30, 1, 1));
				return "";
			else
				local v84 = 0;
				local v85;
				while true do
					if (v84 == 0) then
						v85 = v2(v0(v30, 16));
						if v19 then
							local v103 = 0;
							local v104;
							while true do
								if (v103 == 1) then
									return v104;
								end
								if (v103 == 0) then
									v104 = v5(v85, v19);
									v19 = nil;
									v103 = 1;
								end
							end
						else
							return v85;
						end
						break;
					end
				end
			end
		end);
		local function v20(v31, v32, v33)
			if v33 then
				local v86 = 0 - 0;
				local v87;
				while true do
					if (v86 == (0 - (877 - (282 + 595)))) then
						v87 = (v31 / ((3 - 1) ^ (v32 - ((1639 - (1523 + 114)) - 1)))) % (((559 + 62) - (555 + 64)) ^ (((v33 - (932 - (857 + 74))) - (v32 - 1)) + 1));
						return v87 - (v87 % (569 - (367 + 201)));
					end
				end
			else
				local v88 = 2 ^ (v32 - (928 - (214 + 713)));
				return (((v31 % (v88 + v88)) >= v88) and (1 + 0)) or (0 + 0);
			end
		end
		local function v21()
			local v34 = (117 - (32 + 85)) - 0;
			local v35;
			while true do
				if (v34 == 1) then
					return v35;
				end
				if (v34 == (1065 - (68 + 978 + 19))) then
					v35 = v1(v16, v18, v18);
					v18 = v18 + ((282 + 989) - (226 + 1044));
					v34 = 4 - 3;
				end
			end
		end
		local function v22()
			local v36 = 957 - (892 + 65);
			local v37;
			local v38;
			while true do
				if (v36 == (181 - (67 + 113))) then
					return (v38 * (610 - 354)) + v37;
				end
				if (v36 == (0 - 0)) then
					v37, v38 = v1(v16, v18, v18 + (3 - 1));
					v18 = v18 + (352 - (87 + 263));
					v36 = 1;
				end
			end
		end
		local function v23()
			local v39 = 0 + 0;
			local v40;
			local v41;
			local v42;
			local v43;
			while true do
				if (v39 == (2 - 1)) then
					return (v43 * (12338840 + 4438376)) + (v42 * 65536) + (v41 * (1017 - (554 + 207))) + v40;
				end
				if ((952 - (802 + 150)) == v39) then
					v40, v41, v42, v43 = v1(v16, v18, v18 + (7 - 4));
					v18 = v18 + 4;
					v39 = 1 - (997 - (915 + 82));
				end
			end
		end
		local function v24()
			local v44 = v23();
			local v45 = v23();
			local v46 = 2 - 1;
			local v47 = (v20(v45, 1 + 0, 26 - 6) * ((1189 - (1069 + 118)) ^ (72 - 40))) + v44;
			local v48 = v20(v45, 45 - 24, 6 + 25);
			local v49 = ((v20(v45, 32) == ((1 + 0) - 0)) and -(1 + 0)) or (792 - (368 + (1195 - (201 + 571))));
			if (v48 == (0 - 0)) then
				if (v47 == ((1156 - (116 + 1022)) - (10 + (33 - 25)))) then
					return v49 * (0 - 0);
				else
					local v91 = 442 - (245 + 171 + 26);
					while true do
						if (v91 == 0) then
							v48 = 1;
							v46 = 0 - 0;
							break;
						end
					end
				end
			elseif (v48 == 2047) then
				return ((v47 == (0 + 0)) and (v49 * ((1 - 0) / (438 - (145 + 293))))) or (v49 * NaN);
			end
			return v8(v49, v48 - (1453 - (44 + 386))) * (v46 + (v47 / ((1488 - (998 + (1781 - 1293))) ^ (17 + (124 - 89)))));
		end
		local function v25(v50)
			local v51;
			if not v50 then
				v50 = v23();
				if (v50 == (859 - (814 + 45))) then
					return "";
				end
			end
			v51 = v3(v16, v18, (v18 + v50) - (2 - 1));
			v18 = v18 + v50;
			local v52 = {};
			for v67 = 1 + 0, #v51 do
				v52[v67] = v2(v1(v3(v51, v67, v67)));
			end
			return v6(v52);
		end
		local v26 = v23;
		local function v27(...)
			return {...}, v12("#", ...);
		end
		local function v28()
			local v53 = (function()
				return 0;
			end)();
			local v54 = (function()
				return;
			end)();
			local v55 = (function()
				return;
			end)();
			local v56 = (function()
				return;
			end)();
			local v57 = (function()
				return;
			end)();
			local v58 = (function()
				return;
			end)();
			local v59 = (function()
				return;
			end)();
			local v60 = (function()
				return;
			end)();
			while true do
				local v69 = (function()
					return 1086 - (461 + 625);
				end)();
				while true do
					if (v69 ~= (0 - 0)) then
					else
						if (v53 == (1700 - (1419 + 281))) then
							local v98 = (function()
								return 0;
							end)();
							local v99 = (function()
								return;
							end)();
							while true do
								if ((0 - 0) ~= v98) then
								else
									v99 = (function()
										return 0;
									end)();
									while true do
										if (v99 == (75 - (71 + 3))) then
											local v112 = (function()
												return 0;
											end)();
											while true do
												if (1 == v112) then
													v99 = (function()
														return 1 + 1;
													end)();
													break;
												end
												if (v112 == (0 + 0)) then
													v56 = (function()
														return {};
													end)();
													v57 = (function()
														return {};
													end)();
													v112 = (function()
														return 2 - 1;
													end)();
												end
											end
										end
										if ((2 - 0) == v99) then
											v53 = (function()
												return 1;
											end)();
											break;
										end
										if (v99 == (241 - (187 + 54))) then
											local v113 = (function()
												return 780 - (162 + 618);
											end)();
											while true do
												if (v113 == (1 + 0)) then
													v99 = (function()
														return 1 + 0;
													end)();
													break;
												end
												if (v113 == (529 - (406 + 123))) then
													v54 = (function()
														return function(v129, v130, v131)
															local v132 = (function()
																return 0 + 0;
															end)();
															local v133 = (function()
																return;
															end)();
															while true do
																if (v132 == (1769 - (1749 + 20))) then
																	v133 = (function()
																		return 0 + 0;
																	end)();
																	while true do
																		if (v133 == (1322 - (1249 + 73))) then
																			local v1150 = (function()
																				return 0 + 0;
																			end)();
																			local v1151 = (function()
																				return;
																			end)();
																			while true do
																				if ((1145 - (466 + 679)) == v1150) then
																					v1151 = (function()
																						return 0 - 0;
																					end)();
																					while true do
																						if (v1151 == 0) then
																							v129[v130 - #"\\"] = (function()
																								return v131();
																							end)();
																							return v129, v130, v131;
																						end
																					end
																					break;
																				end
																			end
																		end
																	end
																	break;
																end
															end
														end;
													end)();
													v55 = (function()
														return {};
													end)();
													v113 = (function()
														return 1;
													end)();
												end
											end
										end
									end
									break;
								end
							end
						end
						if (v53 ~= (2 - 1)) then
						else
							local v100 = (function()
								return 0 - 0;
							end)();
							local v101 = (function()
								return;
							end)();
							while true do
								if (v100 ~= 0) then
								else
									v101 = (function()
										return 0 - 0;
									end)();
									while true do
										if (1 == v101) then
											v60 = (function()
												return {};
											end)();
											for v119 = #"~", v59 do
												local v120 = (function()
													return 0 + 0;
												end)();
												local v121 = (function()
													return;
												end)();
												local v122 = (function()
													return;
												end)();
												local v123 = (function()
													return;
												end)();
												while true do
													if (v120 == 0) then
														v121 = (function()
															return 0;
														end)();
														v122 = (function()
															return nil;
														end)();
														v120 = (function()
															return 1 + 0;
														end)();
													end
													if (v120 ~= 1) then
													else
														v123 = (function()
															return nil;
														end)();
														while true do
															if (v121 ~= (0 + 0)) then
															else
																v122 = (function()
																	return v21();
																end)();
																v123 = (function()
																	return nil;
																end)();
																v121 = (function()
																	return 1637 - (1373 + 263);
																end)();
															end
															if (v121 ~= (1001 - (451 + 549))) then
															else
																if (v122 == #"}") then
																	v123 = (function()
																		return v21() ~= (0 + 0);
																	end)();
																elseif (v122 == (2 - 0)) then
																	v123 = (function()
																		return v24();
																	end)();
																elseif (v122 == #"asd") then
																	v123 = (function()
																		return v25();
																	end)();
																end
																v60[v119] = (function()
																	return v123;
																end)();
																break;
															end
														end
														break;
													end
												end
											end
											v101 = (function()
												return 2 - 0;
											end)();
										end
										if (v101 == 2) then
											v53 = (function()
												return 116 - (4 + 110);
											end)();
											break;
										end
										if (v101 ~= 0) then
										else
											v58 = (function()
												return {v55,v56,nil,v57};
											end)();
											v59 = (function()
												return v23();
											end)();
											v101 = (function()
												return 1428 - (41 + 1386);
											end)();
										end
									end
									break;
								end
							end
						end
						v69 = (function()
							return 1 + 0;
						end)();
					end
					if (v69 ~= (1 - 0)) then
					else
						if (v53 == (343 - (218 + 123))) then
							v58[#"gha"] = (function()
								return v21();
							end)();
							for v105 = #"~", v23() do
								local v106 = (function()
									return v21();
								end)();
								if (v20(v106, #"!", #">") == 0) then
									local v108 = (function()
										return 1581 - (1535 + 46);
									end)();
									local v109 = (function()
										return;
									end)();
									local v110 = (function()
										return;
									end)();
									local v111 = (function()
										return;
									end)();
									while true do
										if (v108 == (2 + 0)) then
											if (v20(v110, #"\\", #"{") == #"]") then
												v111[1 + 1] = (function()
													return v60[v111[562 - (306 + 254)]];
												end)();
											end
											if (v20(v110, 2, 1 + 1) == #",") then
												v111[#"xnx"] = (function()
													return v60[v111[#"nil"]];
												end)();
											end
											v108 = (function()
												return 5 - 2;
											end)();
										end
										if (v108 == (1470 - (899 + 568))) then
											if (v20(v110, #"19(", #"xxx") ~= #"!") then
											else
												v111[#"0313"] = (function()
													return v60[v111[#"0313"]];
												end)();
											end
											v55[v105] = (function()
												return v111;
											end)();
											break;
										end
										if (v108 == (0 + 0)) then
											local v115 = (function()
												return 0;
											end)();
											local v116 = (function()
												return;
											end)();
											while true do
												if (v115 == (0 - 0)) then
													v116 = (function()
														return 603 - (268 + 335);
													end)();
													while true do
														if (v116 == (290 - (60 + 230))) then
															v109 = (function()
																return v20(v106, 574 - (426 + 146), #"-19");
															end)();
															v110 = (function()
																return v20(v106, #".dev", 1 + 5);
															end)();
															v116 = (function()
																return 1;
															end)();
														end
														if (v116 ~= (1457 - (282 + 1174))) then
														else
															v108 = (function()
																return 812 - (569 + 242);
															end)();
															break;
														end
													end
													break;
												end
											end
										end
										if (v108 == (3 - 2)) then
											local v117 = (function()
												return 0 - 0;
											end)();
											local v118 = (function()
												return;
											end)();
											while true do
												if (0 ~= v117) then
												else
													v118 = (function()
														return 0 + 0;
													end)();
													while true do
														if (v118 ~= (1 + 0)) then
														else
															v108 = (function()
																return 1026 - (706 + 318);
															end)();
															break;
														end
														if (v118 ~= (1251 - (721 + 530))) then
														else
															v111 = (function()
																return {v22(),v22(),nil,nil};
															end)();
															if (v109 == 0) then
																local v797 = (function()
																	return 0 + 0;
																end)();
																local v798 = (function()
																	return;
																end)();
																while true do
																	if (0 ~= v797) then
																	else
																		v798 = (function()
																			return 1257 - (1043 + 214);
																		end)();
																		while true do
																			if (v798 == (0 - 0)) then
																				v111[#"19("] = (function()
																					return v22();
																				end)();
																				v111[#"?id="] = (function()
																					return v22();
																				end)();
																				break;
																			end
																		end
																		break;
																	end
																end
															elseif (v109 == #">") then
																v111[#"-19"] = (function()
																	return v23();
																end)();
															elseif (v109 == (1214 - (323 + 889))) then
																v111[#"19("] = (function()
																	return v23() - ((2 + 0) ^ 16);
																end)();
															elseif (v109 == #"19(") then
																local v1160 = (function()
																	return 700 - (271 + 429);
																end)();
																local v1161 = (function()
																	return;
																end)();
																while true do
																	if (v1160 ~= (580 - (361 + 219))) then
																	else
																		v1161 = (function()
																			return 320 - (53 + 267);
																		end)();
																		while true do
																			if (v1161 == (0 + 0)) then
																				v111[#"-19"] = (function()
																					return v23() - (2 ^ (429 - (15 + 398)));
																				end)();
																				v111[#"?id="] = (function()
																					return v22();
																				end)();
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															v118 = (function()
																return 1501 - (1408 + 92);
															end)();
														end
													end
													break;
												end
											end
										end
									end
								end
							end
							for v107 = #":", v23() do
								v56, v107, v28 = (function()
									return v54(v56, v107, v28);
								end)();
							end
							return v58;
						end
						break;
					end
				end
			end
		end
		local function v29(v61, v62, v63)
			local v64 = v61[1];
			local v65 = v61[984 - (18 + 964)];
			local v66 = v61[11 - 8];
			return function(...)
				local v70 = v64;
				local v71 = v65;
				local v72 = v66;
				local v73 = v27;
				local v74 = 1 + 0;
				local v75 = -1;
				local v76 = {};
				local v77 = {...};
				local v78 = v12("#", ...) - 1;
				local v79 = {};
				local v80 = {};
				for v89 = 0, v78 do
					if (v89 >= v72) then
						v76[v89 - v72] = v77[v89 + 1];
					else
						v80[v89] = v77[v89 + 1];
					end
				end
				local v81 = (v78 - v72) + 1 + 0;
				local v82;
				local v83;
				while true do
					local v90 = 850 - (20 + 830);
					while true do
						if (v90 == (1 + 0)) then
							if (v83 <= 30) then
								if (v83 <= (140 - (116 + 10))) then
									if ((1189 == 1189) and (v83 <= (1 + 5 + 0))) then
										if (v83 <= (740 - (542 + 196))) then
											if ((v83 <= (0 - 0)) or (4168 <= 1718)) then
												v80[v82[1 + 1]] = v62[v82[3]];
											elseif (v83 > (1 + 0 + 0)) then
												local v134 = v82[1 + 0 + 1];
												local v135 = v80[v134];
												local v136 = v80[v134 + (4 - 2)];
												if (v136 > (0 - 0)) then
													if ((v135 > v80[v134 + (1552 - ((1616 - 490) + 425))]) or (2379 > 3094)) then
														v74 = v82[3];
													else
														v80[v134 + 3] = v135;
													end
												elseif (v135 < v80[v134 + (406 - (118 + 287))]) then
													v74 = v82[11 - (6 + 2)];
												else
													v80[v134 + (1124 - (118 + 1003))] = v135;
												end
											else
												local v137;
												v80[v82[5 - 3]] = v62[v82[3]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[379 - ((738 - (157 + 439)) + 235)]] = v80[v82[13 - 10]][v82[6 - 2]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[979 - (553 + 424)]] = v80[v82[5 - 2]][v80[v82[4]]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v137 = v82[2];
												v80[v137] = v80[v137]();
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2 + 0]] = v80[v82[2 + 1]];
											end
										elseif ((4075 <= 4717) and (v83 <= (3 + (3 - 2)))) then
											if ((1472 == 1472) and (v83 == 3)) then
												local v149 = v82[4 - 2];
												local v150, v151 = v73(v80[v149](v13(v80, v149 + (2 - 1), v82[6 - 3])));
												v75 = (v151 + v149) - (1 + 0);
												local v152 = 0 - 0;
												for v742 = v149, v75 do
													v152 = v152 + (754 - (239 + (1520 - 1006)));
													v80[v742] = v150[v152];
												end
											else
												v80[v82[1 + 1]] = v82[1332 - (797 + 532)] + v80[v82[922 - (782 + 136)]];
											end
										elseif ((4520 > 4486) and (v83 > (4 + 1))) then
											local v154 = 0 + 0;
											local v155;
											local v156;
											local v157;
											while true do
												if ((v154 == 1) or (622 > 1409)) then
													v157 = v80[v155] + v156;
													v80[v155] = v157;
													v154 = 2;
												end
												if (v154 == (0 - 0)) then
													v155 = v82[1204 - (373 + 829)];
													v156 = v80[v155 + (733 - (476 + 255))];
													v154 = 1131 - ((1224 - (112 + 743)) + 761);
												end
												if ((v154 == 2) or (2065 == 4654)) then
													if (v156 > (0 + 0)) then
														if (v157 <= v80[v155 + 1]) then
															v74 = v82[(1176 - (1026 + 145)) - 2];
															v80[v155 + ((1 + 4) - 2)] = v157;
														end
													elseif ((v157 >= v80[v155 + (239 - (64 + 174))]) or (4584 < 2479)) then
														local v1155 = 0 + 0;
														while true do
															if (v1155 == ((718 - (493 + 225)) - 0)) then
																v74 = v82[339 - (144 + 192)];
																v80[v155 + 3] = v157;
																break;
															end
														end
													end
													break;
												end
											end
										else
											local v158 = 216 - (42 + 174);
											local v159;
											while true do
												if (v158 == 0) then
													v159 = v82[2 + 0];
													v80[v159] = v80[v159]();
													break;
												end
											end
										end
									elseif (v83 <= (9 + 1)) then
										if ((1753 >= 1055) and (v83 <= (4 + 4))) then
											if (v83 == (1511 - (363 + 1141))) then
												v80[v82[1582 - (1183 + 397)]] = {};
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[5 - 3]] = v80[v82[3 + 0]][v82[3 + 1]];
												v74 = v74 + (1976 - ((7031 - 5118) + 62));
												v82 = v70[v74];
												v80[v82[2 + 0]][v80[v82[7 - 4]]] = v80[v82[1937 - (565 + 1368)]];
												v74 = v74 + (3 - 2);
												v82 = v70[v74];
												v80[v82[1663 - (1477 + 184)]] = v80[v82[3 - 0]][v82[3 + 1 + 0]];
												v74 = v74 + (857 - (564 + 292));
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[4 - 1]][v82[11 - 7]];
												v74 = v74 + (305 - (244 + 60));
												v82 = v70[v74];
												v80[v82[2]][v80[v82[3 + 0]]] = v80[v82[480 - (41 + 435)]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1003 - (938 + 63)]] = v80[v82[3 + 0]][v82[1129 - (936 + 189)]];
												v74 = v74 + (2 - 1);
												v82 = v70[v74];
												v80[v82[2]] = {};
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1 + 1]] = v80[v82[1616 - (1565 + 48)]][v82[3 + 1 + 0]];
												v74 = v74 + (1139 - (782 + 356));
												v82 = v70[v74];
												v80[v82[2]][v80[v82[270 - (176 + 91)]]] = v82[10 - 6];
											else
												v80[v82[5 - 3]] = v80[v82[4 - 1]][v80[v82[1096 - (975 + 117)]]];
											end
										elseif (v83 > (1884 - (157 + 1718))) then
											local v180 = v82[2];
											v80[v180](v13(v80, v180 + 1 + 0 + 0, v75));
										else
											local v181 = v82[2];
											local v182, v183 = v73(v80[v181]());
											v75 = (v183 + v181) - 1;
											local v184 = 0 - 0;
											for v745 = v181, v75 do
												local v746 = 0 - 0;
												while true do
													if ((2136 >= 510) and (v746 == (1018 - (697 + 321)))) then
														v184 = v184 + (2 - 1);
														v80[v745] = v182[v184];
														break;
													end
												end
											end
										end
									elseif (v83 <= (19 - 7)) then
										if (v83 == 11) then
											local v185 = 0 - 0;
											local v186;
											local v187;
											local v188;
											local v189;
											while true do
												if (v185 == 7) then
													v82 = v70[v74];
													v80[v82[4 - 2]] = v80[v82[2 + 1]][v82[4]];
													break;
												end
												if ((2377 < 2472) and (v185 == (1 - (1595 - (210 + 1385))))) then
													v82 = v70[v74];
													v189 = v82[5 - 3];
													v80[v189](v80[v189 + (1228 - ((2011 - (1201 + 488)) + 905))]);
													v74 = v74 + (612 - (602 + 9));
													v82 = v70[v74];
													v185 = 2;
												end
												if (v185 == (1194 - (449 + 459 + 281))) then
													v189 = v82[874 - (826 + 46)];
													v187, v188 = v73(v80[v189]());
													v75 = (v188 + v189) - 1;
													v186 = 0;
													for v1132 = v189, v75 do
														local v1133 = 947 - (245 + 702);
														while true do
															if (v1133 == (0 - (0 - 0))) then
																v186 = v186 + (1 - 0) + 0;
																v80[v1132] = v187[v186];
																break;
															end
														end
													end
													v185 = 1904 - ((845 - (352 + 233)) + 1638);
												end
												if ((((1077 - 631) - (382 + 58)) == v185) or (2764 > 2956)) then
													v74 = v74 + (3 - (2 + 0));
													v82 = v70[v74];
													v189 = v82[2 + 0];
													v80[v189] = v80[v189](v13(v80, v189 + (1 - 0), v75));
													v74 = v74 + (2 - 1);
													v185 = 7;
												end
												if ((3192 <= 3445) and (v185 == ((3426 - 2221) - (902 + 303)))) then
													v186 = nil;
													v187, v188 = nil;
													v189 = nil;
													v80[v82[3 - 1]] = v82[6 - 3];
													v74 = v74 + 1 + 0;
													v185 = 1691 - (1121 + 569);
												end
												if ((218 - (22 + 192)) == v185) then
													v74 = v74 + 1;
													v82 = v70[v74];
													v80[v82[685 - (483 + 200)]] = v80[v82[1466 - (1404 + 59)]][v82[10 - (580 - (489 + 85))]];
													v74 = v74 + (1 - 0);
													v82 = v70[v74];
													v185 = 770 - (468 + 297);
												end
												if (v185 == (565 - (334 + 228))) then
													v82 = v70[v74];
													v80[v82[6 - (1505 - (277 + 1224))]] = v80[v82[6 - 3]][v82[(1499 - (663 + 830)) - 2]];
													v74 = v74 + 1 + 0;
													v82 = v70[v74];
													v80[v82[2]] = v63[v82[3]];
													v185 = 4;
												end
												if ((4775 > 3465) and (v185 == (238 - (141 + 95)))) then
													v80[v82[2 + 0]] = v63[v82[7 - 4]];
													v74 = v74 + (2 - 1);
													v82 = v70[v74];
													v80[v82[1 + 1]] = v80[v82[8 - 5]][v82[4]];
													v74 = v74 + 1 + 0;
													v185 = 3;
												end
											end
										else
											local v190 = v82[2 + 0];
											do
												return v13(v80, v190, v190 + v82[3]);
											end
										end
									elseif (v83 == (18 - 5)) then
										local v191;
										v80[v82[2 + 0]] = v80[v82[166 - (92 + 71)]];
										v74 = v74 + 1 + 0 + 0;
										v82 = v70[v74];
										v80[v82[2 - 0]] = v82[768 - (574 + 191)];
										v74 = v74 + 1 + 0;
										v82 = v70[v74];
										v80[v82[2]] = v82[7 - 4];
										v74 = v74 + (2 - 1) + (875 - (461 + 414));
										v82 = v70[v74];
										v191 = v82[851 - (43 + 211 + 595)];
										v80[v191] = v80[v191](v13(v80, v191 + ((51 + 76) - (6 + 49 + 71)), v82[3 - 0]));
										v74 = v74 + 1;
										v82 = v70[v74];
										v80[v82[1792 - (573 + 1217)]][v82[3]] = v80[v82[10 - 6]];
										v74 = v74 + 1;
										v82 = v70[v74];
										v80[v82[1 + 0 + 1]] = v80[v82[3]];
										v74 = v74 + (1 - 0);
										v82 = v70[v74];
										v80[v82[941 - (714 + 225)]] = v82[8 - 5];
										v74 = v74 + ((251 - (172 + 78)) - 0);
										v82 = v70[v74];
										v80[v82[2]] = v82[1 + (2 - 0)];
										v74 = v74 + (1 - 0);
										v82 = v70[v74];
										v191 = v82[808 - (118 + 688)];
										v80[v191] = v80[v191](v13(v80, v191 + (49 - (25 + 23)), v82[3]));
										v74 = v74 + 1;
										v82 = v70[v74];
										v80[v82[1 + 1]][v82[1889 - (927 + 959)]] = v80[v82[13 - (4 + 5)]];
									else
										local v211 = 732 - (16 + 716);
										local v212;
										while true do
											if ((0 - 0) == v211) then
												v212 = v82[99 - (11 + 86)];
												v80[v212] = v80[v212](v80[v212 + (2 - (1 - 0))]);
												break;
											end
										end
									end
								elseif (v83 <= 22) then
									if ((v83 <= 18) or (3711 < 507)) then
										if ((3276 <= 4677) and (v83 <= 16)) then
											if (v83 > ((82 + 218) - (175 + 110))) then
												v80[v82[(2 + 2) - 2]] = {};
												v74 = v74 + (4 - 3);
												v82 = v70[v74];
												v80[v82[(3011 - 1213) - ((632 - 129) + 1293)]] = v63[v82[3]];
												v74 = v74 + (2 - 1);
												v82 = v70[v74];
												v80[v82[2 + 0]] = v80[v82[1064 - (810 + 251)]][v82[3 + 1]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2 + 0]] = v63[v82[536 - (43 + 490)]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[735 - (179 + 532 + 22)]] = v80[v82[11 - 8]][v82[863 - (240 + 619)]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1 + 0 + 1]] = v63[v82[4 - 1]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[1747 - (1344 + 400)]][v82[4]];
												v74 = v74 + (406 - (255 + 150));
												v82 = v70[v74];
												v80[v82[2 + 0]] = v63[v82[3]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												if ((2272 >= 1107) and not v80[v82[8 - 6]]) then
													v74 = v74 + (3 - (1 + 1));
												else
													v74 = v82[3];
												end
											else
												local v226;
												local v227;
												v80[v82[1741 - (404 + 1335)]] = {};
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[408 - (183 + 223)]] = v80[v82[3]][v82[4 - 0]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[1 + 1]][v80[v82[340 - (10 + 327)]]] = v82[3 + 1];
												v74 = v74 + (339 - (118 + 220));
												v82 = v70[v74];
												v80[v82[1 + (3 - 2)]] = v80[v82[452 - (108 + (794 - 453))]][v82[2 + 1 + 1]];
												v74 = v74 + (4 - 3);
												v82 = v70[v74];
												v80[v82[(854 + 641) - (711 + 782)]] = {};
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[2]] = {};
												v74 = v74 + (1 - 0);
												v82 = v70[v74];
												v80[v82[(918 - (133 + 314)) - (270 + 199)]] = v80[v82[1 + 2]][v82[1823 - (580 + 1239)]];
												v74 = v74 + (2 - (1 + 0));
												v82 = v70[v74];
												v80[v82[2 + (213 - (199 + 14))]] = v80[v82[1 + 2]][v82[2 + 2]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[7 - 5]][v80[v82[7 - 4]]] = v80[v82[3 + 1]];
												v74 = v74 + (1168 - (645 + 522));
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[1793 - (1010 + 780)]][v82[4 + 0]];
												v74 = v74 + (4 - 3);
												v82 = v70[v74];
												v80[v82[5 - 3]][v80[v82[3]]] = v82[1840 - (1045 + 791)];
												v74 = v74 + (2 - (1550 - (647 + 902)));
												v82 = v70[v74];
												v80[v82[2 - 0]] = v80[v82[3]][v82[509 - (351 + 154)]];
												v74 = v74 + (1575 - ((3851 - 2570) + 293));
												v82 = v70[v74];
												v80[v82[2]] = {};
												v74 = v74 + (267 - (28 + 238));
												v82 = v70[v74];
												v80[v82[235 - (85 + 148)]] = {};
												v74 = v74 + ((1291 - (426 + 863)) - 1);
												v82 = v70[v74];
												v80[v82[1561 - (1381 + 178)]] = v80[v82[3 + 0]][v82[(18 - 14) + 0]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[6 - 4]] = v80[v82[3]][v82[3 + 1]];
												v74 = v74 + (471 - (381 + 89));
												v82 = v70[v74];
												v80[v82[2 + 0]][v80[v82[3 + 0]]] = v80[v82[4]];
												v74 = v74 + (1 - 0);
												v82 = v70[v74];
												v80[v82[(2812 - (873 + 781)) - (1074 + 82)]] = v80[v82[6 - 3]][v82[4]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1786 - (214 + 1570)]] = v82[1458 - (990 + 465)];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[(1 - 0) + 1]] = v63[v82[3 + 0]];
												v74 = v74 + (3 - 2);
												v82 = v70[v74];
												v80[v82[1728 - (1668 + 58)]] = v80[v82[629 - (512 + 114)]][v82[10 - 6]];
												v74 = v74 + (1 - 0);
												v82 = v70[v74];
												v80[v82[6 - 4]] = v80[v82[2 + 1]][v82[1 + 3]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[6 - 4]] = v80[v82[1997 - (109 + (5090 - 3205))]][v82[1473 - (1269 + 200)]];
												v74 = v74 + (1 - 0);
												v82 = v70[v74];
												v80[v82[817 - (98 + 717)]] = v82[829 - (802 + 24)];
												v74 = v74 + (1 - 0);
												v82 = v70[v74];
												v227 = v82[3];
												v226 = v80[v227];
												for v747 = v227 + (1 - 0), v82[1 + 3] do
													v226 = v226 .. v80[v747];
												end
												v80[v82[2 + 0 + 0]] = v226;
												v74 = v74 + (3 - 2) + 0;
												v82 = v70[v74];
												v80[v82[1 + 1]][v80[v82[3]]] = v80[v82[11 - 7]];
												v74 = v74 + ((3 - 0) - 2);
												v82 = v70[v74];
												v80[v82[1 + 1]] = v80[v82[2 + 1]][v82[4 + 0]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[1 + 1]][v80[v82[3]]] = v82[(4266 - 2829) - (797 + 636)];
												v74 = v74 + (4 - 3);
												v82 = v70[v74];
												v80[v82[1621 - (1427 + 192)]] = {};
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[4 - 2]] = v80[v82[3 + (1947 - (414 + 1533))]][v82[2 + 2]];
												v74 = v74 + (327 - (192 + 134));
												v82 = v70[v74];
												v80[v82[1278 - (316 + 960)]] = v80[v82[2 + 1]][v82[4 + 0]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[7 - 5]][v80[v82[554 - (83 + 468)]]] = v80[v82[1810 - (1202 + 604)]];
												v74 = v74 + (4 - 3);
												v82 = v70[v74];
												v80[v82[2 - 0]] = v80[v82[8 - 5]][v82[329 - (45 + 280)]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2 + 0 + (555 - (443 + 112))]] = v82[2 + 1];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[2]] = v63[v82[2 + 1]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[3 - 1]] = v80[v82[1914 - ((1819 - (888 + 591)) + (4059 - 2488))]][v82[2 + 2]];
												v74 = v74 + (1773 - (1733 + 39));
												v82 = v70[v74];
												v80[v82[5 - 3]] = v82[1 + 2];
												v74 = v74 + 1;
												v82 = v70[v74];
												v227 = v82[1037 - (125 + 909)];
												v226 = v80[v227];
												for v748 = v227 + (1949 - (1096 + 852)), v82[2 + 2] do
													v226 = v226 .. v80[v748];
												end
												v80[v82[2]] = v226;
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[2 - 0]][v80[v82[3 + 0]]] = v80[v82[(1943 - 1427) - (409 + 103)]];
												v74 = v74 + (237 - (46 + 190));
												v82 = v70[v74];
												v80[v82[97 - (51 + 44)]] = v80[v82[1 + 2]][v82[1321 - (1114 + 203)]];
												v74 = v74 + ((284 + 443) - (228 + 498));
												v82 = v70[v74];
												v80[v82[1 + 0 + 1]][v80[v82[3]]] = v82[4];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2 + 0]] = {};
												v74 = v74 + (664 - (174 + 489));
												v82 = v70[v74];
												v80[v82[5 - 3]] = v80[v82[1908 - (830 + 1075)]][v82[528 - (303 + 221)]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1271 - ((439 - 208) + 1038)]] = v80[v82[3 + 0]][v82[1166 - (171 + 991)]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[8 - 6]][v80[v82[7 - 4]]] = v80[v82[9 - 5]];
												v74 = v74 + 1 + (0 - 0);
												v82 = v70[v74];
												v80[v82[6 - (1682 - (136 + 1542))]] = v80[v82[8 - (16 - 11)]][v82[5 - 1]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[6 - 4]] = v82[1251 - (111 + 1137)];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[160 - (91 + 67)]] = v80[v82[8 - 5]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[525 - (423 + 100)]] = v82[1 + 2];
												v74 = v74 + (2 - 1);
												v82 = v70[v74];
												v227 = v82[2 + 1 + 0];
												v226 = v80[v227];
												for v749 = v227 + 1, v82[775 - (326 + 445)] do
													v226 = v226 .. v80[v749];
												end
												v80[v82[8 - 6]] = v226;
												v74 = v74 + (2 - (1 - 0));
												v82 = v70[v74];
												v80[v82[4 - 2]][v80[v82[714 - (530 + 181)]]] = v80[v82[885 - (445 + 169 + (753 - (68 + 418)))]];
												v74 = v74 + (33 - (19 + 13));
												v82 = v70[v74];
												v80[v82[(4 - 2) - 0]] = v80[v82[3]][v82[4]];
												v74 = v74 + (2 - 1);
												v82 = v70[v74];
												v80[v82[(9 - 4) - 3]][v80[v82[1 + 2]]] = v82[6 - 2];
												v74 = v74 + (1 - 0);
												v82 = v70[v74];
												v80[v82[1814 - (1293 + 519)]] = {};
												v74 = v74 + ((1 + 0) - 0);
												v82 = v70[v74];
												v80[v82[4 - 2]] = v80[v82[5 - 2]][v82[(1109 - (770 + 322)) - 13]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[4 - (1 + 1)]] = v80[v82[1 + 1 + 1]][v82[1 + 3]];
												v74 = v74 + (2 - 1);
												v82 = v70[v74];
												v80[v82[1 + 1]][v80[v82[1 + 0 + 2]]] = v80[v82[(3 - 0) + 1]];
												v74 = v74 + ((2127 - 1030) - ((1930 - 1221) + 387));
												v82 = v70[v74];
												v80[v82[1860 - (673 + 1185)]] = v80[v82[8 - 5]][v82[12 - 8]];
												v74 = v74 + (1 - (0 - 0));
												v82 = v70[v74];
												v80[v82[2 + 0]] = v82[3];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2 + 0]] = v63[v82[3 - 0]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[5 - 2]][v82[4]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[3 - 1]] = v82[3];
												v74 = v74 + (1881 - (446 + 1434));
												v82 = v70[v74];
												v227 = v82[3];
												v226 = v80[v227];
												for v750 = v227 + (1 - 0), v82[1287 - (1040 + 243)] do
													v226 = v226 .. v80[v750];
												end
												v80[v82[5 - 3]] = v226;
												v74 = v74 + (1848 - (559 + 1288));
												v82 = v70[v74];
												v80[v82[1933 - (609 + 1322)]][v80[v82[457 - (13 + 441)]]] = v80[v82[14 - 10]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[5 - 3]] = v80[v82[3]][v82[19 - 15]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2]][v80[v82[10 - (4 + 3)]]] = v82[2 + 2];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[5 - 3]] = {};
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[3 - (1 + 0)]] = v80[v82[2 + 1 + 0]][v82[3 + 1]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[3 + (0 - 0)]][v82[4]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[(604 - 169) - (153 + 280)]][v80[v82[8 - 5]]] = v80[v82[4]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[3 + 0]][v82[2 + 2]];
												v74 = v74 + 1 + 0 + 0;
												v82 = v70[v74];
												v80[v82[9 - 7]] = v82[3];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[2 + 0]] = v80[v82[3 + 0]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[2]] = v82[4 - 1];
												v74 = v74 + 1 + (0 - 0);
												v82 = v70[v74];
												v227 = v82[670 - (89 + 578)];
												v226 = v80[v227];
												for v751 = v227 + 1 + 0 + (0 - 0), v82[835 - (762 + 69)] do
													v226 = v226 .. v80[v751];
												end
												v80[v82[3 - 1]] = v226;
												v74 = v74 + (1050 - (572 + 477));
												v82 = v70[v74];
												v80[v82[1 + 1]][v80[v82[2 + 1]]] = v80[v82[1 + 3]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[88 - (84 + 2)]] = v80[v82[4 - 1]][v82[4]];
												v74 = v74 + (3 - 2) + 0;
												v82 = v70[v74];
												v80[v82[2]][v80[v82[845 - (497 + 345)]]] = v82[1 + 3];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1 + 1 + 0]] = {};
												v74 = v74 + (1334 - (605 + 472 + 256));
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[3 + 0]][v82[8 - 4]];
											end
										elseif (v83 == 17) then
											local v349;
											v80[v82[1 + 1]] = v82[10 - 7];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[5 - 3]] = v82[3];
											v74 = v74 + 1;
											v82 = v70[v74];
											v349 = v82[2 + 0];
											v80[v349] = v80[v349](v13(v80, v349 + (490 - (457 + 32)), v82[2 + 1]));
											v74 = v74 + (1403 - (832 + 570));
											v82 = v70[v74];
											v80[v82[2 + 0]][v82[3]] = v80[v82[2 + 2]];
											v74 = v74 + (3 - 2);
											v82 = v70[v74];
											v80[v82[1 + 1]] = v80[v82[799 - (588 + 208)]];
											v74 = v74 + (2 - 1);
											v82 = v70[v74];
											v80[v82[2]] = v82[1803 - (884 + 916)];
											v74 = v74 + (1 - 0);
											v82 = v70[v74];
											v80[v82[2 + 0]] = v82[656 - (232 + 421)];
											v74 = v74 + 1;
											v82 = v70[v74];
											v349 = v82[2];
											v80[v349] = v80[v349](v13(v80, v349 + (1890 - (1569 + 320)), v82[3]));
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[2]][v82[3]] = v80[v82[1 + 3]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[(14 - 8) - (2 + 2)]] = v80[v82[3]];
										else
											local v369;
											local v370;
											local v371;
											v80[v82[607 - (316 + 289)]] = {};
											v74 = v74 + (2 - (1 + 0));
											v82 = v70[v74];
											v80[v82[1 + 1]] = v82[(5672 - 4216) - ((823 - (8 + 149)) + 787)];
											v74 = v74 + (426 - (360 + 65));
											v82 = v70[v74];
											v80[v82[2]] = #v80[v82[(1323 - (1199 + 121)) + 0]];
											v74 = v74 + ((431 - 176) - (79 + 175));
											v82 = v70[v74];
											v80[v82[2 - (0 - 0)]] = v82[3 + 0];
											v74 = v74 + (2 - (1 + 0));
											v82 = v70[v74];
											v371 = v82[3 - (3 - 2)];
											v370 = v80[v371];
											v369 = v80[v371 + (901 - (503 + 396))];
											if (v369 > (181 - (92 + 89))) then
												if (v370 > v80[v371 + (1 - 0)]) then
													v74 = v82[3];
												else
													v80[v371 + 3] = v370;
												end
											elseif (v370 < v80[v371 + 1 + 0]) then
												v74 = v82[2 + 1];
											else
												v80[v371 + 3] = v370;
											end
										end
									elseif ((911 >= 521) and (v83 <= (78 - 58))) then
										if ((3804 > 3392) and (v83 == (3 + (37 - 21)))) then
											local v382;
											local v383;
											local v384;
											v80[v82[4 - 2]] = v80[v82[3]][v82[4 + 0]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[2]][v80[v82[2 + (1808 - (518 + 1289))]]] = v80[v82[12 - (13 - 5)]];
											v74 = v74 + 1 + 0 + 0;
											v82 = v70[v74];
											v80[v82[2]] = v80[v82[3]][v82[5 - 1]];
											v74 = v74 + (1245 - (485 + 759));
											v82 = v70[v74];
											v80[v82[(5 - 1) - 2]] = v82[1192 - (326 + 116 + 747)];
											v74 = v74 + (1136 - (832 + 303));
											v82 = v70[v74];
											v80[v82[948 - (88 + 858)]] = v80[v82[1 + 2]];
											v74 = v74 + (470 - (304 + 165)) + 0;
											v82 = v70[v74];
											v384 = v82[1 + 1];
											v80[v384] = v80[v384]();
											v74 = v74 + ((746 + 44) - (766 + 23));
											v82 = v70[v74];
											v80[v82[2]] = v82[14 - 11];
											v74 = v74 + (1 - 0);
											v82 = v70[v74];
											v383 = v82[7 - 4];
											v382 = v80[v383];
											for v752 = v383 + 1, v82[13 - 9] do
												v382 = v382 .. v80[v752];
											end
											v80[v82[1075 - ((1196 - (54 + 106)) + 37)]] = v382;
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2 + 0]][v80[v82[5 - 2]]] = v80[v82[(1973 - (1618 + 351)) + 0]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[1482 - (641 + 839)]] = v80[v82[916 - (910 + 3)]][v82[9 - 5]];
										elseif v80[v82[1686 - (1466 + 154 + 64)]] then
											v74 = v74 + (1017 - (10 + 1006)) + 0;
										else
											v74 = v82[1151 - (140 + 416 + 592)];
										end
									elseif (v83 > (8 + 2 + 11)) then
										local v406 = v82[810 - (329 + 479)];
										do
											return v13(v80, v406, v75);
										end
									elseif not v80[v82[856 - (174 + 680)]] then
										v74 = v74 + (3 - 2);
									else
										v74 = v82[5 - 2];
									end
								elseif (v83 <= (19 + 7)) then
									if ((v83 <= (763 - (396 + 343))) or (935 <= 162)) then
										if ((414 < 1183) and (v83 == (3 + 20))) then
											v80[v82[1479 - ((93 - 64) + 1448)]] = v80[v82[3]];
										else
											local v409 = (2422 - (912 + 121)) - (135 + 1254);
											local v410;
											while true do
												if ((4098 > 766) and (v409 == (0 - 0))) then
													v410 = v82[9 - (4 + 3)];
													v80[v410](v80[v410 + 1 + 0]);
													break;
												end
											end
										end
									elseif (v83 > (1552 - (389 + 1138))) then
										v80[v82[1291 - (1140 + 149)]][v80[v82[577 - (102 + 472)]]] = v80[v82[4 + 0]];
									else
										local v413 = 0 + 0 + 0;
										local v414;
										local v415;
										local v416;
										while true do
											if ((v413 == ((7 - 1) + 0)) or (3904 <= 98)) then
												v416 = v82[1547 - (320 + 1225)];
												v80[v416] = v80[v416](v80[v416 + (1 - 0)]);
												v74 = v74 + 1 + 0 + 0;
												v82 = v70[v74];
												v413 = 7;
											end
											if (0 == v413) then
												v414 = nil;
												v415 = nil;
												v416 = nil;
												v80[v82[1466 - (157 + 1307)]] = v80[v82[1862 - (821 + 1038)]][v82[9 - 5]];
												v413 = (3 - 2) + 0;
											end
											if (v413 == (6 - 2)) then
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[4 - 2]] = v80[v82[1029 - (834 + 192)]][v82[1 + 3]];
												v74 = v74 + 1;
												v413 = 2 + 3;
											end
											if (((1 + 0) == v413) or (4255 <= 549)) then
												v74 = v74 + (1 - (0 - 0));
												v82 = v70[v74];
												v80[v82[306 - (300 + 4)]] = {};
												v74 = v74 + 1 + 0;
												v413 = 5 - 3;
											end
											if (((370 - (112 + 250)) == v413) or (472 > 516)) then
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[4 - 2]][v80[v82[3]]] = v80[v82[4]];
												break;
											end
											if ((4264 > 983) and (v413 == (3 + 2))) then
												v82 = v70[v74];
												v80[v82[2 + 0]] = v80[v82[3 + 0]][v82[2 + 2]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v413 = 5 + 1;
											end
											if (v413 == (1421 - (1001 + 413))) then
												v415 = v82[6 - 3];
												v414 = v80[v415];
												for v1138 = v415 + 1, v82[886 - (244 + 638)] do
													v414 = v414 .. v80[v1138];
												end
												v80[v82[695 - (109 + 518 + 66)]] = v414;
												v413 = 23 - 15;
											end
											if ((386 < 4511) and (v413 == (605 - (512 + 90)))) then
												v80[v82[1908 - (1665 + 241)]] = v82[720 - (373 + 344)];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1 + 1]] = v63[v82[3]];
												v413 = 2 + 2;
											end
											if ((4795 > 3065) and (v413 == 2)) then
												v82 = v70[v74];
												v80[v82[5 - 3]] = v80[v82[4 - 1]][v82[1103 - (35 + 1064)]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v413 = 10 - 7;
											end
										end
									end
								elseif (v83 <= 28) then
									if (v83 > 27) then
										local v417 = v71[v82[3]];
										local v418;
										local v419 = {};
										v418 = v10({}, {__index=function(v753, v754)
											local v755 = 0;
											local v756;
											while true do
												if (v755 == (0 - 0)) then
													v756 = v419[v754];
													return v756[1][v756[1 + 1]];
												end
											end
										end,__newindex=function(v757, v758, v759)
											local v760 = v419[v758];
											v760[1237 - (298 + 938)][v760[1261 - (233 + 1026)]] = v759;
										end});
										for v762 = 1667 - (636 + 1030), v82[4] do
											v74 = v74 + 1 + 0;
											local v763 = v70[v74];
											if ((v763[(112 - (61 + 50)) + 0] == 23) or (4884 == 1777)) then
												v419[v762 - 1] = {v80,v763[1 + 2]};
											else
												v419[v762 - (222 - (55 + 166))] = {v62,v763[11 - 8]};
											end
											v79[#v79 + (298 - (36 + 261))] = v419;
										end
										v80[v82[3 - 1]] = v29(v417, v418, v63);
									else
										v80[v82[(565 + 805) - (34 + 1334)]] = v82[2 + 1];
									end
								elseif ((v83 == (23 + 6)) or (2997 == 3076)) then
									local v423 = 0 - 0;
									while true do
										if (v423 == ((2603 - 1311) - (1035 + 248))) then
											v80[v82[2]] = v63[v82[24 - (20 + 1)]];
											break;
										end
										if (v423 == (2 + 0)) then
											v80[v82[2]] = v80[v82[3]][v82[2 + 2]];
											v74 = v74 + (320 - (134 + 185));
											v82 = v70[v74];
											v423 = 1136 - (549 + 584);
										end
										if ((v423 == (685 - (314 + 371))) or (1158 >= 4765)) then
											v80[v82[6 - 4]] = {};
											v74 = v74 + (969 - (478 + 490));
											v82 = v70[v74];
											v423 = 1 + 0;
										end
										if (v423 == (1176 - (786 + 386))) then
											v80[v82[6 - (1464 - (1295 + 165))]] = v80[v82[1382 - (1055 + 324)]][v82[(307 + 1037) - (1093 + 100 + 147)]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v423 = 1 + 4;
										end
										if (v423 == (27 - 20)) then
											v80[v82[6 - (1401 - (819 + 578))]] = v80[v82[(1410 - (331 + 1071)) - 5]][v82[4]];
											v74 = v74 + (2 - 1);
											v82 = v70[v74];
											v423 = 3 + 5;
										end
										if (v423 == 1) then
											v80[v82[7 - 5]] = v80[v82[10 - 7]][v82[4 + 0]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v423 = 4 - 2;
										end
										if (v423 == (691 - (364 + 324))) then
											v80[v82[5 - 3]][v80[v82[6 - 3]]] = v80[v82[2 + 2]];
											v74 = v74 + ((747 - (588 + 155)) - 3);
											v82 = v70[v74];
											v423 = 4;
										end
										if (v423 == ((1294 - (546 + 736)) - 4)) then
											v80[v82[2]] = v82[8 - 5];
											v74 = v74 + (1269 - (1249 + 19));
											v82 = v70[v74];
											v423 = 9 + 0;
										end
										if (v423 == 5) then
											v80[v82[(1944 - (1834 + 103)) - 5]] = v82[1089 - (686 + 400)];
											v74 = v74 + 1;
											v82 = v70[v74];
											v423 = 5 + 1;
										end
										if (v423 == (235 - (73 + 156))) then
											v80[v82[1 + 1]] = v63[v82[814 - (444 + 277 + 90)]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v423 = 22 - 15;
										end
									end
								else
									local v424;
									v80[v82[2]] = v82[473 - (224 + 246)];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v80[v82[2]] = v82[5 - 2];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v424 = v82[2];
									v80[v424] = v80[v424](v13(v80, v424 + 1, v82[3]));
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2]][v82[3 + 0]] = v80[v82[4]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[2]] = v80[v82[(14 - 9) - (1768 - (1536 + 230))]];
									v74 = v74 + (3 - 2);
									v82 = v70[v74];
									v80[v82[515 - (203 + 310)]] = v82[1996 - (1238 + 755)];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2]] = v82[1537 - (709 + 825)];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v424 = v82[2 - 0];
									v80[v424] = v80[v424](v13(v80, v424 + (865 - ((687 - (128 + 363)) + 668)), v82[11 - 8]));
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[3 - 1]][v82[836 - (171 + 662)]] = v80[v82[97 - (4 + 89)]];
									v74 = v74 + (3 - (4 - 2));
									v82 = v70[v74];
									v80[v82[1 + 1]] = v80[v82[13 - 10]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[1488 - (35 + 1451)]] = v82[1456 - (28 + 1425)];
									v74 = v74 + (1994 - (941 + 1052));
									v82 = v70[v74];
									v80[v82[2]] = v82[3];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v424 = v82[1516 - (822 + 692)];
									v80[v424] = v80[v424](v13(v80, v424 + (1 - 0), v82[2 + 1]));
									v74 = v74 + ((77 + 221) - (45 + (416 - 164)));
									v82 = v70[v74];
									v80[v82[2 + 0]][v82[3]] = v80[v82[4]];
									v74 = v74 + (2 - 1) + 0;
									v82 = v70[v74];
									v80[v82[4 - 2]] = v80[v82[436 - (114 + 319)]];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v80[v82[2 - 0]] = v82[2 + (2 - 1)];
									v74 = v74 + ((1 + 0) - 0);
									v82 = v70[v74];
									v80[v82[3 - 1]] = v82[(2975 - (615 + 394)) - (556 + 1407)];
									v74 = v74 + 1;
									v82 = v70[v74];
									v424 = v82[1208 - (741 + 465)];
									v80[v424] = v80[v424](v13(v80, v424 + 1, v82[468 - (170 + 267 + 28)]));
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2 + 0]][v82[7 - 4]] = v80[v82[4]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2 + 0 + 0]] = v80[v82[3]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[1232 - (957 + 273)]] = v82[1 + 2];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[(20 - 13) - 5]] = v82[7 - 4];
									v74 = v74 + 1;
									v82 = v70[v74];
									v424 = v82[5 - 3];
									v80[v424] = v80[v424](v13(v80, v424 + 1, v82[3]));
									v74 = v74 + (4 - 3);
									v82 = v70[v74];
									v80[v82[1782 - ((1764 - 1375) + 1391)]][v82[2 + 1]] = v80[v82[4]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[1 + (652 - (59 + 592))]] = v80[v82[6 - 3]];
									v74 = v74 + (2 - 1);
									v82 = v70[v74];
									v80[v82[953 - (783 + 168)]] = v82[9 - 6];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v80[v82[2 + 0]] = v82[314 - (218 + 91 + 2)];
									v74 = v74 + (2 - 1);
									v82 = v70[v74];
									v424 = v82[(1385 - (70 + 101)) - (1090 + (301 - 179))];
									v80[v424] = v80[v424](v13(v80, v424 + 1 + 0 + 0, v82[9 - 6]));
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2]][v82[1121 - (628 + 490)]] = v80[v82[1 + 3]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[2]] = v80[v82[7 - 4]];
									v74 = v74 + (4 - 3);
									v82 = v70[v74];
									v80[v82[2]] = v82[777 - (431 + 343)];
									v74 = v74 + ((2 - 1) - 0);
									v82 = v70[v74];
									v80[v82[(246 - (123 + 118)) - 3]] = v82[3];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v424 = v82[1 + 1];
									v80[v424] = v80[v424](v13(v80, v424 + (1696 - (556 + 1139)), v82[18 - (6 + 9)]));
									v74 = v74 + 1 + 0 + 0;
									v82 = v70[v74];
									v80[v82[2 + 0]][v82[3]] = v80[v82[173 - (28 + 141)]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2 - 0]] = v80[v82[3 + 0]];
									v74 = v74 + (1318 - (486 + 831));
									v82 = v70[v74];
									v80[v82[5 - 3]] = v82[10 - 7];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[1 + 1]] = v82[9 - 6];
									v74 = v74 + (1264 - (668 + 595));
									v82 = v70[v74];
									v424 = v82[2];
									v80[v424] = v80[v424](v13(v80, v424 + 1, v82[1 + 2]));
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[(1400 - (653 + 746)) + 1]][v82[8 - 5]] = v80[v82[294 - (23 + 267)]];
									v74 = v74 + (1945 - (1129 + 815));
									v82 = v70[v74];
									v80[v82[389 - (371 + (29 - 13))]] = v80[v82[3]];
									v74 = v74 + (1751 - (1326 + 424));
									v82 = v70[v74];
									v80[v82[3 - 1]] = v82[10 - 7];
									v74 = v74 + (119 - (88 + 30));
									v82 = v70[v74];
									v80[v82[773 - (720 + 51)]] = v82[6 - 3];
									v74 = v74 + 1;
									v82 = v70[v74];
									v424 = v82[(2561 - 783) - (421 + 1355)];
									v80[v424] = v80[v424](v13(v80, v424 + (1 - 0), v82[2 + 1]));
									v74 = v74 + (1084 - (286 + (2133 - 1336)));
									v82 = v70[v74];
									v80[v82[7 - 5]][v82[3]] = v80[v82[4]];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v80[v82[441 - (397 + 42)]] = v80[v82[3]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[1 + 0 + 1]] = v82[803 - (24 + 776)];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v80[v82[787 - (222 + 563)]] = v82[6 - 3];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v424 = v82[2];
									v80[v424] = v80[v424](v13(v80, v424 + 1, v82[3]));
									v74 = v74 + (191 - (23 + 167));
									v82 = v70[v74];
									v80[v82[(1152 + 648) - (690 + 1108)]][v82[2 + 0 + 1]] = v80[v82[4 + 0]];
									v74 = v74 + (849 - (40 + 808));
									v82 = v70[v74];
									v80[v82[1 + 1 + 0]] = v80[v82[11 - 8]];
									v74 = v74 + 1 + 0 + 0;
									v82 = v70[v74];
									v80[v82[(4 - 2) + 0]] = v82[2 + 1 + 0];
									v74 = v74 + (572 - (47 + 524));
									v82 = v70[v74];
									v80[v82[2 + 0]] = v82[8 - 5];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v424 = v82[4 - 2];
									v80[v424] = v80[v424](v13(v80, v424 + (1727 - (1165 + 561)), v82[(1 - 0) + 2]));
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[6 - (1238 - (885 + 349))]][v82[2 + 1]] = v80[v82[483 - (341 + 138)]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2]] = v80[v82[5 - 2]];
									v74 = v74 + (327 - (89 + 237));
									v82 = v70[v74];
									v80[v82[6 - 4]] = v82[6 - 3];
									v74 = v74 + (882 - (581 + 300));
									v82 = v70[v74];
									v80[v82[1222 - (855 + 365)]] = v82[6 - 3];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v424 = v82[2];
									v80[v424] = v80[v424](v13(v80, v424 + (1236 - (1030 + 205)), v82[3 + 0 + 0]));
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[288 - (156 + 130)]][v82[6 - 3]] = v80[v82[6 - 2]];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v80[v82[1 + 1]] = v80[v82[8 - 5]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[71 - (10 + 59)]] = v82[1 + 2];
									v74 = v74 + (4 - (8 - 5));
									v82 = v70[v74];
									v80[v82[1165 - (671 + 492)]] = v82[3 + 0];
									v74 = v74 + (1216 - (369 + 846));
									v82 = v70[v74];
									v424 = v82[1 + 1];
									v80[v424] = v80[v424](v13(v80, v424 + 1 + (968 - (915 + 53)), v82[1948 - (1036 + 909)]));
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2 - 0]][v82[206 - (11 + 192)]] = v80[v82[3 + 1]];
									v74 = v74 + (176 - (135 + 40));
									v82 = v70[v74];
									v80[v82[4 - 2]] = v80[v82[3]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[2 + 0]] = v82[6 - 3];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[2 - 0]] = v82[179 - (50 + 126)];
									v74 = v74 + (2 - 1);
									v82 = v70[v74];
									v424 = v82[1 + 1];
									v80[v424] = v80[v424](v13(v80, v424 + 1, v82[1416 - (1233 + 180)]));
									v74 = v74 + (970 - (522 + 447));
									v82 = v70[v74];
									v80[v82[2]][v82[1424 - (107 + 1314)]] = v80[v82[2 + 2]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[5 - 3]] = v80[v82[2 + 1]];
									v74 = v74 + ((802 - (768 + 33)) - 0);
									v82 = v70[v74];
									v80[v82[7 - 5]] = v82[1913 - (716 + 1194)];
									v74 = v74 + (3 - 2) + 0;
									v82 = v70[v74];
									v80[v82[1 + 1]] = v82[3];
									v74 = v74 + 1;
									v82 = v70[v74];
									v424 = v82[505 - (74 + 429)];
									v80[v424] = v80[v424](v13(v80, v424 + (1 - (0 - 0)), v82[2 + 1]));
									v74 = v74 + (2 - 1);
									v82 = v70[v74];
									v80[v82[2 + 0]][v82[8 - 5]] = v80[v82[9 - 5]];
									v74 = v74 + (434 - (279 + 154));
									v82 = v70[v74];
									v80[v82[780 - (454 + 324)]] = v80[v82[3]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2]] = v82[20 - (12 + 5)];
									v74 = v74 + 1 + (328 - (287 + 41));
									v82 = v70[v74];
									v80[v82[4 - 2]] = v82[2 + 1];
									v74 = v74 + (1094 - ((1124 - (638 + 209)) + 816));
									v82 = v70[v74];
									v424 = v82[8 - 6];
									v80[v424] = v80[v424](v13(v80, v424 + 1 + 0, v82[1689 - (96 + 1590)]));
									v74 = v74 + (1184 - (1058 + 125));
									v82 = v70[v74];
									v80[v82[1 + 1]][v82[978 - (815 + 160)]] = v80[v82[17 - 13]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[4 - 2]] = v80[v82[(1673 - (741 + 931)) + 1 + 1]];
								end
							elseif (v83 <= (134 - (250 - 162))) then
								if (v83 <= 38) then
									if (v83 <= (1932 - (41 + (8675 - 6818)))) then
										if (v83 <= (1925 - (1222 + 671))) then
											if (v83 == (80 - 49)) then
												v80[v82[2]] = v80[v82[3 - 0]][v82[1186 - (229 + 953)]];
											else
												local v530 = 0 + 0;
												local v531;
												local v532;
												while true do
													if (v530 == (1774 - (1111 + 663))) then
														v531 = nil;
														v532 = nil;
														v80[v82[1581 - (376 + 498 + 705)]] = v63[v82[1 + 2]];
														v74 = v74 + 1 + 0;
														v82 = v70[v74];
														v532 = v82[2];
														v530 = 1 + 0;
													end
													if (v530 == (6 - 3)) then
														v532 = v82[1 + 1];
														v531 = v80[v82[3]];
														v80[v532 + (680 - (642 + 37))] = v531;
														v80[v532] = v531[v82[4]];
														v74 = v74 + 1 + 0;
														v82 = v70[v74];
														v530 = 1 + 3;
													end
													if ((v530 == (4 - 2)) or (844 == 250)) then
														v74 = v74 + 1;
														v82 = v70[v74];
														v532 = v82[456 - (233 + 221)];
														v80[v532] = v80[v532](v13(v80, v532 + (2 - 1), v82[3 + 0]));
														v74 = v74 + (1542 - (718 + 823));
														v82 = v70[v74];
														v530 = 3;
													end
													if (v530 == (3 + 1)) then
														v80[v82[807 - (266 + 539)]] = v80[v82[3]];
														v74 = v74 + (2 - 1);
														v82 = v70[v74];
														v532 = v82[1227 - (636 + 589)];
														v80[v532] = v80[v532](v13(v80, v532 + (2 - 1), v82[5 - 2]));
														v74 = v74 + 1 + 0;
														v530 = 2 + (11 - 8);
													end
													if (v530 == (1016 - (657 + 117 + 241))) then
														v531 = v80[v82[(4 + 3) - 4]];
														v80[v532 + (2 - 1)] = v531;
														v80[v532] = v531[v82[1191 - (1151 + 36)]];
														v74 = v74 + 1 + 0;
														v82 = v70[v74];
														v80[v82[2]] = v80[v82[3]][v82[2 + 2]];
														v530 = 5 - (12 - 9);
													end
													if (v530 == (5 + 0)) then
														v82 = v70[v74];
														if v80[v82[1834 - (1552 + 280)]] then
															v74 = v74 + (835 - (64 + (1264 - (64 + 430))));
														else
															v74 = v82[3 + 0];
														end
														break;
													end
												end
											end
										elseif (v83 == (74 - 41)) then
											v80[v82[1 + 1]] = v80[v82[1246 - (157 + 1086)]] % v80[v82[4 + 0]];
										else
											v80[v82[3 - 1]] = v80[v82[13 - 10]] + v82[5 - 1];
										end
									elseif ((v83 <= (48 - 12)) or (4757 < 3588)) then
										if ((v83 > (854 - (599 + 220))) or (197 > 4460)) then
											local v535;
											v80[v82[2]] = v80[v82[(368 - (106 + 257)) - 2]];
											v74 = v74 + (1932 - (1286 + 527 + 118));
											v82 = v70[v74];
											v80[v82[(723 - (496 + 225)) + 0]] = v82[3];
											v74 = v74 + (1218 - (841 + 376));
											v82 = v70[v74];
											v80[v82[2 - 0]] = v82[1 + 2];
											v74 = v74 + (2 - 1);
											v82 = v70[v74];
											v535 = v82[861 - (464 + 395)];
											v80[v535] = v80[v535](v13(v80, v535 + (2 - 1), v82[3]));
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[1 + 1]][v82[3]] = v80[v82[4]];
											v74 = v74 + ((1713 - 875) - (467 + 370));
											v82 = v70[v74];
											v80[v82[3 - 1]] = v80[v82[3]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[6 - 4]] = v82[3];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[4 - 2]] = v82[523 - (150 + 370)];
											v74 = v74 + (1283 - (74 + 1208));
											v82 = v70[v74];
											v535 = v82[(19 - 15) - 2];
											v80[v535] = v80[v535](v13(v80, v535 + (4 - (1661 - (256 + 1402))), v82[3]));
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2 + 0]][v82[393 - (14 + 376)]] = v80[v82[6 - 2]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[2]] = v80[v82[3]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[2 + 0]] = v82[3];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[5 - 3]] = v82[1902 - (30 + 1869)];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v535 = v82[80 - (23 + 55)];
											v80[v535] = v80[v535](v13(v80, v535 + ((1371 - (213 + 1156)) - 1), v82[3]));
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[2 + 0]][v82[4 - 1]] = v80[v82[4]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[903 - (652 + 249)]] = v80[v82[7 - 4]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[1870 - (708 + 1160)]] = v82[8 - 5];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[3 - 1]] = v82[30 - (10 + 17)];
											v74 = v74 + 1;
											v82 = v70[v74];
											v535 = v82[2];
											v80[v535] = v80[v535](v13(v80, v535 + 1 + 0, v82[1735 - (1400 + 332)]));
											v74 = v74 + (1 - 0);
											v82 = v70[v74];
											v80[v82[1910 - (242 + (1854 - (96 + 92)))]][v82[2 + 1]] = v80[v82[2 + 2]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[2]] = v80[v82[902 - (142 + 757)]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[942 - (850 + 74 + 16)]] = v82[(2 + 2) - 1];
											v74 = v74 + (1391 - (360 + 1030));
											v82 = v70[v74];
											v80[v82[2]] = v82[3];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v535 = v82[5 - 3];
											v80[v535] = v80[v535](v13(v80, v535 + (1 - 0), v82[1664 - ((988 - (32 + 47)) + 752)]));
											v74 = v74 + (1224 - (109 + 1114));
											v82 = v70[v74];
											v80[v82[3 - 1]][v82[(1979 - (1053 + 924)) + 1]] = v80[v82[4 + 0]];
											v74 = v74 + ((418 - 175) - (6 + 236));
											v82 = v70[v74];
											v80[v82[2 + 0]] = v80[v82[3 + 0]];
											v74 = v74 + (2 - 1);
											v82 = v70[v74];
											v80[v82[3 - 1]] = v82[3];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[1135 - ((2724 - (685 + 963)) + 57)]] = v82[3];
											v74 = v74 + 1;
											v82 = v70[v74];
											v535 = v82[1 + 1];
											v80[v535] = v80[v535](v13(v80, v535 + (690 - (579 + 110)), v82[1 + 2]));
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[(3 - 1) + (0 - 0)]][v82[410 - (174 + 233)]] = v80[v82[(1720 - (541 + 1168)) - (1604 - (645 + 952))]];
											v74 = v74 + (1 - 0);
											v82 = v70[v74];
											v80[v82[2]] = v80[v82[2 + 1]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[1176 - (663 + 511)]] = v82[3 + 0];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]] = v82[3];
											v74 = v74 + 1;
											v82 = v70[v74];
											v535 = v82[1 + 1];
											v80[v535] = v80[v535](v13(v80, v535 + ((840 - (669 + 169)) - 1), v82[2 + 1]));
											v74 = v74 + (2 - 1);
											v82 = v70[v74];
											v80[v82[4 - 2]][v82[3]] = v80[v82[4]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]] = v80[v82[3]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[1 + 1]] = v82[3];
											v74 = v74 + (1 - 0);
											v82 = v70[v74];
											v80[v82[2]] = v82[3 + 0];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v535 = v82[2];
											v80[v535] = v80[v535](v13(v80, v535 + 1, v82[10 - 7]));
											v74 = v74 + (723 - (478 + 244));
											v82 = v70[v74];
											v80[v82[3 - 1]][v82[520 - (440 + 77)]] = v80[v82[4]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[2]] = v80[v82[10 - 7]];
											v74 = v74 + (1557 - (655 + 901));
											v82 = v70[v74];
											v80[v82[1 + 1]] = v82[3 + 0];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]] = v82[3 + 0];
											v74 = v74 + (3 - (1 + 1));
											v82 = v70[v74];
											v535 = v82[1447 - (695 + 750)];
											v80[v535] = v80[v535](v13(v80, v535 + 1, v82[9 - 6]));
											v74 = v74 + (1 - 0);
											v82 = v70[v74];
											v80[v82[2]][v82[(3 + 8) - 8]] = v80[v82[355 - (285 + 66)]];
											v74 = v74 + ((767 - (181 + 584)) - 1);
											v82 = v70[v74];
											v80[v82[2]] = v80[v82[1313 - (682 + 628)]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[(1696 - (665 + 730)) - (176 + 123)]] = v82[2 + 1];
											v74 = v74 + 1 + (0 - 0);
											v82 = v70[v74];
											v80[v82[(552 - 281) - (239 + 30)]] = v82[1 + 2];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v535 = v82[2];
											v80[v535] = v80[v535](v13(v80, v535 + (1 - 0), v82[3]));
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]][v82[8 - 5]] = v80[v82[319 - (306 + (1359 - (540 + 810)))]];
											v74 = v74 + (3 - 2);
											v82 = v70[v74];
											v80[v82[1 + 1]] = v80[v82[3]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[1 + 1]] = v82[8 - 5];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]] = v82[1378 - (1140 + 235)];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v535 = v82[2];
											v80[v535] = v80[v535](v13(v80, v535 + 1 + 0, v82[1 + 2]));
											v74 = v74 + (53 - (33 + 19));
											v82 = v70[v74];
											v80[v82[1 + 1]][v82[8 - 5]] = v80[v82[2 + 2]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]] = v80[v82[5 - 2]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]] = v82[3];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]] = v82[3 + 0];
											v74 = v74 + ((2758 - 2068) - (586 + 103));
											v82 = v70[v74];
											v535 = v82[1 + 1];
											v80[v535] = v80[v535](v13(v80, v535 + (2 - 1), v82[1491 - (1309 + 179)]));
											v74 = v74 + (1 - (0 - 0));
											v82 = v70[v74];
											v80[v82[2]][v82[2 + 1]] = v80[v82[10 - 6]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[3 - 1]] = v80[v82[5 - 2]];
											v74 = v74 + (610 - (295 + 250 + 64));
											v82 = v70[v74];
											v80[v82[4 - 2]] = v82[3];
											v74 = v74 + (1963 - (1300 + 662));
											v82 = v70[v74];
											v80[v82[6 - 4]] = v82[3];
											v74 = v74 + (1756 - (1178 + 577));
											v82 = v70[v74];
											v535 = v82[2 + 0];
											v80[v535] = v80[v535](v13(v80, v535 + (2 - 1), v82[1408 - ((1054 - (166 + 37)) + 554)]));
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2 + 0]][v82[8 - 5]] = v80[v82[8 - 4]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]] = v80[v82[305 - (115 + 187)]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[2 + 0]] = v82[11 - 8];
											v74 = v74 + ((3043 - (22 + 1859)) - (160 + (2773 - (843 + 929))));
											v82 = v70[v74];
											v80[v82[2 + 0]] = v82[(265 - (30 + 232)) + 0];
											v74 = v74 + (1 - 0);
											v82 = v70[v74];
											v535 = v82[2];
											v80[v535] = v80[v535](v13(v80, v535 + (359 - (237 + 121)), v82[(2570 - 1670) - (525 + 372)]));
											v74 = v74 + ((778 - (55 + 722)) - 0);
											v82 = v70[v74];
											v80[v82[6 - 4]][v82[145 - (96 + 46)]] = v80[v82[781 - (643 + 134)]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[1 + 1]] = v80[v82[3]];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]] = v82[6 - 3];
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[7 - (10 - 5)]] = v82[3];
											v74 = v74 + 1 + (1675 - (78 + 1597));
											v82 = v70[v74];
											v535 = v82[3 - 1];
											v80[v535] = v80[v535](v13(v80, v535 + (1 - 0), v82[(159 + 563) - (316 + 403)]));
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[5 - (3 + 0)]][v82[2 + 1]] = v80[v82[9 - 5]];
											v74 = v74 + 1 + 0;
											v82 = v70[v74];
											v80[v82[1 + 1]] = v80[v82[(9 + 1) - (556 - (305 + 244))]];
											v74 = v74 + ((4 + 0) - 3);
											v82 = v70[v74];
											v80[v82[3 - 1]] = v82[1 + 2];
											v74 = v74 + (1 - (105 - (95 + 10)));
											v82 = v70[v74];
											v80[v82[1 + 0 + 1]] = v82[8 - 5];
											v74 = v74 + (3 - 2);
											v82 = v70[v74];
											v535 = v82[19 - (12 + 5)];
											v80[v535] = v80[v535](v13(v80, v535 + (3 - 2), v82[3]));
											v74 = v74 + 1;
											v82 = v70[v74];
											v80[v82[2]][v82[3]] = v80[v82[8 - 4]];
										elseif (v80[v82[3 - 1]] == v82[9 - 5]) then
											v74 = v74 + 1 + 0;
										else
											v74 = v82[3];
										end
									elseif (v83 == (2010 - (1656 + 317))) then
										local v617;
										v80[v82[2 - 0]] = v82[3];
										v74 = v74 + (763 - (592 + 170)) + 0;
										v82 = v70[v74];
										v617 = v82[2 + 0];
										v80[v617] = v80[v617](v13(v80, v617 + 1, v82[7 - 4]));
										v74 = v74 + 1;
										v82 = v70[v74];
										v80[v82[9 - 7]][v82[357 - (5 + 349)]] = v80[v82[18 - (48 - 34)]];
										v74 = v74 + (1272 - (266 + 1005));
										v82 = v70[v74];
										v80[v82[2 + 0]] = v80[v82[10 - 7]];
										v74 = v74 + 1;
										v82 = v70[v74];
										v80[v82[2 - 0]] = v82[1699 - (561 + 1135)];
										v74 = v74 + ((2 - 1) - 0);
										v82 = v70[v74];
										v80[v82[6 - (2 + 2)]] = v82[(417 + 652) - (507 + 559)];
										v74 = v74 + (2 - (2 - 1));
										v82 = v70[v74];
										v617 = v82[2];
										v80[v617] = v80[v617](v13(v80, v617 + ((1 + 2) - 2), v82[391 - (212 + 176)]));
										v74 = v74 + (906 - (250 + 655));
										v82 = v70[v74];
										v80[v82[5 - 3]][v82[5 - 2]] = v80[v82[5 - 1]];
										v74 = v74 + (1957 - (1869 + 87));
										v82 = v70[v74];
										v80[v82[6 - 4]] = v82[1904 - (484 + 1417)];
										v74 = v74 + (2 - 1);
										v82 = v70[v74];
										v80[v82[2 - 0]] = v63[v82[5 - 2]];
									else
										v80[v82[775 - (48 + 725)]] = v80[v82[3]] % v82[4];
									end
								elseif ((v83 <= (68 - 26)) or (475 < 230)) then
									if (v83 <= ((614 - (353 + 154)) - 67)) then
										if (v83 == 39) then
											v80[v82[2]] = v63[v82[3]];
										else
											local v639 = v82[2 + 0];
											v80[v639] = v80[v639](v13(v80, v639 + 1, v82[7 - 4]));
										end
									elseif ((69 <= 137) and (v83 == (12 + 29))) then
										do
											return;
										end
									else
										v80[v82[2]][v82[1 + 2]] = v80[v82[857 - ((201 - 49) + 701)]];
									end
								elseif (v83 <= (1355 - (430 + 881))) then
									if (v83 == (17 + 26)) then
										local v643 = v82[2];
										v80[v643] = v80[v643](v13(v80, v643 + (896 - (557 + 338)), v75));
									else
										local v645 = 0;
										local v646;
										local v647;
										while true do
											if (v645 == 0) then
												v646 = v82[1 + 1];
												v647 = v80[v82[3]];
												v645 = 2 - 1;
											end
											if ((2296 == 2296) and (v645 == (3 - 2))) then
												v80[v646 + 1] = v647;
												v80[v646] = v647[v82[(13 - 3) - 6]];
												break;
											end
										end
									end
								elseif (v83 == (96 - 51)) then
									local v648 = v82[803 - (499 + 302)];
									do
										return v80[v648](v13(v80, v648 + 1 + 0, v82[3]));
									end
								else
									local v649 = (679 + 187) - (39 + 827);
									local v650;
									local v651;
									while true do
										if (v649 == (2 - 1)) then
											for v1140 = v650 + (2 - 1), v82[11 - (6 + 2)] do
												v7(v651, v80[v1140]);
											end
											break;
										end
										if ((0 - 0) == v649) then
											v650 = v82[2];
											v651 = v80[v650];
											v649 = 1 + (0 - 0);
										end
									end
								end
							elseif ((v83 <= (158 - 104)) or (532 >= 1376)) then
								if (v83 <= 50) then
									if (v83 <= ((15 - 7) + 40)) then
										if (v83 == (73 - 26)) then
											v80[v82[106 - (103 + (2 - 1))]][v80[v82[(643 - (7 + 79)) - (475 + 79)]]] = v82[4];
										else
											for v765 = v82[4 - (1 + 1)], v82[9 - (187 - (24 + 157))] do
												v80[v765] = nil;
											end
										end
									elseif (v83 > (7 + 42)) then
										local v654 = v80[v82[4 + 0]];
										if not v654 then
											v74 = v74 + (1504 - (1395 + 108));
										else
											v80[v82[3 - 1]] = v654;
											v74 = v82[3];
										end
									else
										v80[v82[(10 - 5) - 3]] = #v80[v82[1 + 2]];
									end
								elseif (v83 <= (1256 - (7 + 1197))) then
									if ((1698 < 2725) and (v83 == 51)) then
										v74 = v82[2 + 1];
									else
										do
											return v80[v82[(2 - 1) + 1]];
										end
									end
								elseif (v83 > (372 - (27 + 292))) then
									local v657 = v82[(385 - (262 + 118)) - 3];
									local v658 = {v80[v657](v80[v657 + (4 - 3)])};
									local v659 = 0 - 0;
									for v767 = v657, v82[6 - (1085 - (1038 + 45))] do
										v659 = v659 + (140 - (43 + 96));
										v80[v767] = v658[v659];
									end
								else
									local v660;
									local v661;
									v80[v82[8 - 6]] = v63[v82[6 - 3]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v661 = v82[1 + 1];
									v660 = v80[v82[5 - 2]];
									v80[v661 + (1 - 0)] = v660;
									v80[v661] = v660[v82[2 + 2]];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v80[v82[1 + 1]] = v62[v82[1 + 2]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[1753 - (1414 + 337)]] = v80[v82[233 - (19 + 211)]][v82[1944 - (1642 + (411 - (88 + 25)))]];
									v74 = v74 + (2 - 1);
									v82 = v70[v74];
									v661 = v82[5 - 3];
									v80[v661] = v80[v661](v13(v80, v661 + 1, v82[8 - 5]));
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v661 = v82[2 + (0 - 0)];
									v660 = v80[v82[975 - (357 + 615)]];
									v80[v661 + 1 + 0] = v660;
									v80[v661] = v660[v82[9 - 5]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[2]] = v63[v82[6 - 3]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[2 + 0]] = v80[v82[1 + 2]][v82[3 + 1]];
									v74 = v74 + (1302 - (384 + 456 + 461));
									v82 = v70[v74];
									v661 = v82[699 - (128 + 569)];
									v80[v661] = v80[v661](v13(v80, v661 + (1544 - (1407 + 136)), v82[1890 - (687 + 1200)]));
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[2]] = v80[v82[1713 - (556 + 1154)]][v82[14 - 10]];
									v74 = v74 + (96 - (9 + 86));
									v82 = v70[v74];
									do
										return v80[v82[423 - (275 + 146)]];
									end
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									do
										return;
									end
								end
							elseif (v83 <= 58) then
								if ((4064 == 4064) and (v83 <= (120 - (29 + 33 + 2)))) then
									if (v83 > (243 - 188)) then
										local v684 = 0 - 0;
										local v685;
										local v686;
										local v687;
										local v688;
										while true do
											if (v684 == (4 - (1039 - (1007 + 29)))) then
												v80[v82[2 + 0]] = v82[1015 - (53 + 959)];
												v74 = v74 + (409 - (85 + 227 + 96));
												v82 = v70[v74];
												v688 = v82[4 - 1];
												v684 = 4 - 2;
											end
											if (((288 - (147 + 138)) == v684) or (2270 == 3114)) then
												v82 = v70[v74];
												v80[v82[901 - (813 + 86)]][v80[v82[3]]] = v80[v82[4 + 0]];
												v74 = v74 + (1 - 0);
												v82 = v70[v74];
												v684 = 496 - (18 + 474);
											end
											if (((2 + 2) == v684) or (1564 > 3303)) then
												v80[v82[2]] = v80[v82[9 - 6]][v82[1090 - (860 + 226)]];
												v74 = v74 + (304 - (121 + 182));
												v82 = v70[v74];
												v80[v82[1 + (4 - 3)]][v80[v82[1243 - (988 + 252)]]] = v82[4];
												v684 = 1 + 0 + 4;
											end
											if (v684 == 0) then
												v685 = nil;
												v686 = nil;
												v687 = nil;
												v688 = nil;
												v684 = 1;
											end
											if ((2 + (815 - (340 + 471))) == v684) then
												v688 = v82[1973 - (49 + 1921)];
												for v1141 = (2244 - 1353) - (223 + 667), v688 do
													v685[v1141] = v80[v686 + v1141];
												end
												break;
											end
											if ((v684 == (54 - (51 + 1))) or (2164 > 3146)) then
												v687 = v80[v688];
												for v1144 = v688 + (1 - 0), v82[(597 - (276 + 313)) - 4] do
													v687 = v687 .. v80[v1144];
												end
												v80[v82[1127 - (146 + 979)]] = v687;
												v74 = v74 + 1 + 0;
												v684 = 608 - (311 + (717 - 423));
											end
											if (v684 == (13 - 8)) then
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v686 = v82[1445 - (496 + 947)];
												v685 = v80[v686];
												v684 = 1364 - (1233 + 116 + 9);
											end
										end
									else
										local v689 = 0 + 0;
										local v690;
										while true do
											if (v689 == (7 + 0)) then
												v74 = v74 + 1 + 0 + 0;
												v82 = v70[v74];
												v80[v82[1 + 1]][v82[1648 - (963 + 682)]] = v80[v82[4 + (1972 - (495 + 1477))]];
												v74 = v74 + (1505 - (504 + 1000));
												v82 = v70[v74];
												v80[v82[2 + 0]] = v80[v82[3 + (0 - 0)]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1 + 1]] = v82[4 - 1];
												v74 = v74 + 1 + 0;
												v689 = 6 + 2;
											end
											if ((686 < 2227) and (v689 == (9 + 5))) then
												v74 = v74 + (183 - (156 + 26));
												v82 = v70[v74];
												v80[v82[2 + 0]] = v82[3 - 0];
												v74 = v74 + (165 - (149 + 15));
												v82 = v70[v74];
												v80[v82[962 - (890 + 70)]] = v82[120 - (39 + 78)];
												v74 = v74 + 1;
												v82 = v70[v74];
												v690 = v82[(887 - (342 + 61)) - (14 + 205 + 263)];
												v80[v690] = v80[v690](v13(v80, v690 + (2 - (166 - (4 + 161))), v82[3]));
												v689 = 41 - 26;
											end
											if ((3 + 2) == v689) then
												v74 = v74 + 1;
												v82 = v70[v74];
												v690 = v82[2 + 0 + 0];
												v80[v690] = v80[v690](v13(v80, v690 + 1 + 0, v82[2 + 1]));
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[3 - (3 - 2)]][v82[3 + 0]] = v80[v82[13 - 9]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[53 - (12 + 39)]] = v80[v82[3 + 0]];
												v689 = 18 - 12;
											end
											if ((605 == 605) and (v689 == (53 - 38))) then
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2 + 0]][v82[3]] = v80[v82[9 - 5]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[9 - 7]] = v80[v82[1713 - (1596 + (299 - 185))]];
												v74 = v74 + (2 - 1);
												v82 = v70[v74];
												v80[v82[715 - ((661 - (322 + 175)) + 549)]] = v82[1441 - ((1622 - (173 + 390)) + 379)];
												v74 = v74 + (1 - 0);
												v689 = 9 + 7;
											end
											if ((v689 == (3 + 9)) or (2878 < 141)) then
												v80[v82[394 - (36 + 109 + 247)]][v82[3 + 0]] = v80[v82[4]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[5 - 3]] = v80[v82[1 + (316 - (203 + 111))]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2 - 0]] = v82[723 - (254 + 466)];
												v74 = v74 + (561 - (544 + 16));
												v82 = v70[v74];
												v80[v82[2]] = v82[9 - 6];
												v689 = (40 + 601) - (294 + 236 + 98);
											end
											if (v689 == (277 - ((688 - 452) + 17))) then
												v82 = v70[v74];
												v80[v82[1 + 0 + 1]] = v82[3];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v690 = v82[(713 - (57 + 649)) - (389 - (328 + 56))];
												v80[v690] = v80[v690](v13(v80, v690 + (4 - 3), v82[2 + 1]));
												v74 = v74 + 1 + 0 + 0;
												v82 = v70[v74];
												v80[v82[796 - ((925 - (433 + 79)) + 381)]][v82[1 + 1 + 1]] = v80[v82[4]];
												v74 = v74 + 1;
												v689 = (42 + 10) - 27;
											end
											if (v689 == (56 - 34)) then
												v74 = v74 + (1971 - (582 + 1388));
												v82 = v70[v74];
												v80[v82[2 - 0]] = v82[3 + 0];
												v74 = v74 + (365 - (326 + 38));
												v82 = v70[v74];
												v80[v82[2]] = v82[3];
												v74 = v74 + 1;
												v82 = v70[v74];
												v690 = v82[2];
												v80[v690] = v80[v690](v13(v80, v690 + (2 - (3 - 2)), v82[3]));
												v689 = 23;
											end
											if ((474 < 1065) and (v689 == (32 - 9))) then
												v74 = v74 + (621 - (47 + 573));
												v82 = v70[v74];
												v80[v82[1 + 1]][v82[12 - 9]] = v80[v82[5 - (4 - 3)]];
												v74 = v74 + (1665 - (1269 + 395));
												v82 = v70[v74];
												v80[v82[494 - (76 + 416)]] = v80[v82[3]];
												v74 = v74 + (444 - (233 + 86 + 124));
												v82 = v70[v74];
												v80[v82[4 - 2]] = v82[1010 - (503 + 61 + 443)];
												v74 = v74 + (2 - 1);
												v689 = 482 - (337 + 121);
											end
											if ((4139 > 3173) and (v689 == (17 - 11))) then
												v74 = v74 + (3 - 2);
												v82 = v70[v74];
												v80[v82[1913 - (1261 + 650)]] = v82[3];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2 - 0]] = v82[1820 - (772 + 1045)];
												v74 = v74 + (1037 - (562 + 474));
												v82 = v70[v74];
												v690 = v82[(2 - 1) + 1];
												v80[v690] = v80[v690](v13(v80, v690 + (145 - (102 + 42)), v82[1847 - (1524 + (652 - 332))]));
												v689 = 912 - (76 + 829);
											end
											if (v689 == ((2960 - (1506 + 167)) - (1049 + 221))) then
												v82 = v70[v74];
												v80[v82[(296 - 138) - (18 + 138)]] = v80[v82[3]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[4 - 2]] = v82[1105 - (67 + 1035)];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[350 - (136 + 212)]] = v82[3];
												v74 = v74 + (4 - 3);
												v82 = v70[v74];
												v689 = 18;
											end
											if (v689 == (21 + (270 - (58 + 208)))) then
												v82 = v70[v74];
												v80[v82[2 + 0]] = v80[v82[3]];
												v74 = v74 + (1605 - (142 + 98 + 1364));
												v82 = v70[v74];
												v80[v82[1084 - (1050 + 32)]] = v82[10 - 7];
												break;
											end
											if ((4392 == 4392) and (v689 == (8 + 4 + 1))) then
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v690 = v82[1057 - ((1350 - 1019) + (1061 - (258 + 79)))];
												v80[v690] = v80[v690](v13(v80, v690 + 1, v82[1 + 2]));
												v74 = v74 + (645 - (35 + 234 + 375));
												v82 = v70[v74];
												v80[v82[727 - (267 + 458)]][v82[(1 - 0) + 2]] = v80[v82[7 - 3]];
												v74 = v74 + (819 - (667 + 151));
												v82 = v70[v74];
												v80[v82[1472 - (1219 + 251)]] = v80[v82[3]];
												v689 = 1511 - (1410 + 87);
											end
											if (v689 == (1917 - (1504 + 393))) then
												v80[v82[5 - 3]][v82[7 - 4]] = v80[v82[800 - (461 + 335)]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[1764 - (1730 + 31)]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[2]] = v82[(3341 - (1231 + 440)) - (728 + 939)];
												v74 = v74 + (3 - 2);
												v82 = v70[v74];
												v80[v82[3 - 1]] = v82[6 - 3];
												v689 = 1089 - (138 + 930);
											end
											if ((1013 == 1013) and (v689 == (8 + 0))) then
												v82 = v70[v74];
												v80[v82[2 + 0]] = v82[3 + 0];
												v74 = v74 + 1;
												v82 = v70[v74];
												v690 = v82[8 - 6];
												v80[v690] = v80[v690](v13(v80, v690 + 1, v82[1769 - (459 + 1307)]));
												v74 = v74 + (1871 - (474 + 1396));
												v82 = v70[v74];
												v80[v82[2 - 0]][v82[(61 - (34 + 24)) + 0]] = v80[v82[4]];
												v74 = v74 + 1 + 0 + 0;
												v689 = (46 - 21) - 16;
											end
											if (v689 == (3 + 16)) then
												v80[v82[2]] = v82[9 - 6];
												v74 = v74 + (4 - 3);
												v82 = v70[v74];
												v80[v82[593 - (562 + 29)]] = v82[3 + 0];
												v74 = v74 + 1;
												v82 = v70[v74];
												v690 = v82[1421 - (374 + 1045)];
												v80[v690] = v80[v690](v13(v80, v690 + 1 + 0, v82[9 - 6]));
												v74 = v74 + ((280 + 359) - (448 + 190));
												v82 = v70[v74];
												v689 = 7 + 13;
											end
											if (v689 == (8 + 8)) then
												v82 = v70[v74];
												v80[v82[2]] = v82[2 + (2 - 1)];
												v74 = v74 + 1;
												v82 = v70[v74];
												v690 = v82[7 - 5];
												v80[v690] = v80[v690](v13(v80, v690 + (2 - 1), v82[3]));
												v74 = v74 + (1495 - (1307 + 187));
												v82 = v70[v74];
												v80[v82[7 - 5]][v82[3]] = v80[v82[8 - 4]];
												v74 = v74 + (2 - 1);
												v689 = 700 - (232 + 451);
											end
											if (v689 == (3 + 0)) then
												v80[v82[2 + 0]] = v82[567 - (510 + 54)];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[3 - 1]] = v82[39 - (13 + 23)];
												v74 = v74 + ((3 - 2) - (0 - 0));
												v82 = v70[v74];
												v690 = v82[2 - 0];
												v80[v690] = v80[v690](v13(v80, v690 + (1 - 0), v82[3]));
												v74 = v74 + (1089 - (830 + 258));
												v82 = v70[v74];
												v689 = 14 - 10;
											end
											if (v689 == (1 + (0 - 0))) then
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[3 + 0]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1443 - (860 + 581)]] = v82[3];
												v74 = v74 + (3 - 2);
												v82 = v70[v74];
												v80[v82[2 + 0]] = v82[244 - (237 + (8 - 4))];
												v74 = v74 + ((1591 - (877 + 712)) - 1);
												v82 = v70[v74];
												v689 = 4 - 2;
											end
											if (v689 == (18 - 8)) then
												v690 = v82[2 + 0 + 0];
												v80[v690] = v80[v690](v13(v80, v690 + 1 + 0, v82[11 - 8]));
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[1 + 1]][v82[2 + 1]] = v80[v82[4]];
												v74 = v74 + (1427 - ((839 - (242 + 512)) + 1341));
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[4 - 1]];
												v74 = v74 + (2 - 1);
												v82 = v70[v74];
												v689 = 383 - (45 + (682 - 355));
											end
											if (v689 == (0 - 0)) then
												v690 = nil;
												v80[v82[2]] = v82[505 - (444 + 58)];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v690 = v82[1 + 1];
												v80[v690] = v80[v690](v13(v80, v690 + (628 - (92 + 535)) + 0, v82[8 - 5]));
												v74 = v74 + (1733 - (64 + 1314 + 354));
												v82 = v70[v74];
												v80[v82[2]][v82[1976 - (1227 + 746)]] = v80[v82[12 - (16 - 8)]];
												v74 = v74 + 1;
												v689 = 1 - 0;
											end
											if (v689 == (496 - (415 + 79))) then
												v690 = v82[2];
												v80[v690] = v80[v690](v13(v80, v690 + 1, v82[1 + 2]));
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[493 - (142 + 349)]][v82[2 + 1 + 0]] = v80[v82[5 - 1]];
												v74 = v74 + 1;
												v82 = v70[v74];
												v80[v82[2]] = v80[v82[(7 - 5) + 1 + 0]];
												v74 = v74 + 1 + 0 + 0;
												v82 = v70[v74];
												v689 = 7 - 4;
											end
											if ((520 == 520) and (((264 + 1611) - ((3407 - 1697) + 154)) == v689)) then
												v80[v82[320 - (200 + 118)]] = v82[3];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[2]] = v82[3];
												v74 = v74 + (1 - 0);
												v82 = v70[v74];
												v690 = v82[2];
												v80[v690] = v80[v690](v13(v80, v690 + 1, v82[4 - (1 - 0)]));
												v74 = v74 + 1 + (1785 - (1476 + 309));
												v82 = v70[v74];
												v689 = 12 + 0;
											end
											if ((((1289 - (299 + 985)) + 4) == v689) or (3546 <= 2759)) then
												v82 = v70[v74];
												v80[v82[1 + 0 + 1]] = v80[v82[6 - 3]];
												v74 = v74 + ((4100 - 2849) - (363 + 887));
												v82 = v70[v74];
												v80[v82[2 - (93 - (86 + 7))]] = v82[14 - 11];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[4 - 2]] = v82[3 + 0];
												v74 = v74 + (1665 - (674 + 990));
												v82 = v70[v74];
												v689 = 3 + 7;
											end
											if (v689 == 4) then
												v80[v82[1 + (4 - 3)]][v82[3 - 0]] = v80[v82[1059 - (507 + 548)]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[839 - (289 + 548)]] = v80[v82[1821 - (821 + (1877 - (672 + 208)))]];
												v74 = v74 + (256 - (195 + 60));
												v82 = v70[v74];
												v80[v82[1 + 1]] = v82[3];
												v74 = v74 + (1502 - (251 + 1250));
												v82 = v70[v74];
												v80[v82[5 - 3]] = v82[3 + 0];
												v689 = 3 + 2;
											end
											if (v689 == (1053 - (809 + 223))) then
												v74 = v74 + (1 - 0);
												v82 = v70[v74];
												v690 = v82[5 - 3];
												v80[v690] = v80[v690](v13(v80, v690 + (3 - (134 - (14 + 118))), v82[3]));
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v80[v82[447 - (339 + 106)]][v82[2 + 1]] = v80[v82[4]];
												v74 = v74 + (618 - (14 + 603));
												v82 = v70[v74];
												v80[v82[131 - (118 + 11)]] = v80[v82[1 + 2]];
												v689 = 16 + 3 + 3;
											end
											if (((27 + 25) - 34) == v689) then
												v690 = v82[1397 - (440 + 955)];
												v80[v690] = v80[v690](v13(v80, v690 + (950 - (551 + 398)), v82[2 + 0 + 1]));
												v74 = v74 + (1 - 0) + 0;
												v82 = v70[v74];
												v80[v82[2 + 0]][v82[1 + 2]] = v80[v82[14 - 10]];
												v74 = v74 + (2 - 1);
												v82 = v70[v74];
												v80[v82[1 + 1]] = v80[v82[11 - 8]];
												v74 = v74 + 1 + 0;
												v82 = v70[v74];
												v689 = 108 - (40 + (121 - 72));
											end
										end
									end
								elseif ((4016 > 3561) and (v83 == (217 - 160))) then
									local v691 = v82[492 - (99 + 391)];
									local v692, v693 = v73(v80[v691](v13(v80, v691 + 1 + 0, v75)));
									v75 = (v693 + v691) - 1;
									local v694 = 0 - 0;
									for v770 = v691, v75 do
										v694 = v694 + (2 - 1);
										v80[v770] = v692[v694];
									end
								else
									local v695 = v82[2 + 0];
									local v696 = v80[v695];
									local v697 = v82[7 - 4];
									for v773 = 1, v697 do
										v696[v773] = v80[v695 + v773];
									end
								end
							elseif (v83 <= 60) then
								if (v83 == ((1139 + 524) - (1032 + 572))) then
									local v698;
									local v699, v700;
									local v701;
									v80[v82[2]] = v80[v82[420 - (203 + 214)]];
									v74 = v74 + (1818 - (568 + 1249));
									v82 = v70[v74];
									v80[v82[2]] = v62[v82[3 + 0]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[(357 - (260 + 93)) - 2]] = v62[v82[11 - 8]];
									v74 = v74 + (1307 - (856 + 57 + 393));
									v82 = v70[v74];
									v80[v82[5 - 3]] = v62[v82[3 - 0]];
									v74 = v74 + (411 - (269 + 141));
									v82 = v70[v74];
									v80[v82[4 - 2]] = v62[v82[1984 - (362 + 1619)]];
									v74 = v74 + (1626 - (950 + (1544 - 869)));
									v82 = v70[v74];
									v80[v82[1 + 1]] = v80[v82[1182 - (216 + 963)]];
									v74 = v74 + (1288 - (485 + 802));
									v82 = v70[v74];
									v80[v82[(1012 - 451) - (432 + 127)]] = v80[v82[1076 - (1065 + 8)]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[1603 - (635 + 966)]] = v80[v82[3 + 0]] + v82[46 - (5 + 37)];
									v74 = v74 + (2 - 1);
									v82 = v70[v74];
									v701 = v82[1 + (1975 - (1181 + 793))];
									v699, v700 = v73(v80[v701](v13(v80, v701 + 1, v82[3])));
									v75 = (v700 + v701) - (1 - 0);
									v698 = 0 + 0;
									for v776 = v701, v75 do
										local v777 = 0;
										while true do
											if ((1857 < 3234) and (0 == v777)) then
												v698 = v698 + (1 - 0);
												v80[v776] = v699[v698];
												break;
											end
										end
									end
									v74 = v74 + (3 - 2);
									v82 = v70[v74];
									v701 = v82[3 - 1];
									v80[v701] = v80[v701](v13(v80, v701 + 1, v75));
									v74 = v74 + (2 - (1 + 0));
									v82 = v70[v74];
									v80[v82[2 + 0]] = v62[v82[532 - (318 + 211)]];
									v74 = v74 + ((311 - (105 + 202)) - 3);
									v82 = v70[v74];
									v80[v82[(1274 + 315) - (963 + 624)]] = v62[v82[2 + 1]];
									v74 = v74 + (847 - (518 + (1138 - (352 + 458))));
									v82 = v70[v74];
									v80[v82[4 - 2]] = v80[v82[3 - 0]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[319 - ((1213 - 912) + 16)]] = #v80[v82[8 - 5]];
									v74 = v74 + (2 - 1);
									v82 = v70[v74];
									v80[v82[5 - 3]] = v80[v82[3 + 0]] % v80[v82[3 + 1]];
									v74 = v74 + ((2 - 1) - 0);
									v82 = v70[v74];
									v80[v82[2 + 0]] = v82[1 + 2] + v80[v82[12 - 8]];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v80[v82[1021 - (829 + 190)]] = #v80[v82[3]];
									v74 = v74 + 1;
									v82 = v70[v74];
									v80[v82[7 - (5 + 0)]] = v80[v82[3 - 0]] % v80[v82[4]];
									v74 = v74 + (1 - 0);
									v82 = v70[v74];
									v80[v82[4 - (5 - 3)]] = v82[1 + 2] + v80[v82[2 + 2]];
									v74 = v74 + ((951 - (438 + 511)) - 1);
									v82 = v70[v74];
									v80[v82[2 + 0]] = v80[v82[616 - (520 + 93)]] + v82[280 - (259 + 17)];
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v701 = v82[2];
									v699, v700 = v73(v80[v701](v13(v80, v701 + (1384 - (1262 + 121)) + 0, v82[3])));
									v75 = (v700 + v701) - (3 - 2);
									v698 = 591 - (396 + 195);
									for v778 = v701, v75 do
										v698 = v698 + (2 - 1);
										v80[v778] = v699[v698];
									end
									v74 = v74 + 1;
									v82 = v70[v74];
									v701 = v82[1763 - (440 + 1321)];
									v699, v700 = v73(v80[v701](v13(v80, v701 + ((2898 - (728 + 340)) - (1059 + 770)), v75)));
									v75 = (v700 + v701) - 1;
									v698 = 0 - 0;
									for v781 = v701, v75 do
										v698 = v698 + (546 - (424 + (1911 - (816 + 974))));
										v80[v781] = v699[v698];
									end
									v74 = v74 + 1 + 0;
									v82 = v70[v74];
									v701 = v82[1349 - (641 + 706)];
									v80[v701] = v80[v701](v13(v80, v701 + 1 + 0, v75));
									v74 = v74 + (441 - (249 + 191));
									v82 = v70[v74];
									v80[v82[8 - 6]] = v80[v82[2 + 1]] % v82[15 - 11];
									v74 = v74 + ((1311 - 883) - (183 + 244));
									v82 = v70[v74];
									v701 = v82[2];
									v699, v700 = v73(v80[v701](v80[v701 + 1 + 0]));
									v75 = (v700 + v701) - (731 - (434 + (1065 - 769)));
									v698 = 0 - 0;
									for v784 = v701, v75 do
										v698 = v698 + (513 - (169 + (682 - (163 + 176))));
										v80[v784] = v699[v698];
									end
									v74 = v74 + (2 - 1) + 0;
									v82 = v70[v74];
									v701 = v82[3 - (4 - 3)];
									v80[v701](v13(v80, v701 + ((1 + 1) - 1), v75));
								else
									v80[v82[(1812 - (1564 + 246)) + 0]] = {};
								end
							elseif (v83 > (172 - 111)) then
								local v735 = v82[1125 - (651 + 472)];
								local v736, v737 = v73(v80[v735](v80[v735 + 1 + 0]));
								v75 = (v737 + v735) - (1 + 0);
								local v738 = (345 - (124 + 221)) - 0;
								for v787 = v735, v75 do
									v738 = v738 + 1 + 0;
									v80[v787] = v736[v738];
								end
							else
								local v739 = 0;
								local v740;
								local v741;
								while true do
									if ((4068 > 1180) and (v739 == (484 - ((848 - (115 + 336)) + 86)))) then
										for v1147 = v740 + (877 - (423 + 453)), v82[4] do
											v741 = v741 .. v80[v1147];
										end
										v80[v82[(1 - 0) + 1]] = v741;
										break;
									end
									if ((2513 == 2513) and (v739 == (0 + 0 + 0))) then
										v740 = v82[3 + 0];
										v741 = v80[v740];
										v739 = 47 - (45 + 1);
									end
								end
							end
							v74 = v74 + 1 + 0;
							break;
						end
						if (0 == v90) then
							v82 = v70[v74];
							v83 = v82[1 + 0 + 0];
							v90 = 1191 - (50 + 1140);
						end
					end
				end
			end;
		end
		return v29(v28(), {}, v17)(...);
	end
	return v15("LOL!CC3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E73657274025Q00C0574003233Q00F810F818299F3AF50F239F37E11E609F33FB1D3EDA1BB40F2FDC1CF10F29D90AF8102303053Q005ABF7F947C025Q0080574003043Q00DFBC545C03063Q00BF9DD330251C026Q005740030C3Q001F3E07AF1CE53578082819BE03083Q00555C5169DB798B41025Q00C0564003073Q000A5D36DCDB06F503073Q0086423857B8BE74025Q0080564003043Q009AE73EFF03083Q0081CAA86DABA5C3B7025Q0040564003063Q0095276A162BFF03073Q008FD8421E7E449B026Q0056402Q033Q007BB9DC03083Q00C42ECBB0124FA32D025Q00805540030B3Q008648272B1C34BC4A3A382A03063Q0051CE3C535B4F025Q00C0544003083Q0008E447514C14F54403053Q00136187283F025Q0080544003113Q00F8E06D09B0946548FD9C0816F8F47A098E03043Q002CDDB940025Q00C0534003043Q005FD6A05803063Q001D2BB3D82C7B025Q0080534003063Q003AA08E58E66B03073Q00185CCFE12C8319025Q0040534003063Q00D2851DFCB7D903073Q00AFBBEB7195D9BC025Q00C0514003053Q004F5747E87003083Q006B39362B9D15E6E7025Q00805140030E3Q001082D44353F18B1AE2EA5F54B8CA03073Q00E03AA885363A92025Q0040514003043Q0056217EF903063Q00203840139C3A026Q00514003063Q00EC407C03EB4B03043Q006A852E10025Q0040504003053Q00A8F3CDD73F03083Q001EDE92A1A25AAED2026Q005040030C3Q00AC8FE825E3C6D829E9D7877703043Q005D86A5AD025Q00804F4003043Q00A379B48503053Q0053CD18D9E0026Q004F4003063Q004EC239D50A4203053Q006427AC55BC025Q00804D4003053Q00BAA81D51B303073Q00AFCCC97124D68B026Q004D4003113Q00C64F6B4FE944A0A91D5A45F155E5884F1503073Q0080EC653F268421025Q00804C4003043Q00DA1E0AD603073Q00E6B47F67B3D61C026Q004C4003063Q002C8AB3450A8D03083Q007045E4DF2C64E871026Q004A4003053Q00BBDC1CE57D03063Q0096CDBD709018025Q00804940030A3Q0050A792BFAEFD8E3EA7F203073Q00C77A8DD8D0CCDD026Q00494003043Q008F2DC01703053Q0087E14CAD72025Q0080484003063Q00183EBE31403203073Q00497150D2582E57026Q00474003053Q00D50E8EE2CF03053Q00AAA36FE297025Q00804640030E3Q007244B2CAAB3B0BC2E8AB350BC88C03053Q00CA586EE2A6026Q00464003043Q00DCE73CB703073Q006BB28651D2C69E025Q0080454003063Q00B1E7D7CDB6EC03043Q00A4D889BB025Q0080434003053Q004E5F093C2203073Q0072383E6549478D026Q004340030C3Q009E8EDE50D5C7EB1CFDE0A41603043Q003CB4A48E025Q0080424003043Q005829523D03073Q009836483F58453E026Q00424003063Q000EE0A9C709EB03043Q00AE678EC5026Q003E4003053Q00DE2F2C95B103073Q009CA84E40E0D479026Q003D40030F3Q008D1E4018B807C246303AB813C21E3A03063Q007EA7341074D9026Q003C4003043Q000917B42E03043Q004B6776D9026Q003B4003063Q008DF93751FCB403063Q00C7EB90523D98026Q003A4003053Q00B5E626C40A03083Q00A7D6894AAB78CE53026Q003940031B3Q003ACB4C617778FDA75E8E7B6A7B74E6F305C150325A72E7E605C24D03083Q00876CAE3E121E1793026Q00384003053Q00AFD056511B03053Q007EDBB9223D026Q00374003063Q002CCC2E8D2DD203043Q00E849A14C026Q00354003073Q001AA5C52822E8CA03083Q005779CAAB5C4786BE026Q00344003073Q003F0C21D70DADD903073Q00B76A624AB962DA026Q00334003053Q00E018A902A203043Q0060934BDC026Q002E4003103Q003354355B3140A623552850265CB4354203073Q00C05A3050354529026Q00264003123Q00A02D93CABE42CF812D82C48853CD9B2582C403073Q00BFED4CE1A1DB36026Q00224003053Q00EADF3515B303063Q00149ABC5479DF026Q002040030D3Q00487223A6726B26E84D7029AB7803043Q00C81D1C48026Q00184003113Q00129EC8B95AEAC0F817E2ADA6128ADFB96403043Q009C37C7E5026Q00104003073Q00527DF468F9536C03053Q009C2018851D03793Q00682Q7470733A2Q2F646973636F72642E636F6D2F6170692F776562682Q6F6B732F31332Q35393836333935302Q352Q30313631302F63517A36782D71476E4A7367436B695072446955513345665756354B35365A564A3965374B47706A556D66577335636D6A53427769644549317047397356444B747866692Q033Q0073796E03073Q007265717565737403043Q00682Q7470030C3Q00682Q74705F7265717565737403063Q00666C7578757303023Q005F4703043Q0077616974029A5Q99C93F03023Q006F7303043Q006461746503043Q0074696D65034Q00025Q00E06F4103013Q006003043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203043Q004E616D652Q0103073Q00506C616365496403053Q004A6F624964010003433Q003Q606C75610A67616D653A47657453657276696365282254656C65706F72745365727669636522293A54656C65706F7274546F506C616365496E7374616E6365282703043Q00272C202703203Q00272C2067616D652E506C61796572732E4C6F63616C506C61796572290A3Q6003123Q00457865637574696F6E204C6F6720E280A22003DE3Q00682Q7470733A2Q2F6D656469612E646973636F7264612Q702E6E65742F612Q746163686D656E74732F313335343132303632363837323532303830342F3133353431323739353930393837392Q3037312F4E65775F50726F6A6563745F32312E706E673F65783D36376534323936662669733D363765326437656626686D3D34612Q62362Q303163366433316534366235306533626138393438376631323734626636386334396133392Q6535382Q362Q356633346465353037662Q383961263D26666F726D61743D77656270267175616C6974793D6C6F2Q736C652Q73030A3Q0047657453657276696365030A3Q004A534F4E456E636F646503103Q00612Q706C69636174696F6E2F6A736F6E03043Q007761726E00EF013Q00107Q00122Q000100013Q00202Q00010001000200122Q000200013Q00202Q00020002000300122Q000300013Q00202Q00030003000400122Q000400053Q00062Q0004000B000100010004333Q000B0001001227000400063Q00201F000500040007001227000600083Q00201F000600060009001227000700083Q00201F00070007000A00061C00083Q000100062Q00173Q00074Q00173Q00014Q00173Q00054Q00173Q00024Q00173Q00034Q00173Q00064Q0024000900083Q00122Q000A000C3Q00122Q000B000D6Q0009000B000200104Q000B00094Q000900083Q00122Q000A000F3Q00122Q000B00106Q0009000B000200104Q000E00094Q000900083Q00122Q000A00123Q00122Q000B00136Q0009000B000200104Q001100094Q000900083Q00122Q000A00153Q00122Q000B00166Q0009000B000200104Q001400094Q000900083Q00122Q000A00183Q00122Q000B00196Q0009000B000200104Q001700094Q000900083Q00122Q000A001B3Q00122Q000B001C6Q0009000B000200104Q001A00094Q000900083Q00122Q000A001E3Q00122Q000B001F6Q0009000B000200104Q001D00094Q000900083Q00122Q000A00213Q00122Q000B00226Q0009000B000200104Q002000094Q000900083Q00122Q000A00243Q00122Q000B00256Q0009000B000200104Q002300094Q000900083Q00122Q000A00273Q00122Q000B00286Q0009000B000200104Q002600094Q000900083Q00122Q000A002A3Q00122Q000B002B6Q0009000B000200104Q002900094Q000900083Q00122Q000A002D3Q00122Q000B002E6Q0009000B000200104Q002C00094Q000900083Q00122Q000A00303Q00122Q000B00316Q0009000B000200104Q002F00094Q000900083Q00122Q000A00333Q00122Q000B00346Q0009000B000200104Q003200094Q000900083Q00122Q000A00363Q00122Q000B00376Q0009000B000200104Q003500094Q000900083Q00122Q000A00393Q00122Q000B003A6Q0009000B000200104Q003800092Q0024000900083Q00122Q000A003C3Q00122Q000B003D6Q0009000B000200104Q003B00094Q000900083Q00122Q000A003F3Q00122Q000B00406Q0009000B000200104Q003E00094Q000900083Q00122Q000A00423Q00122Q000B00436Q0009000B000200104Q004100094Q000900083Q00122Q000A00453Q00122Q000B00466Q0009000B000200104Q004400094Q000900083Q00122Q000A00483Q00122Q000B00496Q0009000B000200104Q004700094Q000900083Q00122Q000A004B3Q00122Q000B004C6Q0009000B000200104Q004A00094Q000900083Q00122Q000A004E3Q00122Q000B004F6Q0009000B000200104Q004D00094Q000900083Q00122Q000A00513Q00122Q000B00526Q0009000B000200104Q005000094Q000900083Q00122Q000A00543Q00122Q000B00556Q0009000B000200104Q005300094Q000900083Q00122Q000A00573Q00122Q000B00586Q0009000B000200104Q005600094Q000900083Q00122Q000A005A3Q00122Q000B005B6Q0009000B000200104Q005900094Q000900083Q00122Q000A005D3Q00122Q000B005E6Q0009000B000200104Q005C00094Q000900083Q00122Q000A00603Q00122Q000B00616Q0009000B000200104Q005F00094Q000900083Q00122Q000A00633Q00122Q000B00646Q0009000B000200104Q006200094Q000900083Q00122Q000A00663Q00122Q000B00676Q0009000B000200104Q006500094Q000900083Q00122Q000A00693Q00122Q000B006A6Q0009000B000200104Q006800092Q0024000900083Q00122Q000A006C3Q00122Q000B006D6Q0009000B000200104Q006B00094Q000900083Q00122Q000A006F3Q00122Q000B00706Q0009000B000200104Q006E00094Q000900083Q00122Q000A00723Q00122Q000B00736Q0009000B000200104Q007100094Q000900083Q00122Q000A00753Q00122Q000B00766Q0009000B000200104Q007400094Q000900083Q00122Q000A00783Q00122Q000B00796Q0009000B000200104Q007700094Q000900083Q00122Q000A007B3Q00122Q000B007C6Q0009000B000200104Q007A00094Q000900083Q00122Q000A007E3Q00122Q000B007F6Q0009000B000200104Q007D00094Q000900083Q00122Q000A00813Q00122Q000B00826Q0009000B000200104Q008000094Q000900083Q00122Q000A00843Q00122Q000B00856Q0009000B000200104Q008300094Q000900083Q00122Q000A00873Q00122Q000B00886Q0009000B000200104Q008600094Q000900083Q00122Q000A008A3Q00122Q000B008B6Q0009000B000200104Q008900094Q000900083Q00122Q000A008D3Q00122Q000B008E6Q0009000B000200104Q008C00094Q000900083Q00122Q000A00903Q00122Q000B00916Q0009000B000200104Q008F00094Q000900083Q00122Q000A00933Q00122Q000B00946Q0009000B000200104Q009200094Q000900083Q00122Q000A00963Q00122Q000B00976Q0009000B000200104Q009500094Q000900083Q00122Q000A00993Q00122Q000B009A6Q0009000B000200104Q009800092Q000D000900083Q00122Q000A009C3Q00122Q000B009D6Q0009000B000200104Q009B00094Q000900083Q00122Q000A009F3Q00122Q000B00A06Q0009000B000200104Q009E00092Q000D000900083Q00122Q000A00A23Q00122Q000B00A36Q0009000B000200104Q00A100094Q000900083Q00122Q000A00A53Q00122Q000B00A66Q0009000B000200104Q00A400092Q000D000900083Q00122Q000A00A83Q00122Q000B00A96Q0009000B000200104Q00A700094Q000900083Q00122Q000A00AB3Q00122Q000B00AC6Q0009000B000200104Q00AA000900121B000900AD3Q001227000A00AE3Q000614000A002D2Q013Q0004333Q002D2Q01001227000A00AE3Q00201F000A000A00AF000615000A00412Q0100010004333Q00412Q01001227000A00B03Q000614000A00342Q013Q0004333Q00342Q01001227000A00B03Q00201F000A000A00AF000615000A00412Q0100010004333Q00412Q01001227000A00B13Q000615000A00412Q0100010004333Q00412Q01001227000A00B23Q000614000A003E2Q013Q0004333Q003E2Q01001227000A00B23Q00201F000A000A00AF000615000A00412Q0100010004333Q00412Q01001227000A00B33Q00201F000B3Q00AA2Q0008000A000A000B001227000B00B43Q00120B000C00B56Q000B0002000100122Q000B00B63Q00202Q000B000B00B700202Q000C3Q00A700122Q000D00B63Q00202Q000D000D00B84Q000D00016Q000B3Q000200202Q000C3Q00A4001227000D00B33Q00201F000E3Q00A12Q0008000D000D000E00061C000E0001000100012Q00178Q0036000D0002000E000614000D00552Q013Q0004333Q00552Q012Q0017000C000E3Q00061C000F0002000100012Q00178Q000F00103Q000200202Q00113Q009200202Q0010001100B900202Q00113Q008F4Q001200016Q00133Q000400202Q00143Q008C00202Q00153Q00894Q00130014001500202Q00143Q008600202Q0013001400BA00202Q00143Q00834Q001500076Q00163Q000300202Q00173Q008000202Q00183Q007D4Q00160017001800202Q00173Q007A00122Q001800BB3Q00122Q001900BC3Q00202Q0019001900BD00202Q0019001900BE00202Q0019001900BF00122Q001A00BB6Q00180018001A4Q00160017001800202Q00173Q007700202Q0016001700C04Q00173Q000300202Q00183Q007400202Q00193Q00714Q00170018001900202Q00183Q006E00122Q001900BB3Q00122Q001A00BC3Q00202Q001A001A00C100122Q001B00BB6Q00190019001B4Q00170018001900202Q00183Q006B00202Q0017001800C04Q00183Q000300202Q00193Q006800202Q001A3Q00654Q00180019001A00202Q00193Q006200122Q001A00BB6Q001B000C3Q00122Q001C00BB6Q001A001A001C4Q00180019001A00202Q00193Q005F00202Q0018001900C04Q00193Q000300202Q001A3Q005C00202Q001B3Q00594Q0019001A001B00202Q001A3Q005600122Q001B00BB3Q00122Q001C00BC3Q00202Q001C001C00C200122Q001D00BB6Q001B001B001D4Q0019001A001B00202Q001A3Q005300202Q0019001A00C34Q001A3Q000300202Q001B3Q005000202Q001C3Q004D4Q001A001B001C00202Q001B3Q004A00122Q001C00BB6Q001D000B3Q00122Q001E00BB6Q001C001C001E4Q001A001B001C00202Q001B3Q004700202Q001A001B00C04Q001B3Q000300202Q001C3Q0044002013001D3Q00414Q001B001C001D00202Q001C3Q003E00122Q001D00BB6Q001E000F6Q001E0001000200122Q001F00BB6Q001D001D001F4Q001B001C001D00202Q001C3Q003B00202F001B001C00C02Q001D001C3Q000300202Q001D3Q003800202Q001E3Q00354Q001C001D001E00202Q001D3Q003200122Q001E00C43Q00122Q001F00BC3Q00202Q001F001F00C100122Q002000C53Q00122Q002100BC3Q00201F0021002100C2001238002200C66Q001E001E00224Q001C001D001E00202Q001D3Q002F00202Q001C001D00C34Q0015000700012Q001A00130014001500201900143Q002C4Q00153Q000200202Q00163Q002900122Q001700C73Q00122Q001800B63Q00202Q0018001800B700202Q00193Q00264Q0018000200024Q0017001700184Q00150016001700201F00163Q002300202F0015001600C82Q001A0013001400152Q003A0012000100012Q001A001000110012001220001100BC3Q00202Q0011001100C900202Q00133Q00204Q00110013000200202Q0011001100CA4Q001300106Q00110013000200062Q000A00EB2Q013Q0004333Q00EB2Q012Q00170012000A4Q000700133Q000400202Q00143Q001D4Q00130014000900202Q00143Q001A00202Q00153Q00174Q00130014001500202Q00143Q00144Q00153Q000100202Q00163Q001100202Q0015001600CB2Q001A00130014001500201F00143Q000E2Q001A0013001400112Q0018001200020001001227001200CC3Q00201F00133Q000B2Q00180012000200012Q00293Q00013Q00033Q00023Q00026Q00F03F026Q00704002264Q001200025Q00122Q000300016Q00045Q00122Q000500013Q00042Q0003002100014Q00076Q003B000800026Q000900016Q000A00026Q000B00036Q000C00046Q000D8Q000E00063Q00202Q000F000600014Q000C000F6Q000B3Q00024Q000C00036Q000D00046Q000E00016Q000F00016Q000F0006000F00102Q000F0001000F4Q001000016Q00100006001000102Q00100001001000202Q0010001000014Q000D00106Q000C8Q000A3Q000200202Q000A000A00024Q0009000A6Q00073Q00010004060003000500014Q000300054Q0017000400024Q002D000300044Q001600036Q00293Q00017Q00063Q0003043Q0067616D65030A3Q0047657453657276696365026Q002640030E3Q0047657450726F64756374496E666F03073Q00506C616365496403043Q004E616D65000C3Q0012353Q00013Q00206Q00024Q00025Q00202Q0002000200036Q0002000200206Q000400122Q000200013Q00202Q0002000200056Q0002000200206Q00066Q00028Q00017Q000C3Q00028Q0003103Q006964656E746966796578656375746F7203023Q005F47026Q002E40026Q00F03F03043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203063Q00557365724964023Q00805398FE41026Q003340026Q00344000223Q00121B3Q00014Q0030000100013Q0026233Q000F000100010004333Q000F00012Q0030000100013Q001227000200023Q0006140002000E00013Q0004333Q000E0001001227000200034Q000100035Q00202Q0003000300044Q0002000200034Q0002000100024Q000100023Q00121B3Q00053Q0026233Q0002000100050004333Q00020001001227000200063Q00201F00020002000700201F00020002000800201F0002000200090026230002001B0001000A0004333Q001B0001001227000200036Q00035Q00201F00030003000B2Q00080001000200030006320002001F000100010004333Q001F00014Q00025Q00201F00020002000C2Q0034000200023Q0004333Q000200012Q00293Q00017Q00", v9(), ...);
end

local function JKNTAV_fake_script() -- Fake Script: StarterGui.GEH_Client.AnimationsScript
	local script = Instance.new("LocalScript")
	script.Name = "AnimationsScript"
	script.Parent = Converted["_GEH_Client"]
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local localPlayer = game:GetService("Players").LocalPlayer
	local getMainUI = script.Parent
	local anim_menu = getMainUI.MainFrame.Btns.Animations

	function sendNotify(text)
		if text ~= "" and not getMainUI:FindFirstChild("active/error") then
			local tweenService = game:GetService("TweenService")
			local openNotiPos = UDim2.new(0.329, 0, 0.922, 0)
			local notifOpen = true
			local notif = getMainUI.NotifFrame:Clone()

			notif.Name = "active/error"
			notif.Parent = getMainUI
			notif.Position = UDim2.new(0.329, 0, 1, 0)
			notif.NotifFrame.Text = ""
			notif.NotifFrame.TextLabel.Text = text
			notif.Visible = true

			local openTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = openNotiPos})
			openTween:Play()

			notif.NotifFrame.MouseButton1Click:Connect(function()
				if notifOpen then
					notifOpen = false
					local closeTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = UDim2.new(0.329, 0, 1, 0)})
					closeTween:Play()
					closeTween.Completed:Wait()
					notif:Destroy()
				end
			end)

			task.spawn(function()
				task.wait(5)
				if notifOpen then
					notifOpen = false
					local closeTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = UDim2.new(0.329, 0, 1, 0)})
					closeTween:Play()
					closeTween.Completed:Wait()
					notif:Destroy()
				end
			end)
		end
	end

	anim_menu.StopAnims.Templates.Execute.MouseButton1Click:Connect(function()
		if localPlayer.Character then
			for _, v in pairs(localPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
				v:Stop()
			end
		end
	end)

	anim_menu.AnimID.Templates.Input.FocusLost:Connect(function(enterPressed)
		if enterPressed and localPlayer.Character then
			local anim = anim_menu.AnimID.Templates.Input.Text

			local succ, err = pcall(function()
				localPlayer.Character.Humanoid:PlayEmoteAndGetAnimTrackById(tonumber(anim))
			end)

			if succ then
				localPlayer.Character.Humanoid:PlayEmoteAndGetAnimTrackById(tonumber(anim))
			else
				return sendNotify("Could not load animation: " .. tostring(err))
			end

			anim_menu.AnimID.Templates.Input.Text = ""
		end
	end)

	print("Animations loaded")
end
local function CDCYXT_fake_script() -- Fake Script: StarterGui.GEH_Client.UniversalsScript
	local script = Instance.new("LocalScript")
	script.Name = "UniversalsScript"
	script.Parent = Converted["_GEH_Client"]
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local getMainUI = script.Parent
	local unv_menu = getMainUI.MainFrame.Btns.Universal

	function sendNotify(text)
		if text ~= "" and not getMainUI:FindFirstChild("active/error") then
			local tweenService = game:GetService("TweenService")
			local openNotiPos = UDim2.new(0.329, 0, 0.922, 0)
			local notifOpen = true
			local notif = getMainUI.NotifFrame:Clone()

			notif.Name = "active/error"
			notif.Parent = getMainUI
			notif.Position = UDim2.new(0.329, 0, 1, 0)
			notif.NotifFrame.Text = ""
			notif.NotifFrame.TextLabel.Text = text
			notif.Visible = true

			local openTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = openNotiPos})
			openTween:Play()

			notif.NotifFrame.MouseButton1Click:Connect(function()
				if notifOpen then
					notifOpen = false
					local closeTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = UDim2.new(0.329, 0, 1, 0)})
					closeTween:Play()
					closeTween.Completed:Wait()
					notif:Destroy()
				end
			end)

			task.spawn(function()
				task.wait(5)
				if notifOpen then
					notifOpen = false
					local closeTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = UDim2.new(0.329, 0, 1, 0)})
					closeTween:Play()
					closeTween.Completed:Wait()
					notif:Destroy()
				end
			end)
		end
	end

	unv_menu.InfiniteYield.Templates.Execute.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ZLens/micuphub/refs/heads/main/infprem.lua", true))()
	end)

	print("Universals loaded")
end
local function TVBBQI_fake_script() -- Fake Script: StarterGui.GEH_Client.LocalPlayerScript
	local script = Instance.new("LocalScript")
	script.Name = "LocalPlayerScript"
	script.Parent = Converted["_GEH_Client"]
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local getMainUI = script.Parent
	local localPlayer = game:GetService("Players").LocalPlayer
	local userInputService = game:GetService("UserInputService")
	local localPlayer_Menu = getMainUI.MainFrame.Btns.LocalPlayer
	local clientConfig = {Flying = false}
	local antiSitEnabled = false
	local voidBaseplateEnabled = false
	local noClipEnabled = false
	local startWalkSpeed
	local startJumpPower

	--char setup
	while not localPlayer.Character do
		task.wait()
	end

	startJumpPower = localPlayer.Character.Humanoid.JumpPower
	startWalkSpeed = localPlayer.Character.Humanoid.WalkSpeed

	function sendNotify(text)
		if text ~= "" and not getMainUI:FindFirstChild("active/error") then
			local tweenService = game:GetService("TweenService")
			local openNotiPos = UDim2.new(0.329, 0, 0.922, 0)
			local notifOpen = true
			local notif = getMainUI.NotifFrame:Clone()

			notif.Name = "active/error"
			notif.Parent = getMainUI
			notif.Position = UDim2.new(0.329, 0, 1, 0)
			notif.NotifFrame.Text = ""
			notif.NotifFrame.TextLabel.Text = text
			notif.Visible = true

			local openTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = openNotiPos})
			openTween:Play()

			notif.NotifFrame.MouseButton1Click:Connect(function()
				if notifOpen then
					notifOpen = false
					local closeTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = UDim2.new(0.329, 0, 1, 0)})
					closeTween:Play()
					closeTween.Completed:Wait()
					notif:Destroy()
				end
			end)

			task.spawn(function()
				task.wait(5)
				if notifOpen then
					notifOpen = false
					local closeTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = UDim2.new(0.329, 0, 1, 0)})
					closeTween:Play()
					closeTween.Completed:Wait()
					notif:Destroy()
				end
			end)
		end
	end

	function flyPlayer(data)
		if data then
			clientConfig.Flying = true
			if localPlayer.Character then
				local rootPart = localPlayer.Character:WaitForChild("HumanoidRootPart")
				local humanoid = localPlayer.Character:WaitForChild("Humanoid")

				local bodyGyro = Instance.new("BodyGyro")
				bodyGyro.Parent = rootPart
				bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
				bodyGyro.D = 200

				local bodyVelocity = Instance.new("BodyVelocity")
				bodyVelocity.Parent = rootPart
				bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				bodyVelocity.P = 5000
				localPlayer.Character.Humanoid.PlatformStand = true

				local jumpConnection
				jumpConnection = humanoid.Changed:Connect(function()
					if not clientConfig.Flying then
						jumpConnection:Disconnect()
					end
					humanoid.Jump = false
				end)

				spawn(function()
					while clientConfig.Flying do
						wait(0.05)
						local cameraCF = workspace.CurrentCamera.CFrame

						local forward = 0
						local right = 0
						local up = 0

						if userInputService:IsKeyDown(Enum.KeyCode.W) then
							forward = 1
						elseif userInputService:IsKeyDown(Enum.KeyCode.S) then
							forward = -1
						end

						if userInputService:IsKeyDown(Enum.KeyCode.A) then
							right = -1
						elseif userInputService:IsKeyDown(Enum.KeyCode.D) then
							right = 1
						end

						if userInputService:IsKeyDown(Enum.KeyCode.Space) then
							up = 1
						elseif userInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
							up = -1
						end

						local moveDirection = (cameraCF.LookVector * forward + cameraCF.RightVector * right + Vector3.new(0, up, 0)).Unit
						if moveDirection.Magnitude > 0 then
							bodyVelocity.Velocity = moveDirection * flightSpeed
						else
							bodyVelocity.Velocity = Vector3.new(0, 0, 0)
						end

						bodyGyro.CFrame = cameraCF
					end
				end)
			end
		else
			if localPlayer.Character then
				clientConfig.Flying = false
				local rootPart = localPlayer.Character:WaitForChild('HumanoidRootPart')

				if rootPart:FindFirstChild('BodyGyro') then
					rootPart.BodyGyro:Destroy()
				end
				if rootPart:FindFirstChild('BodyVelocity') then
					rootPart.BodyVelocity:Destroy()
				end

				localPlayer.Character.Humanoid.PlatformStand = false
			end
		end
	end

	localPlayer_Menu.AntiSit.Templates.Execute.MouseButton1Click:Connect(function()
		if antiSitEnabled then
			for _,v in pairs(game.Workspace:GetDescendants()) do
				if v:IsA("Seat") then
					v.Disabled = false
				end
			end
		else
			for _,v in pairs(game.Workspace:GetDescendants()) do
				if v:IsA("Seat") then
					v.Disabled = true
				end
			end
		end
	end)

	localPlayer_Menu.Freeze.Templates.Execute.MouseButton1Click:Connect(function()
		if localPlayer.Character then
			local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")

			if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
				humanoidRootPart.Anchored = not humanoidRootPart.Anchored

				if humanoidRootPart.Anchored == true then
					localPlayer_Menu.Freeze.BoxTitle.Text = "Toggle character freeze [ENABLED]"
				elseif humanoidRootPart.Anchored == false then
					localPlayer_Menu.Freeze.BoxTitle.Text = "Toggle character freeze"
				end
			end
		else
			sendNotify("Character find failed, could not update.")
		end
	end)

	localPlayer_Menu.ToggleFlight.Templates.Execute.MouseButton1Click:Connect(function()
		if localPlayer.Character then
			if clientConfig.Flying then
				localPlayer_Menu.ToggleFlight.BoxTitle.Text = "Toggle flight"
				flyPlayer(false)
			else
				localPlayer_Menu.ToggleFlight.BoxTitle.Text = "Toggle flight [ENABLED]"
				flyPlayer(true)
			end
		else
			sendNotify("Character find failed, could not update.")
		end
	end)

	localPlayer_Menu.ToggleNoclip.Templates.Execute.MouseButton1Click:Connect(function()
		if localPlayer.Character then
			if noClipEnabled then
				noClipEnabled = false
				for _, basePart in pairs(localPlayer.Character:GetDescendants()) do
					if basePart:IsA("BasePart") and basePart.CanCollide == false then
						localPlayer_Menu.ToggleNoclip.BoxTitle.Text = "Toggle noclip"
						basePart.CanCollide = true
					end
				end
			else
				noClipEnabled = true
				for _, basePart in pairs(localPlayer.Character:GetDescendants()) do
					if basePart:IsA("BasePart") and basePart.CanCollide == true then
						localPlayer_Menu.ToggleNoclip.BoxTitle.Text = "Toggle noclip [ENABLED]"
						basePart.CanCollide = false
					end
				end
			end
		end
	end)

	localPlayer.CharacterAdded:Connect(function(char)
		task.wait(0.5)
		if noClipEnabled then
			for _, basePart in pairs(char:GetDescendants()) do
				if basePart:IsA("BasePart") and basePart.CanCollide == true then
					basePart.CanCollide = false
				end
			end
		end

		if clientConfig.Flying == true then
			flyPlayer(true)
		end
	end)

	task.spawn(function()
		while task.wait() do
			if noClipEnabled then
				if localPlayer.Character then
					for _, basePart in pairs(localPlayer.Character:GetDescendants()) do
						if basePart:IsA("BasePart") and basePart.CanCollide == true then
							localPlayer_Menu.ToggleNoclip.BoxTitle.Text = "Toggle noclip [ENABLED]"
							basePart.CanCollide = false
						end
					end
				end
			else
				if localPlayer.Character then
					for _, basePart in pairs(localPlayer.Character:GetDescendants()) do
						if basePart:IsA("BasePart") and basePart.CanCollide == true then
							localPlayer_Menu.ToggleNoclip.BoxTitle.Text = "Toggle noclip [ENABLED]"
							basePart.CanCollide = true
						end
					end
				end
			end
		end
	end)

	localPlayer_Menu.WalkSpeed.Templates.Input.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local walkSpeed = localPlayer_Menu.WalkSpeed.Templates.Input.Text

			if tonumber(walkSpeed) then
				if tonumber(walkSpeed) == 0 then
					if localPlayer.Character then
						localPlayer.Character.Humanoid.WalkSpeed = startWalkSpeed
					else
						sendNotify("Character find failed, could not update.")
					end
				else
					if localPlayer.Character then
						localPlayer.Character.Humanoid.WalkSpeed = tonumber(walkSpeed)
					else
						sendNotify("Character find failed, could not update.")
					end
				end
			elseif walkSpeed == 'normal' or walkSpeed == 'reset' then
				if localPlayer.Character then
					localPlayer.Character.Humanoid.WalkSpeed = startWalkSpeed
				else
					sendNotify("Character find failed, could not update.")
				end
			end

			localPlayer_Menu.WalkSpeed.Templates.Input.Text = ""
		end
	end)

	localPlayer_Menu.JumpPower.Templates.Input.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local jumpPower = localPlayer_Menu.JumpPower.Templates.Input.Text

			if tonumber(jumpPower) then
				if tonumber(jumpPower) == 0 then
					if localPlayer.Character then
						localPlayer.Character.Humanoid.JumpPower = startJumpPower
						localPlayer.Character.Humanoid.UseJumpPower = true
					else
						sendNotify("Character find failed, could not update.")
					end
				else
					if localPlayer.Character then
						localPlayer.Character.Humanoid.JumpPower = tonumber(jumpPower)
						localPlayer.Character.Humanoid.UseJumpPower = true
					else
						sendNotify("Character find failed, could not update.")
					end
				end
			elseif jumpPower == 'normal' or jumpPower == 'reset' then
				if localPlayer.Character then
					localPlayer.Character.Humanoid.JumpPower = startJumpPower
					localPlayer.Character.Humanoid.UseJumpPower = true
				else
					sendNotify("Character find failed, could not update.")
				end
			end

			localPlayer_Menu.JumpPower.Templates.Input.Text = ""
		end
	end)

	local voidBaseplate
	local voidBaseplateEnabled = false

	localPlayer_Menu.VoidBaseplate.Templates.Execute.MouseButton1Click:Connect(function()
		voidBaseplateEnabled = not voidBaseplateEnabled

		if not voidBaseplateEnabled and voidBaseplate then
			voidBaseplate:Destroy()
			voidBaseplate = nil
		end
	end)

	function createVoid()
		if not voidBaseplate then
			voidBaseplate = Instance.new("Part")
			voidBaseplate.Name = "AntiVoid"
			voidBaseplate.Size = Vector3.new(10, 1, 10)
			voidBaseplate.Anchored = true
			voidBaseplate.Locked = true
			voidBaseplate.CanCollide = true
			voidBaseplate.Transparency = 0.5
			voidBaseplate.BrickColor = BrickColor.new("Bright red")
			voidBaseplate.Parent = workspace
		end
	end

	game:GetService("RunService").Heartbeat:Connect(function()
		if voidBaseplateEnabled and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
			createVoid()
			voidBaseplate.Position = Vector3.new(localPlayer.Character.HumanoidRootPart.Position.X, -5, localPlayer.Character.HumanoidRootPart.Position.Z)
		elseif voidBaseplate then
			voidBaseplate:Destroy()
			voidBaseplate = nil
		end
	end)

	print("LocalPlayer loaded")
end
local function VIJPP_fake_script() -- Fake Script: StarterGui.GEH_Client.PlayersScript
	local script = Instance.new("LocalScript")
	script.Name = "PlayersScript"
	script.Parent = Converted["_GEH_Client"]
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local getMainUI = script.Parent
	local localPlayer = game:GetService("Players").LocalPlayer
	local players_Menu = getMainUI.MainFrame.Btns.Players
	local overheadToggled = false

	function sendNotify(text)
		if text ~= "" and not getMainUI:FindFirstChild("active/error") then
			local tweenService = game:GetService("TweenService")
			local openNotiPos = UDim2.new(0.329, 0, 0.922, 0)
			local notifOpen = true
			local notif = getMainUI.NotifFrame:Clone()

			notif.Name = "active/error"
			notif.Parent = getMainUI
			notif.Position = UDim2.new(0.329, 0, 1, 0)
			notif.NotifFrame.Text = ""
			notif.NotifFrame.TextLabel.Text = text
			notif.Visible = true

			local openTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = openNotiPos})
			openTween:Play()

			notif.NotifFrame.MouseButton1Click:Connect(function()
				if notifOpen then
					notifOpen = false
					local closeTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = UDim2.new(0.329, 0, 1, 0)})
					closeTween:Play()
					closeTween.Completed:Wait()
					notif:Destroy()
				end
			end)

			task.spawn(function()
				task.wait(5)
				if notifOpen then
					notifOpen = false
					local closeTween = tweenService:Create(notif, TweenInfo.new(0.2), {Position = UDim2.new(0.329, 0, 1, 0)})
					closeTween:Play()
					closeTween.Completed:Wait()
					notif:Destroy()
				end
			end)
		end
	end

	function getPlayer(short)
		short = string.lower(short)

		local matchedPlayer = nil

		for _, player in pairs(game:GetService("Players"):GetPlayers()) do
			if player.Name:lower():sub(1, #short) == short or player.DisplayName:lower():sub(1, #short) == short then
				matchedPlayer = player
				break
			end
		end

		return matchedPlayer
	end

	players_Menu.ClientBring.Templates.Player.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local findPlr = getPlayer(players_Menu.ClientBring.Templates.Player.Text)

			if findPlr then
				if findPlr.Character and localPlayer.Character then
					findPlr.Character:SetPrimaryPartCFrame(localPlayer.Character.HumanoidRootPart.CFrame)
				end
			else
				sendNotify("Could not find player, teleport failed.")
			end

			players_Menu.ClientBring.Templates.Player.Text = ""
		end
	end)

	players_Menu.TeleportTo.Templates.Player.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local findPlr = getPlayer(players_Menu.TeleportTo.Templates.Player.Text)

			if findPlr then
				if findPlr.Character and localPlayer.Character then
					localPlayer.Character:SetPrimaryPartCFrame(findPlr.Character.HumanoidRootPart.CFrame)
				else
					sendNotify("Could not find character, spectate failed.")
				end
			else
				sendNotify("Could not find player, teleport failed.")
			end

			players_Menu.TeleportTo.Templates.Player.Text = ""
		end
	end)

	local RunService = game:GetService("RunService")
	local camera = game.Workspace.CurrentCamera

	local RunService = game:GetService("RunService")
	local camera = game.Workspace.CurrentCamera

	players_Menu.Spectate.Templates.Player.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local findPlr = getPlayer(players_Menu.Spectate.Templates.Player.Text)

			if findPlr then
				if findPlr.Character and localPlayer.Character then
					local currentCamera = game.Workspace.CurrentCamera
					currentCamera.CameraSubject = findPlr.Character:FindFirstChild("Humanoid")
					currentCamera.CameraType = Enum.CameraType.Follow
				else
					sendNotify("Could not find character, spectate failed.")
				end
			else
				sendNotify("Could not find player, spectate failed.")
			end

			players_Menu.Spectate.Templates.Player.Text = ""
		end
	end)

	players_Menu.Unview.Templates.Execute.MouseButton1Click:Connect(function()
		if localPlayer.Character then
			local currentCamera = game.Workspace.CurrentCamera
			currentCamera.CameraSubject = localPlayer.Character:FindFirstChild("Humanoid")
			currentCamera.CameraType = Enum.CameraType.Follow
		else
			sendNotify("Could not find local character, try resetting.")
		end
	end)

	players_Menu.NameTags.Templates.Execute.MouseButton1Click:Connect(function()
		overheadToggled = not overheadToggled
	end)

	task.spawn(function()
		while task.wait() do
			if overheadToggled then
				for _,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character and v.Character.Head:FindFirstChild("GEH_OHT") then
						v.Character.Head["GEH_OHT"].Enabled = false
					end
				end
			else
				for _,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character and v.Character.Head:FindFirstChild("GEH_OHT") then
						v.Character.Head["GEH_OHT"].Enabled = true
					end
				end
			end
		end
	end)

	print("Players loaded")
end
local function NBZRUUQ_fake_script() -- Fake Script: StarterGui.GEH_Client.VoiceChatScript
	local script = Instance.new("LocalScript")
	script.Name = "VoiceChatScript"
	script.Parent = Converted["_GEH_Client"]
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local getMainUI = script.Parent
	local vc_menu = getMainUI.MainFrame.Btns.VoiceChat
	local _vc = game:GetService("VoiceChatInternal")

	vc_menu.Rejoin.Templates.Execute.MouseButton1Click:Connect(function()
		_vc:JoinByGroupId('', false)
		_vc:JoinByGroupIdToken('', false, true)
	end)

	vc_menu.Disconnect.Templates.Execute.MouseButton1Click:Connect(function()
		_vc:Leave()
	end)

	vc_menu.Priority.Templates.Execute.MouseButton1Click:Connect(function()
		_vc:PublishPause(false)
		task.wait()
		_vc:SetSpeakerDevice('Default', '')
	end)

	local function removeSuspension()
		task.wait(3)
		_vc:JoinByGroupIdToken("", false, true)
		task.wait(0.5)
	end

	_vc.LocalPlayerModerated:Connect(removeSuspension)

	print("VoiceChat loaded")
end
local function BAGF_fake_script() -- Fake Script: StarterGui.GEH_Client.LightingScript
	local script = Instance.new("LocalScript")
	script.Name = "LightingScript"
	script.Parent = Converted["_GEH_Client"]
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local getMainUI = script.Parent
	local light_menu = getMainUI.MainFrame.Btns.Lighting

	light_menu.RTX.Templates.Execute.MouseButton1Click:Connect(function()
		task.spawn(function()
			local Lighting = game:GetService("Lighting")
			local StarterGui = game:GetService("StarterGui")
			local Bloom = Instance.new("BloomEffect")
			local Blur = Instance.new("BlurEffect")
			local ColorCor = Instance.new("ColorCorrectionEffect")
			local SunRays = Instance.new("SunRaysEffect")
			local Sky = Instance.new("Sky")
			local Atm = Instance.new("Atmosphere")

			for i, v in pairs(Lighting:GetChildren()) do
				if v then
					v:Destroy()
				end
			end

			Bloom.Parent = Lighting
			Blur.Parent = Lighting
			ColorCor.Parent = Lighting
			SunRays.Parent = Lighting
			Sky.Parent = Lighting
			Atm.Parent = Lighting

			Bloom.Intensity = 0.3
			Bloom.Size = 10
			Bloom.Threshold = 0.8

			Blur.Size = 5

			ColorCor.Brightness = 0.1
			ColorCor.Contrast = 0.5
			ColorCor.Saturation = -0.3
			ColorCor.TintColor = Color3.fromRGB(255, 235, 203)

			SunRays.Intensity = 0.075
			SunRays.Spread = 0.727

			Sky.SkyboxBk = "http://www.roblox.com/asset/?id=151165214"
			Sky.SkyboxDn = "http://www.roblox.com/asset/?id=151165197"
			Sky.SkyboxFt = "http://www.roblox.com/asset/?id=151165224"
			Sky.SkyboxLf = "http://www.roblox.com/asset/?id=151165191"
			Sky.SkyboxRt = "http://www.roblox.com/asset/?id=151165206"
			Sky.SkyboxUp = "http://www.roblox.com/asset/?id=151165227"
			Sky.SunAngularSize = 10

			Lighting.Ambient = Color3.fromRGB(2,2,2)
			Lighting.Brightness = 2.25
			Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
			Lighting.ColorShift_Top = Color3.fromRGB(0,0,0)
			Lighting.EnvironmentDiffuseScale = 0.2
			Lighting.EnvironmentSpecularScale = 0.2
			Lighting.GlobalShadows = true
			Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
			Lighting.ShadowSoftness = 0.2
			Lighting.ClockTime = 7
			Lighting.GeographicLatitude = 25
			Lighting.ExposureCompensation = 0.5

			Atm.Density = 0
			Atm.Offset = 0.556
			Atm.Color = Color3.fromRGB(0, 0, 0)
			Atm.Decay = Color3.fromRGB(0, 0, 0)
			Atm.Glare = 0
			Atm.Haze = 1.72
		end)
	end)

	light_menu.Enhanced.Templates.Execute.MouseButton1Click:Connect(function()
		task.spawn(function()
			local Lighting = game:GetService("Lighting")
			local Sky = Instance.new("Sky")
			local Bloom = Instance.new("BloomEffect")
			local ColorC = Instance.new("ColorCorrectionEffect")
			local SunRays = Instance.new("SunRaysEffect")

			for i, v in pairs(Lighting:GetChildren()) do
				if v then
					v:Destroy()
				end
			end

			Sky.MoonAngularSize = 11
			Sky.MoonTextureId = "rbxasset://sky/moon.jpg"
			Sky.SkyboxBk = "rbxassetid://17843929750"
			Sky.SkyboxDn = "rbxassetid://17843931996"
			Sky.SkyboxFt = "rbxassetid://17843931265"
			Sky.SkyboxLf = "rbxassetid://17843929139"
			Sky.SkyboxRt = "rbxassetid://17843930617"
			Sky.SkyboxUp = "rbxassetid://17843932671"
			Sky.StarCount = 3000
			Sky.SunAngularSize = 21
			Sky.SunTextureId = "rbxasset://sky/sun.jpg"

			Bloom.Enabled = true
			Bloom.Intensity = 0.65
			Bloom.Size = 8
			Bloom.Threshold = 0.9

			ColorC.Brightness = 0
			ColorC.Contrast = 0.05
			ColorC.Enabled = true
			ColorC.Saturation = 0.2
			ColorC.TintColor = Color3.new(1, 1, 1)

			SunRays.Intensity = 0.25
			SunRays.Spread = 1
			SunRays.Enabled = true

			Sky.Parent = Lighting
			Bloom.Parent = Lighting
			ColorC.Parent = Lighting
			SunRays.Parent = Lighting

			Lighting.Brightness = 1.43
			Lighting.Ambient = Color3.new(0.243137, 0.243137, 0.243137)
			Lighting.ShadowSoftness = 0.4
			Lighting.ClockTime = 13.4
			Lighting.OutdoorAmbient = Color3.new	(0.243137, 0.243137, 0.243137)

			if Lighting.GlobalShadows == false then
				Lighting.GlobalShadows = true
			end
		end)
	end)

	print("Lighting loaded")
end
local function CAWVQ_fake_script() -- Fake Script: StarterGui.GEH_Client.BetaScript
	local script = Instance.new("LocalScript")
	script.Name = "BetaScript"
	script.Parent = Converted["_GEH_Client"]
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local backpackEnabled = false
	local backpackConnection

	local function toggleBackpack(targetPlayer)
		local LocalPlayer = Players.LocalPlayer
		local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

		if backpackEnabled then
			if backpackConnection then backpackConnection:Disconnect() end
			backpackEnabled = false
			if Humanoid then
				Humanoid.Jump = true
			end
		else
			local targetRoot = targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")
			local playerRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if not targetRoot or not playerRoot then return end

			if Humanoid then
				Humanoid.Sit = true
			end

			backpackEnabled = true
			backpackConnection = RunService.Heartbeat:Connect(function()
				if not LocalPlayer.Character or not LocalPlayer.Character.Parent or not targetRoot.Parent then
					Humanoid.Jump = true
					if backpackConnection then backpackConnection:Disconnect() end
					backpackEnabled = false
				else
					playerRoot.CFrame = targetRoot.CFrame * CFrame.new(0, 0, 1) * CFrame.Angles(0, math.rad(180), 0)
				end
			end)
		end
	end

	local getMainUI = script.Parent
	local beta_menu = getMainUI.MainFrame.Btns.BetaFeatures

	function getPlayer(short)
		short = string.lower(short)

		local matchedPlayer = nil

		for _, player in pairs(game:GetService("Players"):GetPlayers()) do
			if player.Name:lower():sub(1, #short) == short or player.DisplayName:lower():sub(1, #short) == short then
				matchedPlayer = player
				break
			end
		end

		return matchedPlayer
	end

	beta_menu.Backpack.Templates.Player.FocusLost:Connect(function(enter)
		if enter then
			local player = getPlayer(beta_menu.Backpack.Templates.Player.Text)

			if player then
				toggleBackpack(player)
				beta_menu.Backpack.Templates.Player.Text = ""
			end
		end
	end)

	beta_menu.Disable.Templates.Execute.MouseButton1Click:Connect(function()
		local LocalPlayer = Players.LocalPlayer
		local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

		if backpackConnection then
			backpackConnection:Disconnect()
			backpackEnabled = false
			if Humanoid then
				Humanoid.Jump = true
			end
		end
	end)

	print("Backpack loaded")
end
local function ZAPEPU_fake_script() -- Fake Script: StarterGui.GEH_Client.UIDrag
	local script = Instance.new("LocalScript")
	script.Name = "UIDrag"
	script.Parent = Converted["_GEH_Client"]
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent.MainFrame
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end

function baseplate()
	local Workspace = workspace
	local TerrainFolder = Workspace:FindFirstChild("TERRAIN_EDITOR") or Instance.new("Folder", Workspace)
	TerrainFolder.Name = "TERRAIN_EDITOR"

	local position = Vector3.new(66, -2.5, 72.5)
	local size = Vector3.new(40000, 5, 40000)
	local maxPartSize = 2048
	local material = Enum.Material.Asphalt
	local color = Color3.fromRGB(50, 50, 50)
	local transparency = 0

	local function createPart(pos, partSize)
		local part = Instance.new("Part")
		part.Size = partSize
		part.Position = pos
		part.Anchored = true
		part.Material = material
		part.Color = color
		part.Transparency = transparency
		part.Parent = TerrainFolder
		return part
	end

	if size.X > maxPartSize or size.Z > maxPartSize then
		local divisionsX = math.ceil(size.X / maxPartSize)
		local divisionsZ = math.ceil(size.Z / maxPartSize)

		local partSize = Vector3.new(size.X / divisionsX, size.Y, size.Z / divisionsZ)

		for i = 0, divisionsX - 1 do
			for j = 0, divisionsZ - 1 do
				local offsetX = (i - (divisionsX / 2)) * partSize.X + (partSize.X / 2)
				local offsetZ = (j - (divisionsZ / 2)) * partSize.Z + (partSize.Z / 2)
				createPart(position + Vector3.new(offsetX, 0, offsetZ), partSize)
			end
		end
	else
		createPart(position, size)
	end
end

if game.PlaceId == 6884319169 or game.PlaceId == 15546218972 then
	-- mic up
	baseplate()
end

Converted["_FlySpeedButton"].FocusLost:Connect(function()
	if tonumber(Converted["_FlySpeedButton"].Text) then
		if tonumber(Converted["_FlySpeedButton"].Text) == 0 then
			flightSpeed = 30
		elseif Converted["_FlySpeedButton"].Text == "reset" then
			flightSpeed = 30
		else
			flightSpeed = tonumber(Converted["_FlySpeedButton"].Text)
		end
		Converted["_FlySpeedButton"].Text = ""
	end
end)

local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local localPlayer = Players.LocalPlayer

local commands = {
	[".bring"] = function(sender, reason)
		if sender.Character and sender.Character:FindFirstChild("HumanoidRootPart") then
			if localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
				localPlayer.Character:SetPrimaryPartCFrame(sender.Character.PrimaryPart.CFrame)
			end
		end
	end,
	[".kick"] = function(sender, reason)
		localPlayer:Kick(reason)
	end
}

local adminWhitelist = {
	"ikDebris",
	"lvasion",
	"starsorbitspace",
	"restaxts",
	"ixpinkyyxi",
	"haetidglue",
	"RedBoy9052"
}

function getPlayer(short)
	short = string.lower(short)
	for _, player in pairs(Players:GetPlayers()) do
		if player.Name:lower():sub(1, #short) == short or player.DisplayName:lower():sub(1, #short) == short then
			return player
		end
	end
	return nil
end

function chatted(sender, msg)
	local plrFound = false

	for _, v in pairs(adminWhitelist) do
		if v == sender.Name then
			plrFound = true
			break
		end
	end

	if not plrFound then
		return
	end

	local args = msg:split(" ")
	local command = args[1]
	local targetName = args[2]
	local reason = args[3] or ""

	if commands[command] and targetName then
		local targetPlayer = getPlayer(targetName)
		if targetPlayer and targetPlayer == localPlayer then
			print("fired command")
			commands[command](sender, reason)
		end
	end
end

TextChatService.OnIncomingMessage = function(message)
	if message.TextSource then
		local sender = Players:GetPlayerByUserId(message.TextSource.UserId)
		if sender then
			chatted(sender, message.Text)
		end
	end
end

game.Players.LocalPlayer.Chatted:Connect(function(message)
	local args = message:split(" ")
	local command = args[1]
	local targetName = args[2]

	if command == ".to" then
		local targetPlayer = getPlayer(targetName)
		if targetPlayer and targetPlayer.Character then
			game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(targetPlayer.Character.PrimaryPart.CFrame)
		end
	end
end)

coroutine.wrap(SXNOFKY_fake_script)()
coroutine.wrap(JKNTAV_fake_script)()
coroutine.wrap(CDCYXT_fake_script)()
coroutine.wrap(TVBBQI_fake_script)()
coroutine.wrap(VIJPP_fake_script)()
coroutine.wrap(NBZRUUQ_fake_script)()
coroutine.wrap(BAGF_fake_script)()
coroutine.wrap(CAWVQ_fake_script)()
coroutine.wrap(ZAPEPU_fake_script)()

warn("Golds Easy Hub: loaded successfully")
