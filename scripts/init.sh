sudo apt-get update -y 
sudo apt install openjdk-8-jdk openjdk-8-jre maven git python3-pip -y 
sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java 
sudo wget -P /tmp/ http://mirrors.ocf.berkeley.edu/apache/tomcat/tomcat-7/v7.0.96/bin/apache-tomcat-7.0.96.tar.gz 
sudo wget -P /tmp/ https://petclinicwarfiles.s3.amazonaws.com/openmrs-3tireapp/OpenMRS.tar.gz 
sudo tar -xvzf /tmp/OpenMRS.tar.gz -C /root/ 
sudo rm -f /root/.OpenMRS/modules/legacyui-1.6.0-SNAPSHOT.omod 
sudo tar -xvzf /tmp/apache-tomcat-7.0.96.tar.gz -C /usr/local/ 