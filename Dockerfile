FROM maven

RUN git clone \
    https://github.com/magmagcup/atm-web-frontend.git:main
WORKDIR /atm-web-fronted
RUN mvn install
EXPOSE 9000
CMD java src/main/java/th/ac/ku/atm/AtmApplication.java