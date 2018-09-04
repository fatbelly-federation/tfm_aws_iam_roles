# Creates an IAM Policy that grants full access to S3.
# Used primarily in IAM role attached to servers

resource "aws_iam_policy" "s3_full_access" {
    name = "zzz_s3_full_access"
    path = "/"
    description = "Allow access to all of S3 except terraform-related buckets aka buckets that start with terraform"

    policy =<<EOF
{
    "Version": "2018-09-03",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Effect": "Deny",
            "Action": [
                "s3:*"
            ],
            "Resource": [
                "arn:aws:s3:::terraform*"
            ]
        }
    ]
}
EOF
}
