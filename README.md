# javicv/springboot-app

Image based on [openjdk:8-jre-alpine](https://hub.docker.com/_/openjdk) to execute Spring Boot apps from Maven artifacts

The image receives an URL to download a Java application as a JAR to execute. The first step will be download the JAR and after that the application will be executed with the given options and parameters.

*This image was made to execute Spring Boot applications during development phases, using artifact snapshots, and to be integrated into a CI Pipeline. In order to resolve the snapshot URL to integrate this image into a CI pipeline a small tool called [mvn_resolver](https://github.com/javicv/mvn_resolver) was developed.*

## Environment Variables

### Mandatory

* **ARTIFACT_URL**: URL to the Java Package to execute

### Optionals

* **JAVA_OPTS_EXT**: Configure Java Virtual Machine option
* **JAVA_PARAMETERS**: Configure Java Application parameters