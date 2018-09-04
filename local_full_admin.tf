# Create Full Admin role and attach policies to it

# aws_iam_role
# https://www.terraform.io/docs/providers/aws/r/iam_role.html

# create local full_admin role
resource "aws_iam_role" "Local_Full_Admin" {
    name = "Local_Full_Admin"
    assume_role_policy = "${data.aws_iam_policy_document.account_assume_policy.json}"
    description = "Full Administrator access"
}


# aws_iam_role_policy_attachment
# https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html

# attach the canned AWS AdministratorAccess policy to the role
resource "aws_iam_role_policy_attachment" "AdministratorAccess" {
    role = "${aws_iam_role.Local_Full_Admin.name}"
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

