FROM opensuse:42.3
LABEL maintainer="Xabier Davila"
ENV container=docker

ENV pip_packages "ansible"

RUN zypper install -y python python-pip sudo

# Install Ansible via Pip.

RUN pip install -U pip && pip install $pip_packages

# Disable requiretty.
# RUN sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers

# Install Ansible inventory file.
RUN mkdir -p /etc/ansible
RUN echo -e '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/lib/systemd/systemd"]
