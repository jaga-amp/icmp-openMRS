tar xvf /tmp/OpenMRS.tar.gz
cp -r /tmp/.OpenMRS/owa /root/.OpenMRS/
cp -r /tmp/.OpenMRS/openmrs.log /root/.OpenMRS/
cp -r /tmp/.OpenMRS/openmrs-runtime.properties /root/.OpenMRS/
cp -r /tmp/.OpenMRS/lucene /root/.OpenMRS/
cp -r /tmp/.OpenMRS/liquibaseUpdateLogs.txt /root/.OpenMRS/
rm -rf /usr/local/apache-tomcat-7.0.96/webapps/openmrs*
/usr/local/apache-tomcat-7.0.96/bin/catalina.sh start