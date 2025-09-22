# Assignment 11 - Dockerized React App

## Student Info
- **Name:** Mark Kenneth Garcia
- **Assignment:** 11 - Docker File

---

## Overview
This project is a simple React app that displays an `<h1>` tag with the text **"Codin 1 website"**.
The app is containerized using Docker.

- **Container Name:** `garcia_mark_coding_assignment11`
- **Workdir:** `Garcia_Mark_site`
- **Port:** `7775`

---

## Steps to Run

1. **Clone the repository**
- `git clone https://github.com/MKG-RRC/docker-assignment11.git`
- `cd docker-assignment11`


2. **Build the Docker image**

- `docker build -t garcia_mark_coding_assignment11 .`


3. **Run the container**
- `docker run -it -p 7775:7775 --name garcia_mark_coding_assignment11 garcia_mark_coding_assignment11`

4. **Access the app**
- `Open your browser and go to the given localhost link :sample --> [http://localhost:7775](http://localhost:7775)`

---

## Dockerfile Explanation
- `FROM node:18-alpine` → Uses a lightweight Node.js image as the base.
- `WORKDIR /Garcia_Mark_site` → Creates and sets the working directory.
- `COPY package*.json ./` → Copies dependency files first for efficient caching.
- `RUN npm install` → Installs dependencies.
- `COPY . .` → Copies the rest of the project files into the container.
- `RUN npm run build` → Builds the React app for production.
- `RUN npm install -g serve` → Installs `serve` to serve the build files.
- `EXPOSE 7775` → Opens port 7775 so the app can run.
- `CMD ["serve", "-s", "build", "-l", "7775"]` → Starts the app on port 7775.
