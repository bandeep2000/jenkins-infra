# jenkins-infra
# Creates jenkins using terraform and configures using ansible

Prerequisites:
terraform and ansible installed
export ANSIBLE_HOST_KEY_CHECKING=False
AWS env credentials initialized  ---

1. Create ec2 first, get ip -  terraform apply
2. cd ansible, update hosts file with ip from the previous step
3. Run - ansible-playbook -i hosts -u ec2-user --private-key=<ssh_key path>  jenkins.yml


