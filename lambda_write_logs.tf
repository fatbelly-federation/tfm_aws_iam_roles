# this creates an IAM Policy that grants lambda functions to write logs
# this is a copy of the policy AWS automatically created

resource "aws_iam_policy" "lambda_write_logs" {
    name = "zzz_lambda_write_logs"
    path = "/"
    description = "Allow lambda functions to write logs"

    policy =<<EOF
{
    "Version": "2018-09-03",
    "Statement": [
        {
            "Sid": "Stmt1536029861000"
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogGroup",
                "logs:CreateLogStream",
                "logs:PutLogEvents"
            ],
            "Resource": [
                "arn:aws:logs:*:*:*"
            ]
        }
    ]
}
EOF
}
