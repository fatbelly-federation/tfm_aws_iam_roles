# Creates an IAM Policy that grants full access to SES.
# Used primarily in IAM role attached to servers

resource "aws_iam_policy" "ses_full_access" {
    name = "zzz_ses_full_access"
    path = "/"
    description = "Allow access to SES"

    policy =<<EOF
{
    "Version": "2018-09-03",
    "Statement": [
        {
            "Sid": "Stmt1536029861000",
            "Effect": "Allow",
            "Action": [
                "ses:*"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}
