provider "docker" {}

resource "local_file" "batch_4_file" {
  filename = "/home/ubuntu/terraform-practice/demo.txt"
  content  = "This is a file created by me using Terraform"
}

resource "docker_image" "nginx-img" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker-container" "nginx-ctr" {
  name  = "my-nginx-container"
  image = docker_image.nginx-img.name

  ports {
    internal = 80
    external = 80
  }
}
