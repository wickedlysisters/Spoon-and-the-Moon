-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local ml_audio = audio.loadSound(audioDir.."v14.mp3" )         local path = system.pathForFile( "SpoonAndTheMoonPart3.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function() 

       navigation.DisplayDevelopmentVersion()

       menuGroup.navigator = navigation.InsertNavigation{}
        local ml         local CH18PG16  --(2) regular layer        CH18PG16 = display.newImageRect( imageDir.. "p260_ch18pg16.png", 768, 1024 );        CH18PG16.x = 384; CH18PG16.y = 512; CH18PG16.alpha = 1; CH18PG16.oldAlpha = 1        menuGroup:insert(CH18PG16)        menuGroup.CH18PG16 = CH18PG16        local onmlTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( ml_audio, {channel=myChannel} )              end           end        end --(10) regular layer        ml = ui.newButton{            defaultSrc=imageDir.."p260_ml.png",            defaultX = 503,            defaultY = 61,            overSrc=imageDir.."p260_ml.png",            overX = 503,            overY = 61,            onRelease=onmlTouch,            id="mlButton"        }        ml.x = 362; ml.y = 349; ml.alpha = 1; ml.oldAlpha = 1        menuGroup:insert(ml)        menuGroup.ml = ml --pprcrnr--nav--navIn--nav         local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_".._G.kwk_currentPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_".._G.kwk_currentPage+1, "moveFromRight")                 end              end           end        end        CH18PG16:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(ml_audio); ml_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 