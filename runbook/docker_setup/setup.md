## Setup with Docker

### Prerequisites

- **Docker**: Ensure Docker is installed on the deployment machine. Follow [Docker installation instructions](https://docs.docker.com/get-docker/) if needed.
- **Docker Compose**: Ensure Docker Compose is installed. Follow [Docker Compose installation instructions](https://docs.docker.com/compose/install/) if needed.
- **Source Code**: Have access to the Dockerized application source code and Docker configuration files.

## Setup process

### 1. Clone the Repository

Clone the repository containing the Dockerized application and Docker Compose configuration.

```bash
git clone https://github.com/Pavlo-Ponomarenko/internship-task1
```
### 2. Run docker-compose

```bash
docker-compose up --build
```

Make sure that all ports delared for usage in docker-compose.yml are available on your hosting maschine.