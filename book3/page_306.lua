-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens         local path = system.pathForFile( "SpoonAndTheMoonPart3.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function() 

       navigation.DisplayDevelopmentVersion()

       menuGroup.navigator = navigation.InsertNavigation{}
        local CH21PG3  --(2) regular layer        CH21PG3 = display.newImageRect( imageDir.. "p306_ch21pg3.png", 768, 1024 );        CH21PG3.x = 384; CH21PG3.y = 512; CH21PG3.alpha = 1; CH21PG3.oldAlpha = 1        menuGroup:insert(CH21PG3)        menuGroup.CH21PG3 = CH21PG3 --pprcrnr--nav--navIn--nav         local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_".._G.kwk_currentPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_".._G.kwk_currentPage+1, "moveFromRight")                 end              end           end        end        CH21PG3:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 