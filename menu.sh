#!/bin/bash

        clear
        echo "Menu "
        echo "0. List files" 
        echo "1. Copy a File "
        echo "2. Remove a file "
        echo "3. Move a file"
        echo "4. Quit"
        echo "Enter your Choice"
        read Choice
        case "$Choice" in
           0) echo "list files"
                ls -la | tee;;
           1) echo "Enter File name to copy "
              read f1
              echo "Enter FIle name "
          read f2

          if [ -f f1 ]

          then
                  cp $f1 $f2
              else
                     echo "$f1 does not exist"
              fi
              ;;
          2) echo "Enter the File to be removed "
             read r1
             if [ -f r1 ]
             then
                   rm -i $r1
             else 
                  echo "$r1 file does not exist "
             fi
             ;;
         3)
            echo "Enter File name to move"
            read s1
            echo "Enter destination"
            read s2
            if [ -f s1 ]
             then 
                 if [ -d s2 ]
                 then
                      mv $s1 $s2
                 fi
             else
                 echo "$s1 does not exist"
            fi
            ;;
         4) 
             echo "Exit......."
             exit;;
        esac

