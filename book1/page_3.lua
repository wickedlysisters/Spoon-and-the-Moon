-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local numPages = 114     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local kwkBindex_audio = audio.loadSound(audioDir.."indexflip.mp3" )     local curPage = 3     print("The deprecated curPage is:" .. curPage)     print("The current page is: " .. _G.kwk_currentPage)     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( curPage )     io.close( file )     local drawScreen = function()        local bubble4         local bubble3         local bubble2         local bubble1         local kwkBback         local kwkBindex         local kwkBforward         local pagen         local BG  --(2) regular layer        BG = display.newImageRect( imgDir.. "p3_bg.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onpagenTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens() 
                _G.kwk_currentPage = 2
                print("GoToMenu!")
                director:changeScene( "page_2", "fade" )            end             timerStash.newTimer_945 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        pagen = ui.newButton{            defaultSrc=imgDir.."p3_pagen.png",            defaultX = 72,            defaultY = 80,            overSrc=imgDir.."p3_pagen.png",            overX = 72,            overY = 80,            onRelease=onpagenTouch,            id="pagenButton"        }        pagen.x = 732; pagen.y = 984; pagen.alpha = 1; pagen.oldAlpha = 1        menuGroup:insert(pagen)        menuGroup.pagen = pagen        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("GoForward!")                _G.kwk_currentPage = _G.kwk_currentPage + 1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromRight" )             end             timerStash.newTimer_034 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc=imgDir.."kwkbforward.png",            defaultX = 111,            defaultY = 87,            overSrc=imgDir.."kwkbforward.png",            overX = 111,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 475; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward        local onkwkBindexTouch = function(event)           if event.phase=="ended" then               local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end             local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 _G.kwk_currentPage = 2                print("GoToMenu!")                director:changeScene( "page_2", "overFromTop" )             end             timerStash.newTimer_185 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc=imgDir.."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc=imgDir.."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event)           if event.phase=="ended" then            local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 print("GoBack!")                _G.kwk_currentPage = _G.kwk_currentPage - 1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromLeft" )             end             timerStash.newTimer_249 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc=imgDir.."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc=imgDir.."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback --(2) regular layer        bubble1 = display.newImageRect( imgDir.. "p3_bubble1.png", 164, 171 );        bubble1.x = 238; bubble1.y = 1297; bubble1.alpha = 1; bubble1.oldAlpha = 1        menuGroup:insert(bubble1)        menuGroup.bubble1 = bubble1 --(2) regular layer        bubble2 = display.newImageRect( imgDir.. "p3_bubble2.png", 78, 81 );        bubble2.x = 531; bubble2.y = 1234; bubble2.alpha = 1; bubble2.oldAlpha = 1        menuGroup:insert(bubble2)        menuGroup.bubble2 = bubble2 --(2) regular layer        bubble3 = display.newImageRect( imgDir.. "p3_bubble3.png", 32, 33 );        bubble3.x = 461; bubble3.y = 1224; bubble3.alpha = 1; bubble3.oldAlpha = 1        menuGroup:insert(bubble3)        menuGroup.bubble3 = bubble3 --(2) regular layer        bubble4 = display.newImageRect( imgDir.. "p3_bubble4.png", 32, 33 );        bubble4.x = 191; bubble4.y = 1224; bubble4.alpha = 1; bubble4.oldAlpha = 1        menuGroup:insert(bubble4)        menuGroup.bubble4 = bubble4        --2        gtStash.gt_bubble4_359= gtween.new( bubble4, 13, { x = 191, y = -284, rotation = 0, xScale = 1, yScale = 1, alpha=1}, {ease = gtween.easing.linear, repeatCount = math.huge, reflect = false,  delay=5})        --2        gtStash.gt_bubble3_370= gtween.new( bubble3, 13, { x = 461, y = -284, rotation = 0, xScale = 1, yScale = 1, alpha=1}, {ease = gtween.easing.linear, repeatCount = math.huge, reflect = false,  delay=3})        --2        gtStash.gt_bubble2_380= gtween.new( bubble2, 12, { x = 531, y = -260, rotation = 0, xScale = 1, yScale = 1, alpha=1}, {ease = gtween.easing.linear, repeatCount = math.huge, reflect = false,  delay=5})        local onEndbubble1_391 = function()            bubble1.isVisible = false;            bubble1.x = 238; bubble1.y = 1297;            bubble1.xScale = 1;bubble1.yScale = 1;            bubble1.alpha = 1; bubble1.rotation = 0            bubble1.isVisible = true;         end        --1 --1        gtStash.gt_bubble1_391= gtween.new( bubble1, 12, { x = 259, y = -215, rotation = 0, xScale = 1, yScale = 1, alpha=1}, {ease = gtween.easing.linear, repeatCount = math.huge, reflect = false,  delay=7, onComplete = onEndbubble1_391 })        local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (curPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_"..curPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (curPage < numPages) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_"..curPage+1, "moveFromRight")                 end              end           end        end        BG:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 