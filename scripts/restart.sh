tar xvf /tmp/OpenMRS.tar.gz
cp -r /tmp/.OpenMRS /root/
rm -rf /root/.OpenMRS/modules/legacyui-1.6.0-SNAPSHOT.omod 
cp -r /root/awscoe/legacyui-1.6.0-SNAPSHOT.omod /root/.OpenMRS/modules/
rm -rf /usr/local/apache-tomcat-7.0.96/webapps/openmrs*
/usr/local/apache-tomcat-7.0.96/bin/catalina.sh start