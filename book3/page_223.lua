-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local ciggar_audio = audio.loadSound(audioDir.."scratch.mp3" )         local path = system.pathForFile( "SpoonAndTheMoonPart3.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function() 

       navigation.DisplayDevelopmentVersion()

       menuGroup.navigator = navigation.InsertNavigation{}
        local ciggar         local CH15PG15  --(2) regular layer        CH15PG15 = display.newImageRect( imageDir.. "p223_ch15pg15.png", 768, 1024 );        CH15PG15.x = 384; CH15PG15.y = 512; CH15PG15.alpha = 1; CH15PG15.oldAlpha = 1        menuGroup:insert(CH15PG15)        menuGroup.CH15PG15 = CH15PG15        local onciggarTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( ciggar_audio, {channel=myChannel} )              end           end        end --(10) regular layer        ciggar = ui.newButton{            defaultSrc=imageDir.."p223_ciggar.png",            defaultX = 101,            defaultY = 75,            overSrc=imageDir.."p223_ciggar.png",            overX = 101,            overY = 75,            onRelease=onciggarTouch,            id="ciggarButton"        }        ciggar.x = 389; ciggar.y = 127; ciggar.alpha = 1; ciggar.oldAlpha = 1        menuGroup:insert(ciggar)        menuGroup.ciggar = ciggar --pprcrnr--nav--navIn--nav         local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_".._G.kwk_currentPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_".._G.kwk_currentPage+1, "moveFromRight")                 end              end           end        end        CH15PG15:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(ciggar_audio); ciggar_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 