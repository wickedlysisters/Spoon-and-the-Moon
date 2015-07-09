-- Book created by Kwik for Adobe Photoshop  - Developed by Kwiksher -- Copyright (C) 2012 kwiksher.com. All Rights Reserved. -- uses Director class, by Ricardo Rauber/Jonathan Beebe -- uses DMC classes, by David McCuskey -- Exported on Wed Jun 12 2013 14:36:36 GMT-0400 -- uses gTween class, by Josh Tynjala (modified by Kwiksher) -- Edited, reformatted, and developed by George Tiser--Changelog--V1.01: Fixed missing navigation links--V1.02: NA--V2.00: Split book to make book 1, rewrite directory shortcuts to route content properly_G.kwk_readMe = 0 _G.kwk_currentPage = 1 -- This functions as the initial page._G.kwk_menuPage = 2_G.kwk_lastPage = 117_G.kwk_ShowDebugOutput = 1_G.kwk_firstPageOfChapter = {3, 25, 47, 60, 70, 88, 99, 115}-- The last 'chapter' above is the sneak preview for Part II.if _G.kwk_ShowDebugOutput then  print("")  print("")  print("")  print("")  print("")  print("")  print("Global page data initialized.")  print("")  print("_G.kwk_currentPage: " .. _G.kwk_currentPage)  print("_G.kwk_menuPage: " .. _G.kwk_menuPage)  print("_G.kwk_lastPage: " .. _G.kwk_lastPage)  print("")end--ifdirector = require("director") Gesture = require("dmc_gesture") MultiTouch = require("dmc_multitouch") system.activate("multitouch") json = require("json") ui = require("ui")local gtween = require("gtween") --display.setStatusBar( display.HiddenStatusBar ) display.setStatusBar( display.DefaultStatusBar ) imgDir = "images/" audioDir = "audio/" videoDir = "" -- cannot be usedspriteDir = "" -- doesn't get used_G.lang = "" kBidi = false kAutoPlay = 0 initPage = _G.kwk_currentPage -- Originally set to 1.local goPage = _G.kwk_currentPage-- Json code for external variable loading local jsonFile = function(filename )    local path = system.pathForFile(filename, system.DocumentsDirectory )    local contents    local file = io.open( path, "r" )    if file then       contents = file:read("*a")       io.close(file)    end    return contents end -- Variable saving function local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory ) local file = io.open( path, "r" ) if file then else    local file = io.open( path, "w+b" )    file:write("{{}}")    io.close(file) end -- Loads vars kwkVar = json.decode( jsonFile("kwkVars.json") ) -- Check for saved variables function kwkVarCheck(variable)    kwkVar = json.decode( jsonFile("kwkVars.json") )    local found = nil    if kwkVar ~= nil then       for i = 1, #kwkVar do          if (variable == kwkVar[i].name) then             found = kwkVar[i].value; break          end       end    end   return (found) end -- Bookmark function local path = system.pathForFile( "book.txt", system.DocumentsDirectory ) local file = io.open( path, "r" ) if file then    goPage = file:read("*l")    kBookmark = file:read("*l")    if kBookmark == 1 then initPage = goPage end    io.close(file) else    local file = io.open( path, "w+b" )    file:write( "1\n1" )    kBookmark = 1    io.close(file) end --Create a main grouplocal mainGroup = display.newGroup()-- Main functionlocal function main()  -- Add the group from Director calls  mainGroup:insert(director.directorView)   -- This is how Corona knows to begin with page_1.lua  if _G.kwk_ShowDebugOutput then    print("")    print("Opening first page from main().")    print("")  end--if  director:changeScene("page_" .. _G.kwk_currentPage)   return trueend--Clear timers and transitionstimerStash = {}transitionStash = {}gtStash = {}function cancelAllTimers()    local k, v    for k,v in pairs(timerStash) do        timer.cancel( v )        v = nil; k = nil    end    timerStash = nil    timerStash = {}endfunction cancelAllTransitions()    local k, v    for k,v in pairs(transitionStash) do        transition.cancel( v )        v = nil; k = nil    end    transitionStash = nil    transitionStash = {}end--cancel all gtweensfunction cancelAllTweens()    local k, v    for k,v in pairs(gtStash) do        v:pause();        v = nil; k = nil    end    gtStash = nil    gtStash = {}end--save all permanent variablesfunction zeroesKwikVars() --restart the file to save variable content	local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory )	local contents	local file = io.open( path, "w+b" )	if file then	   contents = file:write( "{{}}" )	   io.close( file )	-- close the file after using it	endendfunction saveKwikVars(toSave) --toSave is a table with contents    local varTab={}	--loop current kwkVar content (contains ALL variables saved)	local found = nil	local jsonString		--checks if current file is empty or not	local path = system.pathForFile( "kwkVars.json", system.DocumentsDirectory )	local contents	--check if file exists	local file = io.open( path, "r" )	if file then	    --reads to check if original content is empty == {{}}	    local test = file:read("*l") 	    if (test=="{{}}") then	        -- kwkVar.json is empty. Recreates the file with the new content	    	local file = io.open( path, "w+b" )	    	varTab[1] = {["name"] = toSave[1],["value"] = toSave[2]}			jsonString = json.encode( varTab )			contents = file:write( jsonString )			io.close( file )	    else	        --there are already variables saved in the kwkVars.json file	    	local file = io.open( path, "w" )	    	local ts = 0		    for i = 1,#kwkVar do		      if (toSave[1] == kwkVar[i].name) then				kwkVar[i].value = toSave[2]				varTab[i] = {["name"] = kwkVar[i].name,["value"] = kwkVar[i].value}				ts = 1			  else				varTab[i] = {["name"] = kwkVar[i].name,["value"] = kwkVar[i].value}			  end		    end		    if (ts == 0) then --variable not in the file yet		    	local x = #kwkVar		    	x = x + 1			    varTab[x] = {["name"] = toSave[1],["value"] = toSave[2]}			end		    jsonString = json.encode( varTab )	    	contents = file:write( jsonString )			io.close( file )	    end	    	    	else	    --re-creation scenario	    zeroesKwikVars()	end	kwkVar = json.decode( jsonFile( "kwkVars.json" ) )		end-- Beginmain()