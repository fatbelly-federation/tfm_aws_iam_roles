# Create Full Developer role and attach policies to it

# aws_iam_role
# https://www.terraform.io/docs/providers/aws/r/iam_role.html

# create the role
resource "aws_iam_role" "Local_Full_Developer" {
    name = "Local_Full_Developer"
    assume_role_policy = "${data.aws_iam_policy_document.account_assume_policy.json}"
    description = "Full Admin access with some restrictions"
}


# aws_iam_role_policy_attachment
# https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html

# attach the deny senstive services policy to the role
resource "aws_iam_role_policy_attachment" "deny_senstive_services" {
    role = "${aws_iam_role.Local_Full_Developer.name}"
    policy_arn = "${aws_iam_policy.deny_senstive_services.arn}"
}

# attach the canned AWS AdministratorAccess policy to the role
resource "aws_iam_role_policy_attachment" "Developer_AdministratorAccess" {
    role = "${aws_iam_role.Local_Full_Developer.name}"
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

