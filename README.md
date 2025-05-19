# 🐳 Multi-Stage Docker Build for Java Web Application

This project illustrates how to use Docker's multi-stage build feature to containerize a Java web application, optimizing the final image size and build efficiency.

## 📁 Project Structure

* **`Dockerfile`**: Defines a multi-stage build process using Maven and Tomcat images.
* **`Dockerfile-ubuntu`**: An alternative Dockerfile using Ubuntu as the base image.
* **`pom.xml`**: Maven configuration file for building the Java application.
* **`Procfile`**: Specifies the command to run the application, useful for platforms like Heroku.
* **`src/`**: Contains the Java source code and web application resources.([Gist][1])

## 🛠️ Build and Run Instructions

1. **Build the Docker Image**:

   ```
   docker build -t java-webapp .
   ```



2. **Run the Docker Container**:

   ```
   docker run -p 8080:8080 java-webapp
   ```



Access the application at [http://localhost:8080](http://localhost:8080).

## 🚀 Deployment

The included `Procfile` facilitates deployment to platforms like Heroku. Ensure that the platform supports Docker-based deployments and configure the necessary environment variables.

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
