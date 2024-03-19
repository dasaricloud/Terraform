provider "aws" {
  region = "us-east-1"
  

}

resource "aws_instance" "user-instance" {
  
  ami = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  key_name = "dec-2023"
  user_data = "${file("install_apache.sh")}"
     
    tags = {
    Name = "user-instance"
    Batch = "5AM"
}               
}
