resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello, World!"
  }
  triggers = {
    always_run = "${timestamp()}"
  }
}
