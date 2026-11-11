# ---------- Giai doan 1: build ra file jar ----------
FROM eclipse-temurin:25-jdk AS build
WORKDIR /app

# Chep wrapper va pom truoc de Docker cache duoc phan tai thu vien
COPY .mvn/ .mvn/
COPY mvnw pom.xml ./
RUN sed -i 's/\r$//' mvnw && chmod +x mvnw
RUN ./mvnw -B -q dependency:go-offline

# Chep ma nguon va dong goi (bo qua test cho nhanh)
COPY src/ src/
RUN ./mvnw -B -q clean package -DskipTests

# ---------- Giai doan 2: image chay (nhe, chi co JRE) ----------
FROM eclipse-temurin:25-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]