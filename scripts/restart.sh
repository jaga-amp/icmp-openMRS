tar xvf /tmp/OpenMRS.tar.gz -C /root/ 
rm -rf /root/.OpenMRS/modules/legacyui-1.6.0-SNAPSHOT.omod 
rm -rf /usr/local/apache-tomcat-7.0.96/webapps/openmrs*
/usr/local/apache-tomcat-7.0.96/bin/catalina.sh start
