FROM webdizz/centos-java8 
        RUN yum -y update && yum -y install wget && yum -y install tar  
         
        # Set Environment Variables 
        ENV JAVA_HOME /usr/java 
        ENV CATALINA_HOME /usr/tomcat  
        ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin 
 
 
        # Download and Install Tomcat 9 : http://apache-mirror.rbc.ru/pub/apache/tomcat/ 
RUN wget http://apache.mirrors.pair.com/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz && tar -xvf apache-tomcat-8.5.23.tar.gz && rm apache-tomcat-8.5.23.tar.gz && mv apache-tomcat*               ${CATALINA_HOME}  
 
        WORKDIR /usr/tomcat 
 
        EXPOSE 8080 
        EXPOSE 8009

