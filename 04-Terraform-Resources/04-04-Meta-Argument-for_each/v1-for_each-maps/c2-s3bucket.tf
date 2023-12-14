# Create S3 Bucket per environment with for_each and maps
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
resource "aws_s3_bucket" "mys3bucket" {

  for_each = {
    "dev"  = "my-dapp-bucket-mqazi"
    "qa"   = "my-qapp-bucket-mqazi"
    "stag" = "my-sapp-bucket-mqazi"
    "prod" = "my-papp-bucket-mqazi"
  }

  bucket = "${each.key}-${each.value}"
  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}