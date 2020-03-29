provider "aws" {
  region = "us-west-1"
}

//security_groups = [ "launch-wizard-5"]

resource "aws_instance" "jenkins" {
  ami           = "ami-0c49b0cde84c02ad2" # us-west-2
  instance_type = "t2.micro"
  key_name      = "ban6"

  security_groups = ["launch-wizard-5"]




}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = aws_instance.jenkins.*.public_ip
}
