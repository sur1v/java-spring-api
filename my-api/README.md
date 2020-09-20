# My awesome REST API

# Requirements

* Java 11
* Maven 3.6.3

# Building

Regular build:
```mvn package```

Skipping tests:
```mvn package -Dmaven.test.skip=true```

# Docker

Building image:
```docker build -t my-api .```

Running container:
```docker run -p 8080:8080 my-api:latest```

If successful, app should be exposed at http://localhost:8080

# Running

```java -jar /route/to/my-api.jar```

## Checking app healthiness

This app has the actuator [health endpoint](https://docs.spring.io/spring-boot/docs/current/reference/html/production-ready-features.html#production-ready-health) enabled by default.

So you can test if the application is healthy by accessing path `/actuator/health`

```
$ curl http://localhost:8080/actuator/health
{"status":"UP"}
```