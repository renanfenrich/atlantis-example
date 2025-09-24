resource "null_resource" "another_example" {
  provisioner "local-exec" {
    command = "echo This is another example."
  }
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello, World!"
  }
  triggers = {
    always_run = "${timestamp()}"
  }
  depends_on = [null_resource.another_example]
}
