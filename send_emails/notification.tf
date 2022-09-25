resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = "${data.aws_s3_bucket.selected.id}"
  lambda_function {
    lambda_function_arn = "${aws_lambda_function.sendmail.arn}"
    events              = ["s3:ObjectCreated:*"]
    
  }

}