resource "local_file" "foo" {
  content  = var.hii
  filename = "${path.module}/foo.bar"
}

resource "local_file" "file1" {
  content = "dfhg"
  filename = "${path.module}/foo.bar"
}
resource "random_id" "OTP" {
  byte_length = 8
}

resource "local_file" "file3" {
  content = "${random_id.OTP.dec}"
  filename = "hi.py"
}





# resource "local_file" "file2" {
#   content = var.hii
#   filename = "${path.module}/file2.bar"
#   tags=var.map1
# }