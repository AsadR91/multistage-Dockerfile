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

   Clone the repo and run the following commands.

   ```
   cd multistage-Dockerfile

   ```
   **Build the Single-Stage Image and Multi-Stage Image.
   
   ```
   docker build -t single-stage -f Dockerfile-ubuntu .
   ```
   **Build the Multi-Stage Image
   ```
   docker build -t multi-stage -f Dockerfile . 
   ```


3. **Run the Docker Container**:

   ```
   docker run -d -p 8080:8080 multi-stage
   ```
   ```
   docker ps
   ```
Access the application at [http://localhost:8080](http://localhost:8080).

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
