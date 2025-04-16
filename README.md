# Project Template for Spring Boot + Kotlin + Gradle + Docker Compose
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-6DB33F?logo=springboot&logoColor=white)](#)
[![Kotlin](https://img.shields.io/badge/Kotlin-%237F52FF.svg?logo=kotlin&logoColor=white)](#)
[![Gradle](https://img.shields.io/badge/Gradle-02303A.svg?style=flat-square&logo=Gradle&logoColor=white)](#)
[![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)](#)
[![MicrosoftSQLServer](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?logo=microsoft%20sql%20server&logoColor=white)](#)
[![Flyway](https://img.shields.io/badge/Flyway-red?logo=flyway&logoColor=white)](#)
[![Auth0](https://img.shields.io/badge/Auth0-%23333333?logo=auth0&logoColor=white)](#)
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
├── docs
│   ├── http-client.env.json
│   └── requests.http
├── flyway.conf.jinja
├── gradle
│   └── wrapper
│       ├── gradle-wrapper.jar
│       └── gradle-wrapper.properties
├── gradlew
├── gradlew.bat
├── HELP.md.jinja
├── logs
├── scripts
│   └── get_access_token.sh.jinja
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
    │   │               │   ├── pagination
    │   │               │   │   ├── ClippedPageableResolver.kt.jinja
    │   │               │   │   └── PaginationProperties.kt.jinja
    │   │               │   ├── RequestIdFilter.kt.jinja
    │   │               │   ├── security
    │   │               │   │   └── SecurityConfig.kt.jinja
    │   │               │   └── WebConfig.kt.jinja
    │   │               ├── controller
    │   │               │   ├── HomeController.kt.jinja
    │   │               │   └── rest
    │   │               │       ├── ClientController.kt.jinja
    │   │               │       ├── CrudController.kt.jinja
    │   │               │       ├── HelloWorldController.kt.jinja
    │   │               │       └── SiteController.kt.jinja
    │   │               ├── domain
    │   │               │   ├── dto
    │   │               │   │   ├── ClientDto.kt.jinja
    │   │               │   │   ├── request
    │   │               │   │   │   └── SiteCreateDto.kt.jinja
    │   │               │   │   ├── response
    │   │               │   │   │   ├── ErrorResponse.kt.jinja
    │   │               │   │   │   └── PaginatedResponse.kt.jinja
    │   │               │   │   └── SiteDto.kt.jinja
    │   │               │   ├── mapper
    │   │               │   │   ├── ClientMapper.kt.jinja
    │   │               │   │   ├── GenericMapper.kt.jinja
    │   │               │   │   └── SiteMapper.kt.jinja
    │   │               │   ├── model
    │   │               │   │   ├── BaseTimeEntity.kt.jinja
    │   │               │   │   ├── Client.kt.jinja
    │   │               │   │   └── Site.kt.jinja
    │   │               │   ├── repository
    │   │               │   │   ├── ClientRepository.kt.jinja
    │   │               │   │   └── SiteRepository.kt.jinja
    │   │               │   └── service
    │   │               │       ├── ClientService.kt.jinja
    │   │               │       ├── CrudService.kt.jinja
    │   │               │       ├── impl
    │   │               │       │   └── CrudServiceImpl.kt.jinja
    │   │               │       └── SiteService.kt.jinja
    │   │               ├── exception
    │   │               │   ├── EntityNotFoundException.kt.jinja
    │   │               │   ├── Error.kt.jinja
    │   │               │   └── ResourceNotFoundException.kt.jinja
    │   │               ├── exceptionHandler
    │   │               │   ├── GlobalErrorHandler.kt.jinja
    │   │               │   └── GlobalExceptionHandler.kt.jinja
    │   │               ├── logging
    │   │               │   ├── ControllerLoggingAspect.kt.jinja
    │   │               │   └── DatabaseConnectionLogging.kt.jinja
    │   │               ├── security
    │   │               │   ├── auth
    │   │               │   ├── authorization
    │   │               │   ├── password
    │   │               │   ├── token
    │   │               │   ├── user
    │   │               │   └── util
    │   │               └── util
    │   │                   └── PaginationUtils.kt.jinja
    │   └── resources
    │       ├── application-dev.properties.jinja
    │       ├── application-prod.properties
    │       ├── application.properties.jinja
    │       ├── db
    │       │   └── migration
    │       │       └── V1__create_tables.sql
    │       ├── logback-spring.xml
    │       ├── retryConfig.properties
    │       ├── static
    │       └── templates
    │           ├── emails
    │           ├── fragments
    │           ├── layouts
    │           └── pages
    │               └── home.ftl
    └── test
        └── kotlin
            └── {{group_suffix}}
                └── {{group_name}}
                    └── {{artifact}}
                        └── {{artifact|capitalize}}ApplicationTests.kt.jinja

58 directories, 59 files
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

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
