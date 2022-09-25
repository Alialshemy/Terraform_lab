data "archive_file" "lambda" {
  type        = "zip"
  source_file = "${path.module}/python/lamb_code.py"
  output_path = "${path.module}/lamb_code.py.zip"
}