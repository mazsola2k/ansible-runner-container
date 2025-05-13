# ansible-runner-container
Container Ansible Runner

dnf install podman
podman build -t ansible-runner .
podman run --rm -it --privileged -v /home/$USER:/workdir -w /workdir localhost/ansible-runner ansible-galaxy collection install -r requirements.yml
podman run --rm -it --privileged -v /home/$USER:/workdir -w /workdir localhost/ansible-runner ansible-playbook -i inventory.ini check_ios_version.yaml

