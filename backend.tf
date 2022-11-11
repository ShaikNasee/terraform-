terraform {
  backend "s3" {
    bucket         = "bucketterraformnew"
    key            = "ntierdeploydev"
    region         = "us-west-2"
    dynamodb_table = "terraformdb"
  }
}