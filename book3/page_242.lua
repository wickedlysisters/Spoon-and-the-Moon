-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local wish_audio = audio.loadSound(audioDir.."v2.mp3" )         local path = system.pathForFile( "SpoonAndTheMoonPart3.txt", system.CachesDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )
    local drawScreen = function() 

       navigation.DisplayDevelopmentVersion()

       menuGroup.navigator = navigation.InsertNavigation{}
        local wish         local CH17PG11  --(2) regular layer        CH17PG11 = display.newImageRect( imageDir.. "p242_ch17pg11.png", 768, 1024 );        CH17PG11.x = 384; CH17PG11.y = 512; CH17PG11.alpha = 1; CH17PG11.oldAlpha = 1        menuGroup:insert(CH17PG11)        menuGroup.CH17PG11 = CH17PG11        local onwishTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( wish_audio, {channel=myChannel} )              end           end        end --(10) regular layer        wish = ui.newButton{            defaultSrc=imageDir.."p242_wish.png",            defaultX = 536,            defaultY = 52,            overSrc=imageDir.."p242_wish.png",            overX = 536,            overY = 52,            onRelease=onwishTouch,            id="wishButton"        }        wish.x = 369; wish.y = 402; wish.alpha = 1; wish.oldAlpha = 1        menuGroup:insert(wish)        menuGroup.wish = wish --pprcrnr--nav--navIn--nav         local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_".._G.kwk_currentPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_".._G.kwk_currentPage+1, "moveFromRight")                 end              end           end        end        CH17PG11:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(wish_audio); wish_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 