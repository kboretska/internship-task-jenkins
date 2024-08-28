## Manual Setup

### Prerequisites

- **Postgres DB**: Ensure Postgres DB is installed and running on the deployment machine. It should be configured for password authentification.
- **Mongodb**: Ensure Mongodb is installed and running.
- **Redis**: Ensure Redis is installed and running.
- **Tomcat 9**: Ensure Tomcat 9 is installed and running.
- **Gradle**: Ensure Gradle 7.5 is installed
- **PSQL**: Ensure PSQL for postgres connection is installed
- **Source Code**: Have access to the application source code.

## Setup process

### 1. Clone the Repository

Clone the repository containing the Dockerized application and Docker Compose configuration.

```bash
git clone https://github.com/Pavlo-Ponomarenko/internship-task1
```
### 2. Setup environment variables

```bash
export POSTGRES_USER=your_user
export POSTGRES_PASSWORD=your_password
export POSTGRES_DB=db_name
export POSTGRES_IP=postgres_ip
export REDIS_IP=redis_ip
export MONGO_IP=mongo_ip
```

### 3. Set execution rights for .sh files

```bash
chmod +x deploy_war.sh
chmod +x entry_pont.sh
chmod +x deploy_war.sh
chmod +x nginx/entrypoint.sh
```

### 4. Restore database

```bash
./scripts/pgsql_restore.sh 2024-08-19.dump $POSTGRES_IP $POSTGRES_DB $POSTGRES_USER $POSTGRES_PASSWORD
```

### 5. Build and deploy .war file

```bash
gradle build -x test
sudo ./deploy_war.sh
```