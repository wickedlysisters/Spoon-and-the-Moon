-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.4.6 

module(..., package.seeall) 
 function new()     local menuGroup = display.newGroup() 
    statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page") 
    statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage) 

    local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.CachesDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()

		navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}

       local showbox         local showbut         local BG         BG = display.newImageRect(imageDir .. "p10_bg.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG                      local onshowbutTouch = function(event)           if event.phase=="ended" then                  if showbox.alpha == 0 then                    transitionStash.newTransition_964 = transition.to( showbox, {alpha=showbox.oldAlpha, time=2000, delay=0})                 else                    transitionStash.newTransition_964 = transition.to( showbox, {alpha=0, time=2000, delay=0})                 end           end        end        showbut = ui.newButton{            defaultSrc= imageDir .."p10_showbut.png",            defaultX = 344,            defaultY = 431,            overSrc= imageDir .."p10_showbut.png",            overX = 344,            overY = 431,            onRelease=onshowbutTouch,            id="showbutButton"        }        showbut.x = 172; showbut.y = 234; showbut.alpha = 1; showbut.oldAlpha = 1        menuGroup:insert(showbut)        menuGroup.showbut = showbut        showbox = display.newImageRect(imageDir .. "p10_showbox.png", 696, 570 );        showbox.x = 401; showbox.y = 657; showbox.alpha = 1; showbox.oldAlpha = 1        menuGroup:insert(showbox)        menuGroup.showbox = showbox        showbox.alpha = 0 
	end
   drawScreen()    return menuGroup end 