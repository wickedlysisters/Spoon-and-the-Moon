-- Code created by Kwik - Copyright: kwiksher.com 
      devtxt2 = display.newText(_G.kwk_DebugText2_t, _G.kwk_DebugText2_x, _G.kwk_DebugText2_y, _G.kwk_DebugText2_w, _G.kwk_DebugText2_h, _G.kwk_DebugText2_f, _G.kwk_DebugText2_s); devtxt2:setFillColor(_G.kwk_DebugText2_cr,_G.kwk_DebugText2_cg,_G.kwk_DebugText2_cb); devtxt2.alpha = 1
      devtxt3 = display.newText(_G.kwk_DebugText3_t, _G.kwk_DebugText3_x, _G.kwk_DebugText3_y, _G.kwk_DebugText3_w, _G.kwk_DebugText3_h, _G.kwk_DebugText3_f, _G.kwk_DebugText3_s); devtxt3:setFillColor(_G.kwk_DebugText3_cr,_G.kwk_DebugText3_cg,_G.kwk_DebugText3_cb); devtxt3.alpha = 1


local crnrtxtoffset = 730; if _G.kwk_currentPage < 99 then crnrtxtoffset = 737 end; if _G.kwk_currentPage < 9 then crnrtxtoffset = 745 end
crnrtxt = display.newText("" .. _G.kwk_currentPage .. "", crnrtxtoffset, 995, "Arbutus Slab", 20); crnrtxt:setFillColor(0,0,0)
--TEXTFORPAGENUMEND


