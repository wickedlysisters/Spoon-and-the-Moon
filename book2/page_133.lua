-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new() 
    local menuGroup = display.newGroup() 
    local disposeAudios     local disposeTweens     local wine_audio = audio.loadSound(audioDir.."glug.mp3" )     local path = system.pathForFile( "SpoonAndTheMoonPart2.txt", system.CachesDirectory ) 
    local file = io.open( path, "w+" ) 
    file:write( _G.kwk_currentPage ) 
    io.close( file ) 

    
local path = system.pathForFile( "SpoonAndTheMoonPart2.txt", system.CachesDirectory ) 
local file = io.open( path, "w+" ) 
file:write( _G.kwk_currentPage ) 
io.close( file ) 

local drawScreen = function()

		 navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}


local wine         local BG  --(2) regular layer        BG = display.newImageRect( imageDir.. "p133_ch9pg6.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onwineTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( wine_audio, {channel=myChannel} )              end           end        end --(10) regular layer        wine = ui.newButton{            defaultSrc=imageDir.."p133_wine.png",            defaultX = 169,            defaultY = 433,            overSrc=imageDir.."p133_wine.png",            overX = 169,            overY = 433,            onRelease=onwineTouch,            id="wineButton"        }        wine.x = 125; wine.y = 751; wine.alpha = 1; wine.oldAlpha = 1        menuGroup:insert(wine)        menuGroup.wine = wine --flip   end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(wine_audio); wine_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 