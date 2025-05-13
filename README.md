Ansible-runner-container
Due to the fact that quay.io/ansible/ansible-runner is outdated, old python version located, here is a method to get quickly a new ansible runner image based on redhat.com/ubi9/ubi:latest

**Container Ansible Runner**

dnf install podman

podman build -t ansible-runner .

podman run --rm -it --privileged -v /home/$USER:/workdir -w /workdir localhost/ansible-runner ansible-galaxy collection install -r requirements.yml

podman run --rm -it --privileged -v /home/$USER:/workdir -w /workdir localhost/ansible-runner ansible-playbook -i inventory.ini check_ios_version.yaml


