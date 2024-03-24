# DockerizingSteps

1) Create Spring Boot Application
2) Create Dockerfile
   i) Check dockerfile created from official website docker "Dockerfile reference" in this repo
3) Docker Build
   i) goto terminal and goto to directory where you have created project and run below cmd
   ii) docker build -t springboot-docker-demo .  (or)  docker build -t springboot-docker-demo:0.1.RELEASE . (t - tag which is "latest" by default or you can give your own version name)
   iii) use cmd "docker images" to check the docker images
   iv) run the image by cmd "docker run -p 8080:8080 springboot-docker-demo"    -(8080:8080 is port for host operating system: port of container(private container exposing. Here we are mapping container port with host operating system port).
   v) check which images are running using "docker ps"
   vi)to run image in detach mode use "docker run -p 8080:8080 -d springboot-docker-demo"
   vii) use tail cmd to check logs " docker logs -f 1424"    -(here 1424 is starting 4 digits of that image)
   Viii) use cmd to stop "docker stop 1424"
5) Docker Push
   i) In order to push, first create acc or use existing acc. And create repository inside
   ii) use "docker login" from terminal to login to your account.
   iii) Now associate local image with docker hub using following cmd "docker tag springboot-docker-demo reponame/imagename:tagname "
   iv) now push cmd " docker push reponame/imagename:versiontagname "
7) Docker Pull
   i) use " docker pull reponame/imagename:tagname
