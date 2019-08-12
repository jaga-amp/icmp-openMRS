#!/bin/bash
sudo cp openmrs-core/webapp/target/openmrs.war /usr/local/apache-tomcat-7.0.96/webapps/
sudo cp openmrs-module-legacyui/omod/target/legacyui-1.6.0-SNAPSHOT.omod /root/.OpenMRS/modules/
sudo /usr/local/apache-tomcat-7.0.96/bin/catalina.sh start