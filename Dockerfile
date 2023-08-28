# Use the official Flutter Docker image as the base image
FROM ghcr.io/cirruslabs/flutter:latest as builder

# Set the working directory inside the container
WORKDIR /app

# Copy the Flutter web app code to the container's working directory
COPY . .

# Install dependencies
RUN flutter pub get

# Build the Flutter web app for production
RUN flutter build web

# Use a lightweight Nginx image as the base
FROM nginx:latest

# Copy the built files from the builder stage to the Nginx document root
COPY --from=builder /app/build/web/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
