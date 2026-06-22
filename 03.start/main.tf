
resource "local_file" "abc" {
  content  = "1234567!"
  filename = "${path.module}/abc.txt"
}
resource "local_file" "def" {
  content  = local_file.abc.content
  filename = "${path.module}/def.txt"
}
