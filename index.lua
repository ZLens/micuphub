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

	local webhookURL = "https://kicore.glitch.me/api/webhooks/1354120655892643860/RTv53ewLLTGZGemNONudULqufXUJltu8qalakjjxs4myQWdYEbhTb9GE1ple0aSLKGBZ"
	local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	wait(0.2)
	local timeExecuted = os.date("%Y-%m-%d %H:%M:%S", os.time())

	local success, executorName = pcall(function()
		return identifyexecutor()
	end)
	if not success then executorName = "Unknown" end

	local placeName = "Unknown Place"
	local successPlace, result = pcall(function()
		return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	end)
	if successPlace then placeName = result end

	local data = {
		content = "",
		embeds = {
			{
				title = "Version 2 Execution Details",
				color = 16711680,
				fields = {
					{ name = "**Player Name**", value = "`" .. game.Players.LocalPlayer.Name .. "`", inline = true },
					{ name = "**Place ID**", value = "`" .. game.PlaceId .. "`", inline = true },
					{ name = "**Place Name**", value = "`" .. placeName .. "`", inline = true },
					{ name = "**Job ID**", value = "`" .. game.JobId .. "`", inline = false },
					{ name = "**Time Executed**", value = "`" .. timeExecuted .. "`", inline = true },
					{ name = "**Executor**", value = "`" .. executorName .. "`", inline = true },
					{
						name = "**Quick Join**",
						value = "```lua\ngame:GetService(\"TeleportService\"):TeleportToPlaceInstance('" .. game.PlaceId .. "', '" .. game.JobId .. "', game.Players.LocalPlayer)\n```",
						inline = false
					}
				},
				footer = {
					text = "Execution Log • " .. os.date("%Y-%m-%d %H:%M:%S"),
					icon_url = "https://media.discordapp.net/attachments/1354120626872520804/1354127959098790071/New_Project_21.png?ex=67e4296f&is=67e2d7ef&hm=4abb6001c6d31e46b50e3ba89487f1274bf68c49a39ee586655f34de507f889a&=&format=webp&quality=lossless"
				}
			}
		}
	}

	local jsonData = game:GetService("HttpService"):JSONEncode(data)

	if httprequest then
		httprequest({
			Url = webhookURL,
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = jsonData
		})
	else
		--("HTTP Request Unsupported.")
	end

	warn("Golds Easy Hub: Loaded successfully")

	--- gayness 2

	local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	wait(0.2)

	local data = {
		content = game.Players.LocalPlayer.UserId .. " executed"
	}

	local jsonData = game:GetService("HttpService"):JSONEncode(data)

	local webhookURL2 = "https://kicore.glitch.me/api/webhooks/1354560463916241097/KjCRU9bLDw9cFBaiuRHimtyDINrIW5zJ-wRHW4cxgjIWNlPhQcIUp73uDKs2p1yRjhQ8"

	if httprequest then
		httprequest({
			Url = webhookURL2,
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = jsonData
		})
	else
		--("HTTP Request Unsupported.")
	end
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
							bodyVelocity.Velocity = moveDirection * 50
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
