resource "aws_s3_bucket" "bucke" {
  bucket = "buckkkktest"
}

resource "aws_dynamodb_table" "my_dynamo_table" {
  name         = "db_table_for_test"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}

