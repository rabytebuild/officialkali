# Use the official Kali Linux base image
FROM kalilinux/kali-linux-docker:latest

# Set the working directory
WORKDIR /root

# Update and install necessary tools
RUN apt-get update && apt-get install -y \
    metasploit-framework \
    nmap \
    exploitdb \
    # Add any other tools you need here

# Clean up the APT cache to reduce the image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Expose any ports your applications might use
# For example, if you are running a web application on port 80
EXPOSE 80

# Set the default command to run when the container starts
CMD ["bash"]
