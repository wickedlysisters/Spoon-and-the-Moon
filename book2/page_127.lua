-- Code created by Kwik - Copyright: kwiksher.com 

local crnrtxtoffset = 730; if curPage < 99 then crnrtxtoffset = 737 end; if curPage < 9 then crnrtxtoffset = 745 end
crnrtxt = display.newText("" .. curPage .. "", crnrtxtoffset, 995, "Arbutus Slab", 20); crnrtxt:setFillColor(0,0,0)
 