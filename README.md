# Inception - WordPress with Docker

Welcome to the `inception` project repository! This project leverages Docker Compose to orchestrate a WordPress site using Nginx as the web server and MariaDB as the database, built on top of a Debian base image. It also involves setting up volumes for data persistence, a dedicated network for container communication, and a self-signed SSL certificate for HTTPS.

## Features

- **WordPress Container:** Runs the latest version of WordPress.
- **Nginx Container:** Serves as a reverse proxy and web server.
- **MariaDB Container:** Used for database services.
- **Volumes:** Ensures data persistence for both WordPress content and database records.
- **Custom Network:** Facilitates secure and efficient inter-container communication.
- **Self-Signed SSL Certificate:** Provides HTTPS for secure access.

## Prerequisites

Before starting, ensure you have Docker and Docker Compose installed on your machine. Knowledge of Docker and basic command-line proficiency is recommended.

## Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/waelbt/inception.git
   cd inception
   ```

2. **Build and Run with Docker Compose:**
   ```bash
   docker-compose up --build
   ```
   This command builds the containers from the Debian base image and starts them. The `--build` flag ensures that your images are built with the latest configuration.

## Configuration

- **Volumes:** Defined in the `docker-compose.yml` file, volumes store persistent data for WordPress and MariaDB.
- **Networks:** A custom Docker network is created to isolate and manage container communication.
- **SSL Certificate:** The Nginx container is configured with a self-signed SSL certificate. Instructions for creating and renewing this certificate are included below.

### Creating a Self-Signed SSL Certificate

1. Navigate to the Nginx directory within the project:
   ```bash
   cd nginx
   ```

2. Run the following command to generate a private key and certificate:
   ```bash
   openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt
   ```
   Follow the prompts to complete the certificate setup.

## Accessing the Application

Once all services are running:
- **WordPress:** Accessible at `https://localhost` (or the configured domain), secured with SSL.
- **MariaDB:** Connects internally from WordPress using the service name defined in `docker-compose.yml`.
