-- Code created by Kwik - Copyright: kwiksher.com 
    print("The current page is: " .. _G.kwk_currentPage) 

           defaultSrc= imgDir .."PageCornerGrey.png", 
           defaultX = 72, 
           defaultY = 80, 
           overSrc= imgDir .."PageCornerGrey.png", 
           overX = 72, 
           overY = 80, 
       --papercorner.x = 740; papercorner.y = 991;
       papercorner.alpha = 1; papercorner.oldAlpha = 1 

       crnrtxt = display.newText("" .. _G.kwk_currentPage .. "", 750, 1005, "Arbutus Slab", 20)
       crnrtxt:setFillColor(0,0,0) --black
