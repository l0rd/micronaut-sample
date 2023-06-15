[![Open on Developer Sandbox](https://img.shields.io/static/v1?label=OpenShift%20Dev%20Spaces&message=Developer%20Sandbox&logo=eclipseche&color=FDB940&labelColor=525C86)](https://workspaces.openshift.com/f?url=https://github.com/l0rd/micronaut-sample) </br>

## Execute `podman run` from the workspace

[Kubedock](https://github.com/joyrex2001/kubedock/) is executed at workspace startup and podman is configured to use it as the backend. Once the workspace is started type:

```
$ podman run --name httpd -d -p 8080:8080 python python -m http.server 8080
```

https://github.com/l0rd/micronaut-sample/assets/606959/ca6c73aa-c736-47f5-b67f-2e4cef05b10d


## Run Tests using testcontainers

A couple of Visual Studio Code tasks are pre-configured (using the `.devfile.yaml`) to run the tests and the application. 

<img width="1082" alt="image" src="https://github.com/l0rd/micronaut-sample/assets/606959/5b0cc56b-6a15-47fd-b84f-d567538c8d72">

Testcontainers uses kubedock to start a MySQL database. But tests are currently failing on Developer Sandbox. That's probably because the MySQL container expects to be run as root.


## Micronaut 3.9.0 Documentation

- [User Guide](https://docs.micronaut.io/3.9.0/guide/index.html)
- [API Reference](https://docs.micronaut.io/3.9.0/api/index.html)
- [Configuration Reference](https://docs.micronaut.io/3.9.0/guide/configurationreference.html)
- [Micronaut Guides](https://guides.micronaut.io/index.html)
---

- [Shadow Gradle Plugin](https://plugins.gradle.org/plugin/com.github.johnrengelman.shadow)
- [Micronaut Gradle Plugin documentation](https://micronaut-projects.github.io/micronaut-gradle-plugin/latest/)
- [GraalVM Gradle Plugin documentation](https://graalvm.github.io/native-build-tools/latest/gradle-plugin.html)
## Feature http-client documentation

- [Micronaut HTTP Client documentation](https://docs.micronaut.io/latest/guide/index.html#httpClient)


## Feature flyway documentation

- [Micronaut Flyway Database Migration documentation](https://micronaut-projects.github.io/micronaut-flyway/latest/guide/index.html)

- [https://flywaydb.org/](https://flywaydb.org/)


## Feature serialization-jackson documentation

- [Micronaut Serialization Jackson Core documentation](https://micronaut-projects.github.io/micronaut-serialization/latest/guide/)


## Feature data-jdbc documentation

- [Micronaut Data JDBC documentation](https://micronaut-projects.github.io/micronaut-data/latest/guide/index.html#jdbc)


## Feature jdbc-hikari documentation

- [Micronaut Hikari JDBC Connection Pool documentation](https://micronaut-projects.github.io/micronaut-sql/latest/guide/index.html#jdbc)


## Feature test-resources documentation

- [Micronaut Test Resources documentation](https://micronaut-projects.github.io/micronaut-test-resources/latest/guide/)


