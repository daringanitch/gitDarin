#!bin/bash
sudo wget -O /etc/yum.repos.d/pbiso.repo http://repo.pbis.beyondtrust.com/yum/pbiso.repo
sudo yum clean all 
sudo yum install pbis-open
sleep 10
sudo -s
/opt/pbis/bin/domainjoin-cli join domain.com dganitch@hotmail.com
shutdown now -r
