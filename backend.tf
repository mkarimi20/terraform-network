terraform {
  backend "s3" {
     bucket = "terrform-state-january-daud1"
     key = "infra.state"
     region = "eu-west-1" 
  }
}