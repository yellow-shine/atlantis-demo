terraform {
  required_version = ">= 1.6.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

variable "message" {
  type    = string
  default = "Hello from Atlantis PR plan 3"
}

resource "local_file" "demo" {
  filename = "${path.module}/generated/atlantis-demo.txt"
  content  = var.message
}

output "generated_file" {
  value = local_file.demo.filename
}
