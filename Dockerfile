After creating application, open Maven tab and select clean, package from options and click on run 
or 
if you using Spring Tool Suite then use the maven cmd, mvn clean package.
After running, it will create a Jar file in Target folder inside application project.
Now right click on the project name and create a txt file "Dockerfile".
Inside docker file example below  
i) FROM eclipse-temurin:17 -(use whatever image you needed for application to run, here we needed java 17)
ii) LABEL mentainer = "yourname" - ( who is maintaining)
iii) WORKDIR /app -(working directory where you want to create image)
iv) COPY target/spring-boot-demo-0.0.1-SNAPSHOT.jar /app/springboot-docker-demo.jar   -(copying from target jar  file to destination image location)
v) ENTRYPOINT["java", "-jar", "springboot-docker-demo.jar"]  -(command line arguments to run jar file when running the image)
