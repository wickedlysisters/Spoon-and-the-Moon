-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local toast_audio = audio.loadSound(audioDir.."toaster.mp3" )         local path = system.pathForFile( "SpoonAndTheMoonPart3.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function() 

       navigation.DisplayDevelopmentVersion()

       menuGroup.navigator = navigation.InsertNavigation{}
        local toast         local CH19PG14  --(2) regular layer        CH19PG14 = display.newImageRect( imageDir.. "p275_ch19pg14.png", 768, 1024 );        CH19PG14.x = 384; CH19PG14.y = 512; CH19PG14.alpha = 1; CH19PG14.oldAlpha = 1        menuGroup:insert(CH19PG14)        menuGroup.CH19PG14 = CH19PG14        local ontoastTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( toast_audio, {channel=myChannel} )              end           end        end --(10) regular layer        toast = ui.newButton{            defaultSrc=imageDir.."p275_toast.png",            defaultX = 420,            defaultY = 450,            overSrc=imageDir.."p275_toast.png",            overX = 420,            overY = 450,            onRelease=ontoastTouch,            id="toastButton"        }        toast.x = 568; toast.y = 683; toast.alpha = 1; toast.oldAlpha = 1        menuGroup:insert(toast)        menuGroup.toast = toast --pprcrnr--nav--navIn--nav         local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_".._G.kwk_currentPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_".._G.kwk_currentPage+1, "moveFromRight")                 end              end           end        end        CH19PG14:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(toast_audio); toast_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 