apt-get update -y 
apt install openjdk-8-jdk openjdk-8-jre maven git python3-pip -y 
update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java 
wget -P /tmp/ http://mirrors.ocf.berkeley.edu/apache/tomcat/tomcat-7/v7.0.96/bin/apache-tomcat-7.0.96.tar.gz 
wget -P /tmp/ https://petclinicwarfiles.s3.amazonaws.com/openmrs-3tireapp/OpenMRS.tar.gz 
mkdir /root/awscoe/
tar xvf /tmp/apache-tomcat-7.0.96.tar.gz -C /usr/local/ 