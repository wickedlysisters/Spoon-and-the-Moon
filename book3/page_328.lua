-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local audio21_aud169 = audio.loadStream( audioDir.."audio21.mp3" )         local path = system.pathForFile( "SpoonAndTheMoonPart3.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function() 

       navigation.DisplayDevelopmentVersion()

       menuGroup.navigator = navigation.InsertNavigation{}
        local steph         local jenrose         local emilie         local james         local kri         local kate         local sheila         local mishal         local sarah         local slack         local troub         local katz         local BG  --(2) regular layer        BG = display.newImageRect( imageDir.. "p328_bg.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onkatzTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.MuseWorksUnlimited.com" )           end        end --(10) regular layer        katz = ui.newButton{            defaultSrc=imageDir.."p328_katz.png",            defaultX = 411,            defaultY = 29,            overSrc=imageDir.."p328_katz.png",            overX = 411,            overY = 29,            onRelease=onkatzTouch,            id="katzButton"        }        katz.x = 316; katz.y = 874; katz.alpha = 1; katz.oldAlpha = 1        menuGroup:insert(katz)        menuGroup.katz = katz        local ontroubTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.troubadoursofdivinebliss.com" )           end        end --(10) regular layer        troub = ui.newButton{            defaultSrc=imageDir.."p328_troub.png",            defaultX = 563,            defaultY = 44,            overSrc=imageDir.."p328_troub.png",            overX = 563,            overY = 44,            onRelease=ontroubTouch,            id="troubButton"        }        troub.x = 394; troub.y = 820; troub.alpha = 1; troub.oldAlpha = 1        menuGroup:insert(troub)        menuGroup.troub = troub        local onslackTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.theslackers.com" )           end        end --(10) regular layer        slack = ui.newButton{            defaultSrc=imageDir.."p328_slack.png",            defaultX = 529,            defaultY = 37,            overSrc=imageDir.."p328_slack.png",            overX = 529,            overY = 37,            onRelease=onslackTouch,            id="slackButton"        }        slack.x = 374; slack.y = 771; slack.alpha = 1; slack.oldAlpha = 1        menuGroup:insert(slack)        menuGroup.slack = slack        local onsarahTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.sarahsharp.com" )           end        end --(10) regular layer        sarah = ui.newButton{            defaultSrc=imageDir.."p328_sarah.png",            defaultX = 444,            defaultY = 28,            overSrc=imageDir.."p328_sarah.png",            overX = 444,            overY = 28,            onRelease=onsarahTouch,            id="sarahButton"        }        sarah.x = 334; sarah.y = 726; sarah.alpha = 1; sarah.oldAlpha = 1        menuGroup:insert(sarah)        menuGroup.sarah = sarah        local onmishalTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.strictly.com" )           end        end --(10) regular layer        mishal = ui.newButton{            defaultSrc=imageDir.."p328_mishal.png",            defaultX = 547,            defaultY = 31,            overSrc=imageDir.."p328_mishal.png",            overX = 547,            overY = 31,            onRelease=onmishalTouch,            id="mishalButton"        }        mishal.x = 385; mishal.y = 682; mishal.alpha = 1; mishal.oldAlpha = 1        menuGroup:insert(mishal)        menuGroup.mishal = mishal        local onsheilaTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.sheilamarshallmusic.com" )           end        end --(10) regular layer        sheila = ui.newButton{            defaultSrc=imageDir.."p328_sheila.png",            defaultX = 454,            defaultY = 29,            overSrc=imageDir.."p328_sheila.png",            overX = 454,            overY = 29,            onRelease=onsheilaTouch,            id="sheilaButton"        }        sheila.x = 340; sheila.y = 636; sheila.alpha = 1; sheila.oldAlpha = 1        menuGroup:insert(sheila)        menuGroup.sheila = sheila        local onkateTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.KateLarken.com" )           end        end --(10) regular layer        kate = ui.newButton{            defaultSrc=imageDir.."p328_kate.png",            defaultX = 562,            defaultY = 47,            overSrc=imageDir.."p328_kate.png",            overX = 562,            overY = 47,            onRelease=onkateTouch,            id="kateButton"        }        kate.x = 392; kate.y = 583; kate.alpha = 1; kate.oldAlpha = 1        menuGroup:insert(kate)        menuGroup.kate = kate        local onkriTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.kriandhettie.com" )           end        end --(10) regular layer        kri = ui.newButton{            defaultSrc=imageDir.."p328_kri.png",            defaultX = 465,            defaultY = 32,            overSrc=imageDir.."p328_kri.png",            overX = 465,            overY = 32,            onRelease=onkriTouch,            id="kriButton"        }        kri.x = 340; kri.y = 532; kri.alpha = 1; kri.oldAlpha = 1        menuGroup:insert(kri)        menuGroup.kri = kri        local onjamesTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.james-hicklin.com" )           end        end --(10) regular layer        james = ui.newButton{            defaultSrc=imageDir.."p328_james.png",            defaultX = 501,            defaultY = 47,            overSrc=imageDir.."p328_james.png",            overX = 501,            overY = 47,            onRelease=onjamesTouch,            id="jamesButton"        }        james.x = 361; james.y = 477; james.alpha = 1; james.oldAlpha = 1        menuGroup:insert(james)        menuGroup.james = james        local onemilieTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.milkymee.com" )           end        end --(10) regular layer        emilie = ui.newButton{            defaultSrc=imageDir.."p328_emilie.png",            defaultX = 583,            defaultY = 62,            overSrc=imageDir.."p328_emilie.png",            overX = 583,            overY = 62,            onRelease=onemilieTouch,            id="emilieButton"        }        emilie.x = 398; emilie.y = 415; emilie.alpha = 1; emilie.oldAlpha = 1        menuGroup:insert(emilie)        menuGroup.emilie = emilie        local onjenroseTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://www.jenrosemusic.net" )           end        end --(10) regular layer        jenrose = ui.newButton{            defaultSrc=imageDir.."p328_jenrose.png",            defaultX = 565,            defaultY = 45,            overSrc=imageDir.."p328_jenrose.png",            overX = 565,            overY = 45,            onRelease=onjenroseTouch,            id="jenroseButton"        }        jenrose.x = 392; jenrose.y = 348; jenrose.alpha = 1; jenrose.oldAlpha = 1        menuGroup:insert(jenrose)        menuGroup.jenrose = jenrose        local onstephTouch = function(event)           if event.phase=="ended" then                  system.openURL( "http://mailto:sdlugon@gmail.com" )           end        end --(10) regular layer        steph = ui.newButton{            defaultSrc=imageDir.."p328_steph.png",            defaultX = 549,            defaultY = 38,            overSrc=imageDir.."p328_steph.png",            overX = 549,            overY = 38,            onRelease=onstephTouch,            id="stephButton"        }        steph.x = 384; steph.y = 290; steph.alpha = 1; steph.oldAlpha = 1        menuGroup:insert(steph)        menuGroup.steph = steph --pprcrnr--nav--nav--nav         local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeTweens()                     director:changeScene( "page_".._G.kwk_currentPage-1, "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeTweens()                     director:changeScene("page_".._G.kwk_currentPage+1, "moveFromRight")                 end              end           end        end        BG:addEventListener("touch", flip)    end    drawScreen()    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    local myClosure_audio21_aud169 = function()       audio.play(audio21_aud169, {  channel=1, loops=-1, fadein=500 } )    end    timerStash.newTimer_169 = timer.performWithDelay(0, myClosure_audio21_aud169, 1)    return menuGroup end 