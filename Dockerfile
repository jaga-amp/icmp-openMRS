FROM tomcat:7
MAINTAINER CISTOAWSCOE@cognizant.com
RUN apt-get update && apt-get install default-jdk git python3-pip -y
RUN pip3 install awscli --upgrade
ADD https://petclinicwarfiles.s3.amazonaws.com/openmrs-3tireapp/OpenMRS.tar.gz /tmp/
ADD http://apache.spinellicreations.com/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz /tmp/
ADD https://petclinicwarfiles.s3.amazonaws.com/openmrs-3tireapp/aws-profile.tar.gz /tmp/
RUN /bin/tar -xvzf /tmp/aws-profile.tar.gz -C /root/
RUN /bin/tar -xvzf /tmp/OpenMRS.tar.gz -C /root/
RUN rm -f /root/.OpenMRS/modules/legacyui-1.6.0-SNAPSHOT.omod
RUN /bin/tar -xvzf /tmp/apache-maven-3.6.1-bin.tar.gz -C /usr/local/
RUN export AWS_DEFAULT_PROFILE=default
RUN export MAVEN_HOME=/usr/local/apache-maven-3.6.1/bin
RUN export PATH=$PATH:$MAVEN_HOME:
RUN /bin/mkdir /root/awscoe
RUN /usr/bin/git config --global credential.helper '!aws codecommit credential-helper $@'
RUN /usr/bin/git config --global credential.UseHttpPath true
RUN /usr/bin/git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/OpenMRS-original /root/awscoe
RUN /usr/local/apache-maven-3.6.1/bin/mvn -f /root/awscoe/openmrs-core/ clean install -Dmaven.test.skip=true
WORKDIR /root/awscoe/openmrs-module-legacyui
RUN /usr/local/apache-maven-3.6.1/bin/mvn clean install -Dmaven.test.skip=true
RUN echo "sleeping for 5 seconds" && sleep 5
WORKDIR /usr/local/tomcat/
RUN /bin/cp /root/awscoe/openmrs-module-legacyui/omod/target/legacyui-1.6.0-SNAPSHOT.omod /root/.OpenMRS/modules/
RUN echo "sleeping for 5 seconds" && sleep 5
RUN /bin/cp /root/awscoe/openmrs-core/webapp/target/openmrs.war /usr/local/tomcat/webapps/
RUN echo "sleeping for 5 seconds" && sleep 5
RUN /usr/local/tomcat/bin/catalina.sh start
