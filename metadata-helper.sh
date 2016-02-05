#######################################################
# installs metadata helper tool
######################################################
#!/bin/bash
var=bye,bye
echo " installing metadata helper tool"

wget http://s3.amazonaws.com/ec2metadata/ec2-metadata
chmod u+x ec2-metadata.1
mv ec2-metadata.1 /usr/bin/
#####################################################
Menu to get metadata
#####################################################
  clear
  echo  "--------------------------------" 
  echo  "Menu for AWS metadat helper tool"
  echo  "--------------------------------"
  echo	"0.Show all metadata information for this host (also default)."
  echo	"1.The AMI ID used to launch this instance"
  echo	"2.The index of this instance in the reservation (per AMI)"
  echo	"3.The manifest path of the AMI with which the instance was launched."
  echo	"4.The AMI IDs of any instances that were rebundled to create this AMI."
  echo	"5.Defines native device names to use when exposing virtual devices."
  echo	"6.The ID of this instance"
  echo	"7.The type of instance to launch. For more information, see Instance Types"
  echo	"8.The local hostname of the instance"
  echo	"9.Public IP address if launched with direct addressing; private IP address if launched with public addressing"
  echo	"10.The ID of the kernel launched with this instance, if applicable"
  echo	"11.The availability zone in which the instance launched. Same as placement"
  echo	"12.Product codes associated with this instance"
  echo	"13.The public hostname of the instance"
  echo	"14.NATted public IP Address"
  echo	"15.Public keys Only available if supplied at instance launch time"
  echo	"16.The ID of the RAM disk launched with this instance, if applicable"
  echo	"17.ID of the reservation"
  echo	"18.Names of the security groups the instance is launched in Only available if supplied at instance launch time"
  echo	"19.User supplied data.Only available if supplied at instance launch time"
  echo  "20.Exit script"
  echo  "-----------------"
  echo  "Enter your Choice"
  echo  "-----------------"
  read  Choice
  case "$Choice" in
  	 0) echo "Show all metadata information for this host"
  	    ec2-metadata.1 --all ;;
  	 1) echo "The AMI ID used to launch this instance"
  	    ec2-metadata.1 -a ;;
  	 2) echo "The index of this instance in the reservation (per AMI)"
  	    ec2-metadata.1 ;;
  	 3) echo "The manifest path of the AMI with which the instance was launched"
  	    ec2-metadata.1 -m ;;
  	 4) echo "The AMI IDs of any instances that were rebundled to create this AMI"
  	    ec2-metadata.1 -n ;;
  	 5) echo "Defines native device names to use when exposing virtual devices"
  	    ec2-metadata.1 -b ;;
  	 6) echo "The ID of this instance"
  	    ec2-metadata.1 -i ;;
  	 7) echo "The type of instance to launch. For more information, see Instance Types"
  	    ec2-metadata.1 -t ;;
  	 8) echo "The local hostname of the instance"
  	    ec2-metadata.1 -h ;;
  	 9) echo "Public IP address if launched with direct addressing; private IP address if launched with public addressing"
  	    ec2-metadata.1 -o  ;;
  	 10) echo "The ID of the kernel launched with this instance, if applicable" 
  	    ec2-metadata.1 -k ;;
  	 11) echo "The availability zone in which the instance launched. Same as placement"
            ec2metadata.1 -z ;;
         12) echo  "Product codes associated with this instance"
            ec2-metadata.1 -c ;;
         13) echo "The public hostname of the instance"
            ec2-metadata.1 -p ;;
         14) echo "NATted public IP Address"
            ec2-metadata.1 -v ;;
         15) echo "Public keys Only available if supplied at instance launch time"
            ec2-metadata.1 --u ;;
         16) echo "The ID of the RAM disk launched with this instance, if applicable"
            ec2-metadata.1 --r ;;
         17) echo "ID of the reservation"
            ec2-metadata.1 -e ;;
         18) echo "Names of the security groups the instance is launched in Only available if supplied at instance launch time"
            ec2-metadata.1 -s ;;
         19) echo "User supplied data.Only available if supplied at instance launch time"   
            ec2metadata.1 -d ;; 
         20) echo "Exiting..........................................."
               echo "$var";exit;;  
esac
