-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local numPages = 330     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local lion_aud774 = audio.loadSound( audioDir.."lion.mp3" )     local kwkBindex_audio = audio.loadSound(audioDir.."indexflip.mp3" )     local curPage = 9     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( curPage )     io.close( file )     local drawScreen = function()        local kwkBback         local kwkBindex         local kwkBforward         local Layer1         local BG  --(2) regular layer        BG = display.newImageRect( imgDir.. "p9_bg.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onLayer1Touch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "fade" )             end             timerStash.newTimer_382 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        Layer1 = ui.newButton{            defaultSrc=imgDir.."p9_layer1.png",            defaultX = 72,            defaultY = 80,            overSrc=imgDir.."p9_layer1.png",            overX = 72,            overY = 80,            onRelease=onLayer1Touch,            id="Layer1Button"        }        Layer1.x = 732; Layer1.y = 984; Layer1.alpha = 1; Layer1.oldAlpha = 1        menuGroup:insert(Layer1)        menuGroup.Layer1 = Layer1        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_10", "moveFromRight" )             end             timerStash.newTimer_415 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc=imgDir.."kwkbforward.png",            defaultX = 111,            defaultY = 87,            overSrc=imgDir.."kwkbforward.png",            overX = 111,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 475; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward        local onkwkBindexTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_2", "overFromTop" )             end             timerStash.newTimer_474 = timer.performWithDelay(0, myClosure_switch, 1)              local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc=imgDir.."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc=imgDir.."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 director:changeScene( "page_8", "moveFromLeft" )             end             timerStash.newTimer_514 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc=imgDir.."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc=imgDir.."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback          local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (curPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_"..curPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (curPage < numPages) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_"..curPage+1, "moveFromRight")                 end              end           end        end        BG:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(lion_aud774); lion_aud774 =nil       audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    local myClosure_lion_aud774 = function()       audio.play(lion_aud774, {  channel=2, loops=-2, fadein=500 } )    end    timerStash.newTimer_774 = timer.performWithDelay(0, myClosure_lion_aud774, 1)    return menuGroup end 