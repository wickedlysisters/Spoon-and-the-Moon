-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local numPages = 114     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local saw1_audio = audio.loadSound(audioDir.."saw.mp3" )     local saw2_audio = audio.loadSound(audioDir.."tablesaw.mp3" )     local saw3_audio = audio.loadSound(audioDir.."chainsaw.mp3" )     local bs_audio = audio.loadSound(audioDir.."click9.mp3" )     local kwkBindex_audio = audio.loadSound(audioDir.."indexflip.mp3" )     local curPage = 29     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( curPage )     io.close( file )     local drawScreen = function()        local kwkBback         local kwkBindex         local kwkBforward         local papercorner         local showhide         local bs         local saw3         local saw2         local saw1         local CH02PG5  --(2) regular layer        CH02PG5 = display.newImageRect( imgDir.. "p29_ch02pg5.png", 768, 1024 );        CH02PG5.x = 384; CH02PG5.y = 512; CH02PG5.alpha = 1; CH02PG5.oldAlpha = 1        menuGroup:insert(CH02PG5)        menuGroup.CH02PG5 = CH02PG5        local onsaw1Touch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( saw1_audio, {channel=myChannel} )              end           end        end --(10) regular layer        saw1 = ui.newButton{            defaultSrc=imgDir.."p29_saw1.png",            defaultX = 132,            defaultY = 113,            overSrc=imgDir.."p29_saw1.png",            overX = 132,            overY = 113,            onRelease=onsaw1Touch,            id="saw1Button"        }        saw1.x = 125; saw1.y = 820; saw1.alpha = 1; saw1.oldAlpha = 1        menuGroup:insert(saw1)        menuGroup.saw1 = saw1        local onsaw2Touch = function(event)           if event.phase=="ended" then               local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( saw2_audio, {channel=myChannel} )              end           end        end --(10) regular layer        saw2 = ui.newButton{            defaultSrc=imgDir.."p29_saw2.png",            defaultX = 197,            defaultY = 141,            overSrc=imgDir.."p29_saw2.png",            overX = 197,            overY = 141,            onRelease=onsaw2Touch,            id="saw2Button"        }        saw2.x = 120; saw2.y = 138; saw2.alpha = 1; saw2.oldAlpha = 1        menuGroup:insert(saw2)        menuGroup.saw2 = saw2        local onsaw3Touch = function(event)           if event.phase=="ended" then               local myChannel = 4              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( saw3_audio, {channel=myChannel} )              end           end        end --(10) regular layer        saw3 = ui.newButton{            defaultSrc=imgDir.."p29_saw3.png",            defaultX = 157,            defaultY = 132,            overSrc=imgDir.."p29_saw3.png",            overX = 157,            overY = 132,            onRelease=onsaw3Touch,            id="saw3Button"        }        saw3.x = 633; saw3.y = 191; saw3.alpha = 1; saw3.oldAlpha = 1        menuGroup:insert(saw3)        menuGroup.saw3 = saw3        local onbsTouch = function(event)           if event.phase=="ended" then                  if showhide.alpha == 0 then                    transitionStash.newTransition_988 = transition.to( showhide, {alpha=showhide.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_988 = transition.to( showhide, {alpha=0, time=1000, delay=0})                 end              local myChannel = 5              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( bs_audio, {channel=myChannel} )              end           end        end --(10) regular layer        bs = ui.newButton{            defaultSrc=imgDir.."p29_bs.png",            defaultX = 114,            defaultY = 194,            overSrc=imgDir.."p29_bs.png",            overX = 114,            overY = 194,            onRelease=onbsTouch,            id="bsButton"        }        bs.x = 711; bs.y = 580; bs.alpha = 1; bs.oldAlpha = 1        menuGroup:insert(bs)        menuGroup.bs = bs --(2) regular layer        showhide = display.newImageRect( imgDir.. "p29_showhide.png", 393, 250 );        showhide.x = 504; showhide.y = 574; showhide.alpha = 1; showhide.oldAlpha = 1        menuGroup:insert(showhide)        menuGroup.showhide = showhide        local onpapercornerTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "fade" )             end             timerStash.newTimer_178 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        papercorner = ui.newButton{            defaultSrc=imgDir.."p29_papercorner.png",            defaultX = 72,            defaultY = 82,            overSrc=imgDir.."p29_papercorner.png",            overX = 72,            overY = 82,            onRelease=onpapercornerTouch,            id="papercornerButton"        }        papercorner.x = 732; papercorner.y = 983; papercorner.alpha = 1; papercorner.oldAlpha = 1        menuGroup:insert(papercorner)        menuGroup.papercorner = papercorner        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_30", "moveFromRight" )             end             timerStash.newTimer_216 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc=imgDir.."kwkbforward.png",            defaultX = 110,            defaultY = 87,            overSrc=imgDir.."kwkbforward.png",            overX = 110,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 476; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward        local onkwkBindexTouch = function(event)           if event.phase=="ended" then               local myChannel = 6              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end             local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "overFromTop" )             end             timerStash.newTimer_287 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc=imgDir.."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc=imgDir.."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_28", "moveFromLeft" )             end             timerStash.newTimer_359 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc=imgDir.."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc=imgDir.."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback        showhide.alpha = 0          local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (curPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_"..curPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (curPage < numPages) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_"..curPage+1, "moveFromRight")                 end              end           end        end        CH02PG5:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(saw1_audio); saw1_audio = nil                           audio.stop(3); audio.dispose(saw2_audio); saw2_audio = nil                           audio.stop(4); audio.dispose(saw3_audio); saw3_audio = nil                           audio.stop(5); audio.dispose(bs_audio); bs_audio = nil                           audio.stop(6); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 