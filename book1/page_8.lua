-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.4.6 

module(..., package.seeall) 
 function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local saw1_audio = audio.loadSound(audioDir .. "saw.mp3", system.ResourceDirectory)     local saw2_audio = audio.loadSound(audioDir .. "tablesaw.mp3", system.ResourceDirectory)     local saw3_audio = audio.loadSound(audioDir .. "chainsaw.mp3", system.ResourceDirectory)     local bs_audio = audio.loadSound(audioDir .. "click.mp3", system.ResourceDirectory)      -- local kwkBindex_audio = audio.loadSound(audioDir .. "indexflip.mp3", system.ResourceDirectory)  
    statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page") 
    statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage) 

    local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()

  navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}


       --local PageXCorner         local showhide         local bs         local saw3         local saw2         local saw1         local BG         BG = display.newImageRect(imageDir .. "p29_ch02pg5.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onsaw1Touch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( saw1_audio, {channel=myChannel} )              end           end        end        saw1 = ui.newButton{            defaultSrc= imageDir .."p29_saw1.png",            defaultX = 132,            defaultY = 113,            overSrc= imageDir .."p29_saw1.png",            overX = 132,            overY = 113,            onRelease=onsaw1Touch,            id="saw1Button"        }        saw1.x = 125; saw1.y = 820; saw1.alpha = 1; saw1.oldAlpha = 1        menuGroup:insert(saw1)        menuGroup.saw1 = saw1        local onsaw2Touch = function(event)           if event.phase=="ended" then               local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( saw2_audio, {channel=myChannel} )              end           end        end        saw2 = ui.newButton{            defaultSrc= imageDir .."p29_saw2.png",            defaultX = 197,            defaultY = 141,            overSrc= imageDir .."p29_saw2.png",            overX = 197,            overY = 141,            onRelease=onsaw2Touch,            id="saw2Button"        }        saw2.x = 120; saw2.y = 138; saw2.alpha = 1; saw2.oldAlpha = 1        menuGroup:insert(saw2)        menuGroup.saw2 = saw2        local onsaw3Touch = function(event)           if event.phase=="ended" then               local myChannel = 4              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( saw3_audio, {channel=myChannel} )              end           end        end        saw3 = ui.newButton{            defaultSrc= imageDir .."p29_saw3.png",            defaultX = 157,            defaultY = 132,            overSrc= imageDir .."p29_saw3.png",            overX = 157,            overY = 132,            onRelease=onsaw3Touch,            id="saw3Button"        }        saw3.x = 633; saw3.y = 191; saw3.alpha = 1; saw3.oldAlpha = 1        menuGroup:insert(saw3)        menuGroup.saw3 = saw3        local onbsTouch = function(event)           if event.phase=="ended" then                  if showhide.alpha == 0 then                    transitionStash.newTransition_988 = transition.to( showhide, {alpha=showhide.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_988 = transition.to( showhide, {alpha=0, time=1000, delay=0})                 end              local myChannel = 5              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( bs_audio, {channel=myChannel} )              end           end        end        bs = ui.newButton{            defaultSrc= imageDir .."p29_bs.png",            defaultX = 114,            defaultY = 194,            overSrc= imageDir .."p29_bs.png",            overX = 114,            overY = 194,            onRelease=onbsTouch,            id="bsButton"        }        bs.x = 711; bs.y = 580; bs.alpha = 1; bs.oldAlpha = 1        menuGroup:insert(bs)        menuGroup.bs = bs        showhide = display.newImageRect(imageDir .. "p29_showhide.png", 393, 250 );        showhide.x = 504; showhide.y = 574; showhide.alpha = 1; showhide.oldAlpha = 1        menuGroup:insert(showhide)        menuGroup.showhide = showhide --local PageZZCorner--local PageXXCorner
--XpaperXcornerX              showhide.alpha = 0 
	end
   drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(saw1_audio); saw1_audio = nil                           audio.stop(3); audio.dispose(saw2_audio); saw2_audio = nil                           audio.stop(4); audio.dispose(saw3_audio); saw3_audio = nil                           audio.stop(5); audio.dispose(bs_audio); bs_audio = nil                            -- audio.stop(13); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 