resource "aws_iam_role" "lamba_email_role" {
  name = "lamba_email_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
resource "aws_iam_role_policy_attachment" "attach_policy" {
  role       = aws_iam_role.lamba_email_role.name
  policy_arn = aws_iam_policy.lamba_policy.arn
}