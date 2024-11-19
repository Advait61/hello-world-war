# Base Image
FROM tomcat:9-jdk11

# Copy WAR file to Tomcat webapps directory
COPY target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/app.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
