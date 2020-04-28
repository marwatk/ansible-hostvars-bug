FROM centos:7

WORKDIR /ansible

RUN set -e; \
    yum install -y ansible; \
    : ;

COPY hosts test.yml ./

RUN ansible-playbook -i hosts test.yml
