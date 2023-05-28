provider "aws" {
  region = "us-east-2" 
}

terraform {
  backend "s3" {
    bucket         = "backendtft"
    key            = "terraform.tfstate"
    region         = "us-east-2" 
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

resource "aws_instance" "gadha" {
  ami           = "ami-083eed19fc801d7a4" 
  instance_type = "t2.micro"
  subnet_id     = "subnet-08eb1c25182c66f7f"
  tags = {
    Name = "Mai-gadha-hu"
  }
}

