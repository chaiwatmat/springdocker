FROM openjdk:11.0.4-jre

VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
EXPOSE 8080

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseContainerSupport", "-XX:MaxRAMFraction=1", "-XshowSettings:vm", "-cp", "app:app/lib/*", "co.chaiwatm.springdocker.DemoApplication"]
