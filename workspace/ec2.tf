resource "aws_instance" "expense" {
  
  ami           = data.aws_ami.expense.id
  instance_type = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = ["sg-0eb76be1cde1473e6"]

 
}