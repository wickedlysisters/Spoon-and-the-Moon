-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local numPages = 330     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local udder_audio = audio.loadSound(audioDir.."moo.mp3" )     local udder2_audio = audio.loadSound(audioDir.."machine.mp3" )     local udder3_audio = audio.loadSound(audioDir.."cowbell.mp3" )     local kwkBindex_audio = audio.loadSound(audioDir.."indexflip.mp3" )     local curPage = 111     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( curPage )     io.close( file )     local drawScreen = function()        local kwkBback         local kwkBindex         local kwkBforward         local papercorner         local udder3         local udder2         local udder         local CH7PG14  --(2) regular layer        CH7PG14 = display.newImageRect( imgDir.. "p111_ch7pg14.png", 768, 1024 );        CH7PG14.x = 384; CH7PG14.y = 512; CH7PG14.alpha = 1; CH7PG14.oldAlpha = 1        menuGroup:insert(CH7PG14)        menuGroup.CH7PG14 = CH7PG14        local onudderTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( udder_audio, {channel=myChannel} )              end           end        end --(10) regular layer        udder = ui.newButton{            defaultSrc=imgDir.."p111_udder.png",            defaultX = 149,            defaultY = 124,            overSrc=imgDir.."p111_udder.png",            overX = 149,            overY = 124,            onRelease=onudderTouch,            id="udderButton"        }        udder.x = 126; udder.y = 842; udder.alpha = 1; udder.oldAlpha = 1        menuGroup:insert(udder)        menuGroup.udder = udder        local onudder2Touch = function(event)           if event.phase=="ended" then               local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( udder2_audio, {channel=myChannel} )              end           end        end --(10) regular layer        udder2 = ui.newButton{            defaultSrc=imgDir.."p111_udder2.png",            defaultX = 192,            defaultY = 152,            overSrc=imgDir.."p111_udder2.png",            overX = 192,            overY = 152,            onRelease=onudder2Touch,            id="udder2Button"        }        udder2.x = 160; udder2.y = 141; udder2.alpha = 1; udder2.oldAlpha = 1        menuGroup:insert(udder2)        menuGroup.udder2 = udder2        local onudder3Touch = function(event)           if event.phase=="ended" then               local myChannel = 4              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( udder3_audio, {channel=myChannel} )              end           end        end --(10) regular layer        udder3 = ui.newButton{            defaultSrc=imgDir.."p111_udder3.png",            defaultX = 139,            defaultY = 180,            overSrc=imgDir.."p111_udder3.png",            overX = 139,            overY = 180,            onRelease=onudder3Touch,            id="udder3Button"        }        udder3.x = 698; udder3.y = 658; udder3.alpha = 1; udder3.oldAlpha = 1        menuGroup:insert(udder3)        menuGroup.udder3 = udder3        local onpapercornerTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "fade" )             end             timerStash.newTimer_448 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        papercorner = ui.newButton{            defaultSrc=imgDir.."p111_papercorner.png",            defaultX = 72,            defaultY = 80,            overSrc=imgDir.."p111_papercorner.png",            overX = 72,            overY = 80,            onRelease=onpapercornerTouch,            id="papercornerButton"        }        papercorner.x = 732; papercorner.y = 984; papercorner.alpha = 1; papercorner.oldAlpha = 1        menuGroup:insert(papercorner)        menuGroup.papercorner = papercorner        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_112", "moveFromRight" )             end             timerStash.newTimer_504 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc=imgDir.."kwkbforward.png",            defaultX = 110,            defaultY = 87,            overSrc=imgDir.."kwkbforward.png",            overX = 110,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 476; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward        local onkwkBindexTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "overFromTop" )             end             timerStash.newTimer_568 = timer.performWithDelay(0, myClosure_switch, 1)              local myChannel = 5              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc=imgDir.."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc=imgDir.."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_110", "moveFromLeft" )             end             timerStash.newTimer_611 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc=imgDir.."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc=imgDir.."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback          local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (curPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_"..curPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (curPage < numPages) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_"..curPage+1, "moveFromRight")                 end              end           end        end        CH7PG14:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(udder_audio); udder_audio = nil                           audio.stop(3); audio.dispose(udder2_audio); udder2_audio = nil                           audio.stop(4); audio.dispose(udder3_audio); udder3_audio = nil                           audio.stop(5); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 