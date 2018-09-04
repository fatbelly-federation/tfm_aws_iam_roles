# this defines the default ec2 assume policy
# this is used when creating a role that will be 
# attached to an instance

data "aws_iam_policy_document" "ec2_assume_policy" {
    statement {
        effect = "Allow"
        actions = [ "sts:AssumeRole" ]
        principals {
            type    = "Service"
            identifiers = [ "ec2.amazonaws.com" ]
        }
    }
}

