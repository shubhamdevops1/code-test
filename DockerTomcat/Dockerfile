FROM tomcat
LABEL maintainer="Shubham Lad <shubham.devops.cloud@gmail.com>"

ARG SERVICE_NAME="myapp-0.0.7-SNAPSHOT"
RUN apt-get update && apt-get -y upgrade

ADD "target/*.war" "$CATALINA_HOME/webapps/myapp.war"

CMD ["catalina.sh", "run"]