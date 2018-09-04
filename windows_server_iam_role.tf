# create IAM role for attaching to windows servers

# aws_iam_role
# https://www.terraform.io/docs/providers/aws/r/iam_role.html

# create the role
resource "aws_iam_role" "Windows_Server_IAM_role" {
    name = "Windows_Server_IAM_role"
    assume_role_policy = "${data.aws_iam_policy_document.ec2_assume_policy.json}"
    description = "Grant EC2 windows instances specific permissions"
}

# aws_iam_role_policy_attachment
# https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html

# attach the ebs create_delete snapshot policy
resource "aws_iam_role_policy_attachment" "ec2_instance_ebs_snapshot_permissions" {
    role = "${aws_iam_role.Windows_Server_IAM_role.name}"
    policy_arn = "${aws_iam_policy.create_delete_ebs_snapshots.arn}"
}

