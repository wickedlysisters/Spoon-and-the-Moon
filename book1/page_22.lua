-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.4.6 

module(..., package.seeall) 
 function new()     local menuGroup = display.newGroup()     local blue_audio = audio.loadSound(audioDir .. "click.mp3", system.ResourceDirectory) 
    statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page") 
    statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage) 

    local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.CachesDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()

		navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}
       local showhide         local blue         local BG         BG = display.newImageRect(imageDir .. "p43_ch02pg19.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onblueTouch = function(event)           if event.phase=="ended" then                  if showhide.alpha == 0 then                    transitionStash.newTransition_533 = transition.to( showhide, {alpha=showhide.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_533 = transition.to( showhide, {alpha=0, time=1000, delay=0})                 end              local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( blue_audio, {channel=myChannel} )              end           end        end        blue = ui.newButton{            defaultSrc= imageDir .."p43_blue.png",            defaultX = 376,            defaultY = 250,            overSrc= imageDir .."p43_blue.png",            overX = 376,            overY = 250,            onRelease=onblueTouch,            id="blueButton"        }        blue.x = 271; blue.y = 742; blue.alpha = 1; blue.oldAlpha = 1        menuGroup:insert(blue)        menuGroup.blue = blue        showhide = display.newImageRect(imageDir .. "p43_showhide.png", 521, 346 );        showhide.x = 278; showhide.y = 472; showhide.alpha = 1; showhide.oldAlpha = 1        menuGroup:insert(showhide)        menuGroup.showhide = showhide              showhide.alpha = 0 
	end
   drawScreen()    return menuGroup end 