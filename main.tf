provider "aws" {
  region = "us-east-2" # Replace with your desired region
}

terraform {
  backend "s3" {
    bucket         = "backendtft"
    key            = "terraform.tfstate"
    region         = "us-east-2" # Replace with your desired region
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

resource "aws_instance" "example" {
  ami           = "ami-083eed19fc801d7a4" # Replace with your desired AMI ID
  instance_type = "t2.micro"
  subnet_id     = "subnet-08eb1c25182c66f7f"
  tags = {
    Name = "ExampleInstance"
  }
}

