-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local audio10_aud085 = audio.loadStream( audioDir.."audio10.mp3" )     local path = system.pathForFile( "SpoonAndTheMoonPart2.txt", system.CachesDirectory ) 
    local file = io.open( path, "w+" ) 
    file:write( _G.kwk_currentPage ) 
    io.close( file ) 

    
local path = system.pathForFile( "SpoonAndTheMoonPart2.txt", system.CachesDirectory ) 
local file = io.open( path, "w+" ) 
file:write( _G.kwk_currentPage ) 
io.close( file ) 

local drawScreen = function()		 navigation.DisplayDevelopmentVersion()		menuGroup.navigator = navigation.InsertNavigation{}local chapter10titlep  --(2) regular layer        chapter10titlep = display.newImageRect( imageDir.. "p144_chapter10titlep.png", 768, 1024 );        chapter10titlep.x = 384; chapter10titlep.y = 512; chapter10titlep.alpha = 1; chapter10titlep.oldAlpha = 1        menuGroup:insert(chapter10titlep)        menuGroup.chapter10titlep = chapter10titlep --flip   end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(audio10_aud085); audio10_aud085 =nil       audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    local myClosure_audio10_aud085 = function()       audio.play(audio10_aud085, {  channel=2, loops=-1, fadein=500 } )    end    timerStash.newTimer_085 = timer.performWithDelay(0, myClosure_audio10_aud085, 1)    return menuGroup end 