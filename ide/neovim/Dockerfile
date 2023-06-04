# Use the latest Debian image as the base
FROM debian:latest

# Update and install rsync
RUN apt-get update && apt-get install -y rsync

# Create a work directory
WORKDIR /work

# Copy the local directory to the Docker container
COPY . /Users/mk/projects/portable-ide/ide/neovim/work

# Expose port 22 for SSH access
EXPOSE 22

# Install SSH server
RUN apt-get install -y openssh-server

# Set up SSH access
RUN echo "root:password" | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN mkdir /var/run/sshd

# Run the SSH server
CMD ["/usr/sbin/sshd", "-D"]

