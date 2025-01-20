# Use Ubuntu as the base image
FROM ubuntu:latest

# Install necessary tools
RUN apt-get update && apt-get install -y \
    nasm \
    qemu-system-x86 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /minimal-os

# Copy project files into the container
COPY . .

# Default command: Assemble and run the OS
CMD ["./run.sh"]

