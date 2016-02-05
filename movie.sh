
#!/bin/bash
var={"bye bye"}
clear
        echo "Menu "
        echo "1. Download Movie "
        echo "2. Sync Files to AWS S3"
        echo "3. Quit"
        echo "Enter your Choice "
        read Choice
        case "$Choice" in
           1) echo "Enter Url to download "
              read f1  
              if [ -n $f1  ]
              then
              wget -r -l2 --no-clobber --convert-links --page-requisites --html-extension --random-wait -p -K -E -e robots=off -U "Mozilla/5.0 (X11; U; Linux; en-US; rv:1.9.1.16) Gecko/20110929 Firefox/3.5.16" '"' $f1
              else
                    echo "$f1 is not valid"
              fi
              ;;
          2)
             echo " Syncing Files to AWS S3"
                aws s3 sync /etc/media s3://djg-movies/media;;

          3)
             echo "Exiting..........................................."
               echo "$var";exit;;
     esac


