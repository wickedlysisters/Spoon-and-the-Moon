-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.4.6 

module(..., package.seeall) 
 function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens      -- local kwkBindex_audio = audio.loadSound(audioDir .. "indexflip.mp3", system.ResourceDirectory)  
    statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page") 
    statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage) 

    local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()

  navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}

       local DarkStarcopy7         local DarkStarcopy6         local DarkStarcopy5         local DarkStarcopy4         local DarkStarcopy3         local DarkStarcopy2         local DarkStar1         local DarkStar         local showbox         local showbut  

       --local PageXCorner         local BG         BG = display.newImageRect(imageDir .. "p12_bg.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG 
--XPageXCornerX

       
--XPageXCornerX              local onshowbutTouch = function(event)           if event.phase=="ended" then                  if showbox.alpha == 0 then                    transitionStash.newTransition_167 = transition.to( showbox, {alpha=showbox.oldAlpha, time=2000, delay=0})                 else                    transitionStash.newTransition_167 = transition.to( showbox, {alpha=0, time=2000, delay=0})                 end           end        end        showbut = ui.newButton{            defaultSrc= imageDir .."p12_showbut.png",            defaultX = 341,            defaultY = 276,            overSrc= imageDir .."p12_showbut.png",            overX = 341,            overY = 276,            onRelease=onshowbutTouch,            id="showbutButton"        }        showbut.x = 420; showbut.y = 211; showbut.alpha = 1; showbut.oldAlpha = 1        menuGroup:insert(showbut)        menuGroup.showbut = showbut        showbox = display.newImageRect(imageDir .. "p12_showbox.png", 597, 525 );        showbox.x = 384; showbox.y = 562; showbox.alpha = 1; showbox.oldAlpha = 1        menuGroup:insert(showbox)        menuGroup.showbox = showbox        DarkStar = display.newImageRect(imageDir .. "p12_darkstar.png", 27, 29 );        DarkStar.x = 56; DarkStar.y = 54; DarkStar.alpha = 1; DarkStar.oldAlpha = 1        menuGroup:insert(DarkStar)        menuGroup.DarkStar = DarkStar        DarkStar1 = display.newImageRect(imageDir .. "p12_darkstar1.png", 27, 29 );        DarkStar1.x = 186; DarkStar1.y = 184; DarkStar1.alpha = 1; DarkStar1.oldAlpha = 1        menuGroup:insert(DarkStar1)        menuGroup.DarkStar1 = DarkStar1        DarkStarcopy2 = display.newImageRect(imageDir .. "p12_darkstarcopy2.png", 27, 29 );        DarkStarcopy2.x = 636; DarkStarcopy2.y = 94; DarkStarcopy2.alpha = 1; DarkStarcopy2.oldAlpha = 1        menuGroup:insert(DarkStarcopy2)        menuGroup.DarkStarcopy2 = DarkStarcopy2        DarkStarcopy3 = display.newImageRect(imageDir .. "p12_darkstarcopy3.png", 27, 29 );        DarkStarcopy3.x = 506; DarkStarcopy3.y = 324; DarkStarcopy3.alpha = 1; DarkStarcopy3.oldAlpha = 1        menuGroup:insert(DarkStarcopy3)        menuGroup.DarkStarcopy3 = DarkStarcopy3        DarkStarcopy4 = display.newImageRect(imageDir .. "p12_darkstarcopy4.png", 27, 29 );        DarkStarcopy4.x = 226; DarkStarcopy4.y = 514; DarkStarcopy4.alpha = 1; DarkStarcopy4.oldAlpha = 1        menuGroup:insert(DarkStarcopy4)        menuGroup.DarkStarcopy4 = DarkStarcopy4        DarkStarcopy5 = display.newImageRect(imageDir .. "p12_darkstarcopy5.png", 27, 29 );        DarkStarcopy5.x = 566; DarkStarcopy5.y = 614; DarkStarcopy5.alpha = 1; DarkStarcopy5.oldAlpha = 1        menuGroup:insert(DarkStarcopy5)        menuGroup.DarkStarcopy5 = DarkStarcopy5        DarkStarcopy6 = display.newImageRect(imageDir .. "p12_darkstarcopy6.png", 27, 29 );        DarkStarcopy6.x = 716; DarkStarcopy6.y = 814; DarkStarcopy6.alpha = 1; DarkStarcopy6.oldAlpha = 1        menuGroup:insert(DarkStarcopy6)        menuGroup.DarkStarcopy6 = DarkStarcopy6        DarkStarcopy7 = display.newImageRect(imageDir .. "p12_darkstarcopy7.png", 27, 29 );        DarkStarcopy7.x = 116; DarkStarcopy7.y = 934; DarkStarcopy7.alpha = 1; DarkStarcopy7.oldAlpha = 1        menuGroup:insert(DarkStarcopy7)        menuGroup.DarkStarcopy7 = DarkStarcopy7        --2        gtStash.gt_DarkStar_839= gtween.new( DarkStar, 2, { x = 56, y = 54, rotation = 0, xScale = 0.5, yScale = 0.5, alpha=0}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0})        --2        gtStash.gt_DarkStar1_851= gtween.new( DarkStar1, 2, { x = 186, y = 184, rotation = 0, xScale = 0.5, yScale = 0.5, alpha=0}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=1})        --2        gtStash.gt_DarkStarcopy2_863= gtween.new( DarkStarcopy2, 2, { x = 636, y = 94, rotation = 0, xScale = 0.5, yScale = 0.5, alpha=0}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=2})        --2        gtStash.gt_DarkStarcopy3_875= gtween.new( DarkStarcopy3, 2, { x = 506, y = 324, rotation = 0, xScale = 0.5, yScale = 0.5, alpha=0}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=3})        --2        gtStash.gt_DarkStarcopy4_888= gtween.new( DarkStarcopy4, 2, { x = 226, y = 514, rotation = 0, xScale = 0.5, yScale = 0.5, alpha=0}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=4})        --2        gtStash.gt_DarkStarcopy5_901= gtween.new( DarkStarcopy5, 2, { x = 566, y = 614, rotation = 0, xScale = 0.5, yScale = 0.5, alpha=0}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=5})        --2        gtStash.gt_DarkStarcopy6_912= gtween.new( DarkStarcopy6, 2, { x = 716, y = 814, rotation = 0, xScale = 0.5, yScale = 0.5, alpha=0}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=6})        --2        gtStash.gt_DarkStarcopy7_923= gtween.new( DarkStarcopy7, 2, { x = 116, y = 934, rotation = 0, xScale = 0.5, yScale = 0.5, alpha=0}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=7})        showbox.alpha = 0 
	end
   drawScreen()    function disposeAudios(event)                     -- audio.stop(13); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 