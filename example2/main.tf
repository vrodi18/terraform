# HCL (HashiCorp Configuration Language) 
provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "us-east-1-bastion-key" {
  key_name   = "bastion-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4RtD13Xd08qMFKSkgV6rjssJdyeo3LkBDXvmU5zmC7zjrDOwjllRKFrMZu/ETa77M/YPYN12Jd9NsONL9ca7kclTbcj84jpugziJccw8kGASOxFC2Aux64xxDO8+5/Ir4PkvX3YWnWEvTC4YXIRHYOChWca9ogxojxZ1wSVvu1i/NHQXgeKMsKwNYr02rm2YncQ58DnQnnoYkdCjEvpQqWKMe3oKOcXTmOU/4tl+pbcsr5o8snVnEdBVXUpoU/5GPmDglH/MVUyj2Cn2ATBeONpeafSe9mAhqJW5vSFIssouFm8ShH/W3vsxNi+Mm0jPpt56uoqN92raUw7qAnReR ec2-user@Bastion"
}

resource "aws_instance" "example" {
  key_name      = "bastion-key"
  ami           = "ami-0947d2ba12ee1ff75"
  instance_type = "t2.micro"
}
