# Project Template for Spring Boot + Kotlin + Gradle + Docker Compose
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?logo=springboot&logoColor=white)](#)
[![Kotlin](https://img.shields.io/badge/Kotlin-%237F52FF.svg?logo=kotlin&logoColor=white)](#)
[![Gradle](https://img.shields.io/badge/Gradle-02303A.svg?style=flat-square&logo=Gradle&logoColor=white)](#)
[![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)](#)
[![MicrosoftSQLServer](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?logo=microsoft%20sql%20server&logoColor=white)](#)
[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

This is a Copier template for scaffolding a Spring Boot application with Kotlin, Gradle, and Docker Compose support. The template follows a clean architecture with separate concerns for CLI, API, security, batch processing, and domain logic.

## Features

- **Spring Boot** (Latest version)
- **Kotlin** with Coroutines
- **Gradle** for build automation
- **Docker Compose** for containerized environments
- **Flyway** for database migrations
- **Spring Security** with authentication & authorization
- **Spring Modulith** for modular development
- **CLI support** using PicoCLI
- **OpenFeign** for API clients
- **MapStruct** for object mapping
- **Spring Retry** for resilience
- **HTMX** for reactive UI development

## Installation

### Prerequisites

Ensure you have the following installed:

- [Docker](https://www.docker.com/get-started)
- [Java 23](https://jdk.java.net/23/)
- [Gradle](https://gradle.org/install/)
- [Copier](https://copier.readthedocs.io/en/latest/)

### Clone the template repository

```sh
copier copy https://github.com/haluk/spring-boot-kotlin-template my-new-project
```

## Project Structure

```
{{artifact}}
├── build.gradle.kts.jinja
├── compose.yaml
├── gradle
│   └── wrapper
│       ├── gradle-wrapper.jar
│       └── gradle-wrapper.properties
├── gradlew
├── gradlew.bat
├── HELP.md
├── settings.gradle.kts.jinja
└── src
    ├── main
    │   ├── kotlin
    │   │   └── {{group_suffix}}
    │   │       └── {{group_name}}
    │   │           └── {{artifact}}
    │   │               ├── {{artifact|capitalize}}Application.kt.jinja
    │   │               ├── batch
    │   │               ├── cli
    │   │               │   ├── HelloWorldCommand.kt.jinja
    │   │               │   └── TemplateCliCommand.kt.jinja
    │   │               ├── client
    │   │               │   ├── api
    │   │               │   └── dto
    │   │               │       ├── request
    │   │               │       └── response
    │   │               ├── config
    │   │               │   ├── CliConfig.kt.jinja
    │   │               │   └── security
    │   │               ├── controller
    │   │               │   └── HelloWorldController.kt.jinja
    │   │               ├── domain
    │   │               │   ├── dto
    │   │               │   ├── mapper
    │   │               │   ├── model
    │   │               │   │   └── BaseTimeEntity.kt.jinja
    │   │               │   ├── repository
    │   │               │   └── service
    │   │               ├── exception
    │   │               │   ├── Error.kt.jinja
    │   │               │   └── ResourceNotFoundException.kt.jinja
    │   │               ├── exceptionHandler
    │   │               │   └── GlobalErrorHandler.kt.jinja
    │   │               ├── security
    │   │               │   ├── auth
    │   │               │   ├── authorization
    │   │               │   ├── password
    │   │               │   ├── token
    │   │               │   ├── user
    │   │               │   └── util
    │   │               └── util
    │   └── resources
    │       ├── application-dev.properties
    │       ├── application-prod.properties
    │       ├── application.properties.jinja
    │       ├── db
    │       │   └── migration
    │       ├── retryConfig.properties
    │       ├── static
    │       └── templates
    └── test
        └── kotlin
            └── {{group_suffix}}
                └── {{group_name}}
                    └── {{artifact}}
                        └── {{artifact|capitalize}}ApplicationTests.kt.jinja

45 directories, 22 files
```

## Running the Application

### With Docker Compose

```sh
docker-compose up -d
```

### With Gradle

```sh
./gradlew bootRun
```

## Using the CLI

Run CLI commands via:

```sh
cd build/libs
java -jar {{artifact}}-0.0.1-SNAPSHOT.jar hello --name=XYZ
```

## Contributing

Feel free to submit issues and PRs to improve this template.

## License

MIT License
