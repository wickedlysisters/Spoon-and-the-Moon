-- Code created by Kwik - Copyright: kwiksher.com 
    print("The deprecated curPage is:" .. curPage) 
    print("The current page is: " .. _G.kwk_currentPage) 
    local path = system.pathForFile( "book.txt", system.DocumentsDirectory ) 
                _G.kwk_currentPage = 2
                print("GoToMenu!")
                director:changeScene( "page_2", "overFromTop" ) 
          if event.phase=="ended" then