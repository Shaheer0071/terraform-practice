data "aws_ami" "join_devops" {
    most_recent = true
    owners = ["973714476881"]

    filter {
      name = "name"
      values = ["RHEL-9-DevOps-Practice"]
    }
    filter {
    name = "root-device-type"
    values = ["ebs"]
  }
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }

}
data "aws_vpc" "default" {
    default = "true"

  
}
output "aws_ami" {
    value = data.aws_ami.join_devops.id
  
}
output "default_vpc_id" {
    value = data.aws_vpc.default.id
  
}