terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

# Root requirement document (your PDF converted to file)
resource "local_file" "requirements" {
  filename = "${path.module}/Requirements_E-Pendahuluan_PKOL.txt"

  content = <<EOT
Project: E-Pendahuluan PKOL
Client: BERNAS
Prepared By: LatConnect 60

MODULES:
1. LSF Program Management
2. Ketua Projek Management
3. PKOL Application
4. AG60 Integration

OBJECTIVE:
- Digitalize farming advance payment system
- Replace manual A3 forms
- Automate approval workflow
EOT
}

module "lsf" {
  source = "./modules/lsf"
}

module "kp" {
  source = "./modules/kp"
}

module "pkol" {
  source = "./modules/pkol"
}

module "ag60" {
  source = "./modules/ag60"
}