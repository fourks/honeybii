(honeybii)[http://honeybii.com]
==========

honeybii is a tool that converts images to ascii art.

This project's secondary reason, below FUN, is to help me learn Ruby. If you see anything that doesn't particularly jive with The Ruby Way, open an issue! Or submit a Pull Request!

usage
----------

    Usage: honeybii.rb [options]
        -i, --image FILENAME      Name of image file to convert (png|gif|jpg)
        -s, --pixel-size PIXELS   Size of image chunks to process into ascii (smaller => more detail)

**examples:**

- `$ ./honeybii.rb -i tests/images/honeybees.jpg`
- `$ ./honeybii.rb -i tests/images/starry_night.JPG -s 2`
- `$ ./honeybii.rb -i tests/images/mona_lisa.Jpg -s 400`

current features
----------

image => shaded ascii art

planned features
----------

image => line ascii art  
colored ascii (as html)

             +=             .*:        
             .:~.--.    ..  +:.        
    +++:-.    :V~::=+--+::~+V.     .--.
    =--:+=+~  ~8: -V%88#+ .$V   -:=+=++
    +--::::=*~.Vx =@@@@@V :#: ~===:--.+
    -+~~~:::+=x=#Y=V=++Yx+#x:===:=~. ~:
     -:..~::=~+Y#@$~.  -=#$Y=~+:::~ -: 
      ~:--=+++~:=V#+    x#V*+==-+-.-:. 
       -:+++=**xY$$*.  .V$Yx==*++:+:.  
          .~+Y*=+*$+--..*$x**Y=+~..    
         .+~-+:--==*::::*:=::*~-~~     
         .+~:::::.~#$%8#x ~+~:~-~:     
          -~:#V--+=*YVx==*~-=Y=:-      
            -$+-Y%x....-x@$:-$=        
           .=-.$8Y%$Y#8%@$V8--=.       
           ~= ~%$*%x=@%%8*x@x =-       
              :%*+%x=%%%@Y-#Y .        
              V@+-$x=###$+ $%:         
             -8@+ Y#*8888~.#@=         
             .$$. ~$*$8#*  x@+         
              +:   +Y#%$-  :#-         
              :Y-   ~x=.   ~=          
              -:.          ==          

