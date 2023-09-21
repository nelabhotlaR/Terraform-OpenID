# ec2 instance deployment.
resource "aws_instance" "openID_instance" {
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = var.openID_ec2_inst_type
  key_name = "${aws_key_pair.OPENID_demo_keypair.id}"
  vpc_security_group_ids = [aws_security_group.openID_sg.id]
    tags = {
        "Name"  : "openID-EC2instance-demo"
    }
}

# key-pair creation
resource "aws_key_pair" "OPENID_demo_keypair" {
  key_name = "openIDdemo"
  public_key = file(var.public_key_path)
}


# https://xebia.com/blog/how-to-deploy-terraform-to-aws-with-github-actions-authenticated-with-openid-connect/