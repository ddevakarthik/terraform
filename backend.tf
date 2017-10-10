terraform {
  backend "s3" {
    bucket = "devakarthik-ed-state"
	key    = "state.tfstate"
	region = "us-east-1"
  }
}