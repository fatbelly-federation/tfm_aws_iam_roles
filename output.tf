################################# OUTPUTS ######################################

# deny_senstive_services
output "deny_senstive_services_arn" {
    value = "${aws_iam_policy.deny_senstive_services.arn}"
}

# Local Full Admin arn
output "full_admin_arn" {
    value = "${aws_iam_role.Local_Full_Admin.arn}"
}

# Local Full Admin role name
output "full_admin_role_name" {
    value = "${aws_iam_role.Local_Full_Admin.name}"
}

# Local Full Developer arn
output "full_developer_arn" {
    value = "${aws_iam_role.Local_Full_Developer.arn}"
}

# Local Full Developer role name
output "full_developer_role_name" {
    value = "${aws_iam_role.Local_Full_Developer.name}"
}

# Windows_Server_IAM_role role name
output "windows_server_iam_role_name" {
    value = "${aws_iam_role.Windows_Server_IAM_role.name}"
}

# Windows_Server_IAM_role arn
output "windows_server_iam_role_arn" {
    value = "${aws_iam_role.Windows_Server_IAM_role.arn}"
}

# Linux Generic Role Arn
output "linux_server_arn" {
    value = "${aws_iam_role.Linux_Server_IAM_role.arn}"
}

# Linux Generic Role Name
output "linux_server_iam_role_name" {
    value = "${aws_iam_role.Linux_Server_IAM_role.name}"
}

# Linux Generic Instance Profile
output "linux_server_iam_instance_profile_name" {
    value = "${aws_iam_instance_profile.Linux_Server_IAM_Instance_Profile.name}"
}


# kms_readonly
output "kms_readonly_policy" {
  value = "${aws_iam_policy.kms_readonly.arn}"
}

# lambda_write_logs
output "lambda_write_logs_policy" {
  value = "${aws_iam_policy.lambda_write_logs.arn}"
}

# sqs_read_write
output "sqs_read_write_policy" {
  value = "${aws_iam_policy.sqs_read_write.arn}"
}

# tag_create_copy_snapshots_and_images
output "tag_create_copy_snapshots_and_images_policy" {
  value = "${aws_iam_policy.tag_create_copy_snapshots_and_images.arn}"
}

# ses_send_mail
output "ses_send_mail_policy" {
  value = "${aws_iam_policy.ses_send_mail.arn}"
}
