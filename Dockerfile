FROM maven:3.6-jdk-8

WORKDIR /usr/atm
RUN git clone \
    https://github.com/magmagcup/atm-web-frontend.git

COPY pom.xml .

RUN mvn dependency:resolve

COPY src ./src

RUN mvn compile

EXPOSE 8090

CMD ["mvn", "spring-boot:run"]