-- Code created by Kwik - Copyright: kwiksher.com 
                _G.kwk_currentPage = 2
                print("GoToMenu!")
                director:changeScene( "page_2", "fade" )
                print("GoForward!")
                _G.kwk_currentPage = _G.kwk_currentPage + 1
                _G.kwk_currentPage = 2
                print("GoToMenu!")
                director:changeScene( "page_2", "overFromTop" ) 
                print("GoBack!")
                _G.kwk_currentPage = _G.kwk_currentPage - 1