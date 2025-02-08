variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
  
}
variable "instance_type" {
    default = t3.micro
  
}
variable "ec2_tags" {
    type = map
    default = {
        project = "expense"
        environment = "dev"
        component = "backend"
        name = expense-backend-dev
    }
  
}
variable "from_port" {
  
  default = 22

}
variable "to_port" {
    default = 22
  
}
variable "cidr_blocks" {
    type = list[string]
    default = ["0.0.0.0/0"]
}
variable "sg_tags" {
    type = map
    default = {
        name = expense-backend-dev
    }
}