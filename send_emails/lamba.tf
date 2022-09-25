resource "aws_lambda_function" "sendmail" {
  # If the file is not in the current working directory you will need to include a
  # path.module in the filename.
  filename      = data.archive_file.lambda.output_path
  function_name = "sendmail"
  role          = aws_iam_role.lamba_email_role.arn
  handler       = "lamb_code.lambda_handler"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  #source_code_hash = filebase64sha256("${data.archive_file.lambda.output_path}")

  runtime = "python3.9"

  environment {
    variables = {
      foo = "bar"
    }
  }
}
