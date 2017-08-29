FROM tomcat:8.0-jre8
ADD ./target/JavaOnAzureLinux-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
# Environment Variables
ENV azure.mysql.url <Database URL>
ENV azure.mysql.username <DB UserName>
ENV azure.mysql.password <DB Password>
CMD ["catalina.sh", "run"]