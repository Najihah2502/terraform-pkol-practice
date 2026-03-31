resource "local_file" "ag60_module" {
  filename = "${path.module}/ag60_module.txt"

  content = <<EOT
AG60 MOBILE MODULE

Functions:
- Farmer confirms PKOL participation
- Farmer accepts/rejects PKOL amount
- Notifications for LSF & KP

Statuses:
- Agree PKOL
- Reject PKOL
- Confirm PKOL amount
EOT
}