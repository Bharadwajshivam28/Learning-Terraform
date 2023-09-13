#Dev Environment
module "dev-demo-app" {
source = "./modules/demo-app"
env_name = "dev"
instance_type = "t2.micro"
ami_id = "ami-053b0d53c279acc90"
instance_name = "batch4-demo-instance"
bucket_name = "batch-4-demo-bucket"
table_name = "batch4-demo-table"
}

#Qa Environment
module "qa-demo-app" {
source = "./modules/demo-app"
env_name = "qa"
instance_type = "t2.small"
ami_id = "ami-01c647eace872fc02"
instance_name = "batch4-demo-instance"
bucket_name = "batch-4-demo-bucket"
table_name = "batch4-demo-table"
}

#Prd Environment
module "prd-demo-app" {
source = "./modules/demo-app"
env_name = "prd"
instance_type = "t2.micro"
ami_id = "ami-026ebd4cfe2c043b2"
instance_name = "batch4-demo-instance"
bucket_name = "batch-4-demo-bucket"
table_name = "batch4-demo-table"
}
