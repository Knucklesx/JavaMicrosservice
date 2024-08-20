# Usar uma imagem base do OpenJDK
FROM openjdk:17-jdk-slim

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o arquivo pom.xml e o diretório src para o contêiner
COPY pom.xml .
COPY src ./src

# Instalar Maven
RUN apt-get update && apt-get install -y maven

# Compilar o projeto
RUN mvn clean package -DskipTests

# Expor a porta que a aplicação irá rodar
EXPOSE 8080

# Definir o comando de entrada para iniciar a aplicação
CMD ["java", "-jar", "target/api-0.0.1-SNAPSHOT.jar"]