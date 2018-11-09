# OpenSuse 42.3 Ansible Test Image

OpenSuse Docker container for Ansible playbook and role testing.
inspired by [Jeff Geerling work on CentOs](https://github.com/geerlingguy/docker-centos7-ansible)


## Usage

Add the following to the platforms section in your `molecule.yml`

``` yml
platforms:
  - name: Suse-42
    image: docker-suse
    volumes:
      - /sys/fs/cgroup:/sys/fs/cgroup:ro
    privileged: true
    pre_build_image: true
```
