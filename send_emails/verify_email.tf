resource "aws_ses_email_identity" "sender" {
    count="${length(var.emails)}"
    email = "${var.emails[count.index]}"
}


