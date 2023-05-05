
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIARL3KQGVIBMC4RVHH"
  secret_key = "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"
}

module "ALB-module" {
  source       = ".//ALB-MODULE" 
  name = "alb-ingress-dev-public-mobile"
  vpc_id       = "vpc-0e0ea2383db829540"
  sg_id        = "sg-0edaea85b72545d1d"
  sbnet1_id    = "subnet-043b5d2226cde4e1e"
  sbnet2_id    = "subnet-0f1e378cef21ffce5"
  ec2first_id  = "i-0e822956ecf929eee"
  ec2second_id = "i-05774305c6dbc187b"
}



