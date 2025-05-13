FROM registry.access.redhat.com/ubi9/ubi:latest

# Install system dependencies and Python with --allowerasing
RUN dnf -y --allowerasing install python3 python3-pip git sshpass curl \
    && dnf clean all

# Upgrade pip and install Ansible
RUN pip3 install --upgrade pip \
    && pip3 install ansible ansible-runner paramiko

# Verify installation
RUN python3 --version && ansible --version && ansible-galaxy --version

# Set default working directory
WORKDIR /workdir