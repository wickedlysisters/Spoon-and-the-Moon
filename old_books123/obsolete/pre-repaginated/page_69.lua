-- Code created by Kwik - Copyright: kwiksher.com 
           defaultSrc= imgDir .."PageCornerGrey.png", 
           defaultX = 72, 
           defaultY = 80, 
           overSrc= imgDir .."PageCornerGrey.png", 
           overX = 72, 
           overY = 80, 
       --papercorner.x = 733; papercorner.y = 983;
       papercorner.alpha = 1; papercorner.oldAlpha = 1 

       crnrtxt = display.newText("" .. _G.kwk_currentPage .. "", 750, 1005, "Arbutus Slab", 20)
       crnrtxt:setFillColor(0,0,0) --black
