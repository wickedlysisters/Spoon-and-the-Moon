-- Code created by Kwik - Copyright: kwiksher.com -- Version: 2.4.6 module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local audio2_aud185 = audio.loadStream(audioDir .. "audio2.mp3", system.ResourceDirectory)      -- local kwkBindex_audio = audio.loadSound(audioDir .. "indexflip.mp3", system.ResourceDirectory)      statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page")     statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage)     local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()
navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}
       --local PageXCorner         local BG         BG = display.newImageRect(imageDir .. "Chapter1Title_LnS.png", 768, 1024 ); -- p24_BG.png       BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG
	end
   drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(audio2_aud185); audio2_aud185 =nil        -- audio.stop(13); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    local myClosure_audio2_aud185 = function()       audio.play(audio2_aud185, {  channel=2, loops=-1, fadein=500 } )    end    timerStash.newTimer_185 = timer.performWithDelay(0, myClosure_audio2_aud185, 1)    return menuGroup end 