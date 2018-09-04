# this creates an IAM Policy that grants
# creation, tagging, copying and registering snapshots & amis

resource "aws_iam_policy" "tag_create_copy_snapshots_and_images" {
    name = "zzz_tag_create_copy_snapshots_and_images"
    path = "/"
    description = "Allow creation, tagging, copying and registering of snapshots and AMIs"

    policy =<<EOF
{
    "Version": "2018-09-03",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ec2:CreateTags",
                "ec2:CreateSnapshot"
            ],
            "Resource": [
                "arn:aws:ec2:*::snapshot/*",
                "arn:aws:ec2:*:*:volume/*",
                "arn:aws:ec2:*::image/*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "ec2:CopySnapshot",
                "ec2:RegisterImage",
                "ec2:CreateImage",
                "ec2:CopyImage"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}
