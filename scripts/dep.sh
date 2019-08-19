sudo wget -P /tmp/ https://petclinicwarfiles.s3.amazonaws.com/openmrs-3tireapp/OpenMRS.tar.gz
sudo tar -xvzf /tmp/OpenMRS.tar.gz -C /root/
sudo rm -f /root/.OpenMRS/modules/legacyui-1.6.0-SNAPSHOT.omod
sudo cp /root/awscoe/legacyui-1.6.0-SNAPSHOT.omod /root/.OpenMRS/modules/
sleep 5
sudo /usr/local/apache-tomcat-7.0.96/bin/catalina.sh stop
sleep 5
sudo /usr/local/apache-tomcat-7.0.96/bin/catalina.sh start
