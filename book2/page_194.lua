-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new() 
    local menuGroup = display.newGroup() 
    local disposeAudios     local disposeTweens     local shunday_audio = audio.loadSound(audioDir.."click.mp3" )     local path = system.pathForFile( "SpoonAndTheMoonPart2.txt", system.CachesDirectory ) 
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


local showhide         local shunday         local BG  --(2) regular layer        BG = display.newImageRect( imageDir.. "p194_ch13pg3.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onshundayTouch = function(event)           if event.phase=="ended" then                  if showhide.alpha == 0 then                    transitionStash.newTransition_586 = transition.to( showhide, {alpha=showhide.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_586 = transition.to( showhide, {alpha=0, time=1000, delay=0})                 end              local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( shunday_audio, {channel=myChannel} )              end           end        end --(10) regular layer        shunday = ui.newButton{            defaultSrc=imageDir.."p194_shunday.png",            defaultX = 209,            defaultY = 266,            overSrc=imageDir.."p194_shunday.png",            overX = 209,            overY = 266,            onRelease=onshundayTouch,            id="shundayButton"        }        shunday.x = 626; shunday.y = 614; shunday.alpha = 1; shunday.oldAlpha = 1        menuGroup:insert(shunday)        menuGroup.shunday = shunday --(2) regular layer        showhide = display.newImageRect( imageDir.. "p194_showhide.png", 387, 225 );        showhide.x = 361; showhide.y = 542; showhide.alpha = 1; showhide.oldAlpha = 1        menuGroup:insert(showhide)        menuGroup.showhide = showhide        showhide.alpha = 0 --flip   end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(shunday_audio); shunday_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 