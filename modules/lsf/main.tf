resource "local_file" "lsf_module" {
  filename = "${path.module}/lsf_module.txt"

  content = <<EOT
LSF PROGRAM MANAGEMENT

Functions:
- Register LSF
- Edit LSF details
- Add farmer under LSF
- Update PKOL amount

Workflow:
1. Register LSF
2. Add farmers
3. Notify AG60
4. Collect PKOL confirmation
EOT
}