-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.4.6 

module(..., package.seeall) 
 function new()     local menuGroup = display.newGroup()     local udder_audio = audio.loadSound(audioDir .. "moo.mp3", system.ResourceDirectory) 
    statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page") 
    statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage) 

    local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.CachesDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()

		navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}
       local showhide         local udder         local BG         BG = display.newImageRect(imageDir .. "p104_ch7pg6.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onudderTouch = function(event)           if event.phase=="ended" then                  if showhide.alpha == 0 then                    transitionStash.newTransition_847 = transition.to( showhide, {alpha=showhide.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_847 = transition.to( showhide, {alpha=0, time=1000, delay=0})                 end              local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( udder_audio, {channel=myChannel} )              end           end        end        udder = ui.newButton{            defaultSrc= imageDir .."p104_udder.png",            defaultX = 146,            defaultY = 464,            overSrc= imageDir .."p104_udder.png",            overX = 146,            overY = 464,            onRelease=onudderTouch,            id="udderButton"        }        udder.x = 695; udder.y = 550; udder.alpha = 1; udder.oldAlpha = 1        menuGroup:insert(udder)        menuGroup.udder = udder        showhide = display.newImageRect(imageDir .. "p104_showhide.png", 321, 159 );        showhide.x = 541; showhide.y = 473; showhide.alpha = 1; showhide.oldAlpha = 1        menuGroup:insert(showhide)        menuGroup.showhide = showhide              showhide.alpha = 0 
	end
   drawScreen()    return menuGroup end 