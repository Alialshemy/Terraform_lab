terraform {
  backend "s3" {
    bucket         = "terrafrom-lab"
    dynamodb_table = "sprints"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}

