FROM maven:3.6-jdk-8

WORKDIR /usr/atm
RUN git clone \
    https://github.com/magmagcup/atm-web-frontend.git

COPY pom.xml .

RUN mvn dependency:resolve

RUN mvn compile

EXPOSE 9000

CMD ["mvn", "spring-boot:run"]