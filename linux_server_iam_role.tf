# create IAM role for attaching to linux servers

# aws_iam_role
# https://www.terraform.io/docs/providers/aws/r/iam_role.html

# create the role
resource "aws_iam_role" "Linux_Server_IAM_role" {
    name = "Linux_Server_IAM_role"
    assume_role_policy = "${data.aws_iam_policy_document.ec2_assume_policy.json}"
    description = "Grant EC2 linux instances specific permissions"
}

# aws_iam_role_policy_attachment
# https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html

# attach the ebs create_delete snapshot policy
resource "aws_iam_role_policy_attachment" "ec2_instance_linux_ebs_snapshot_permissions" {
    role = "${aws_iam_role.Linux_Server_IAM_role.name}"
    policy_arn = "${aws_iam_policy.create_delete_ebs_snapshots.arn}"
}

# attach the s3 full access policy
resource "aws_iam_role_policy_attachment" "ec2_instance_linux_s3_permissions" {
    role = "${aws_iam_role.Linux_Server_IAM_role.name}"
    policy_arn = "${aws_iam_policy.s3_full_access.arn}"
}

# attach the SES full access policy
resource "aws_iam_role_policy_attachment" "ec2_instance_linux_ses_permissions" {
    role = "${aws_iam_role.Linux_Server_IAM_role.name}"
    policy_arn = "${aws_iam_policy.ses_full_access.arn}"
}

resource "aws_iam_instance_profile" "Linux_Server_IAM_Instance_Profile" {
    name = "Linux_Server_IAM_Instance_Profile"
    role = "${aws_iam_role.Linux_Server_IAM_role.name}"
}


