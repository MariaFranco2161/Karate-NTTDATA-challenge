# Proyecto de Pruebas con Karate

Este proyecto utiliza Karate para realizar pruebas automatizadas de servicios REST. En este caso específico, se prueban las funcionalidades de `signup` y `login` de la API disponible en [Demoblaze](https://www.demoblaze.com/).

## Requisitos

- Java 1.8
- Gradle 8.5
- karate-junit5:1.2.0
- karate-core:1.2.0

## Configuración del Proyecto

### Estructura del Proyecto

El proyecto tiene la siguiente estructura de directorios:

src
├── test
│ ├── java
│ │ ├── karate-config.js
│ │ └── demoblaze
│ │ ├── login
│ │ │ └── login.feature
│ │ └── signup
│ │ └── signup.feature
│ └── resources
│ └── demoblaze
│ └── responses
│ ├── login_passIncorrec.json
│ ├── login_userNotExist.json
│ ├── login_successt.json
│ ├── signup_success.json
│ └── signup_existing.json

bash
## Instalación

1. **Clonar el repositorio:**

    ```sh
    git clone https://github.com/MariaFranco2161/Karate-NTTDATA-challenge
    cd tu-repo
    ```
### Dependencias

El proyecto utiliza las siguientes dependencias para Karate. Estas están definidas en el archivo `build.gradle`:

```groovy
plugins {
    id 'java'
}

repositories {
    mavenCentral()
}

dependencies {
   testImplementation 'com.intuit.karate:karate-junit5:1.2.0'
   testImplementation 'com.intuit.karate:karate-core:1.2.0'
   testImplementation 'net.masterthought:cucumber-reporting:5.7.0'
}
