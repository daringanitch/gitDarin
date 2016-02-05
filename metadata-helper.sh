#######################################################
# installs metadata helper tool     
######################################################
#!/bin/bash
wget http://s3.amazonaws.com/ec2metadata/ec2-metadata
chmod u+x ec2-metadata.1
mv ec2-metadata.1 /usr/bin/

exit
