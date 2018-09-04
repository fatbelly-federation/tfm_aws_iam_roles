# this creates an IAM Policy that grants read-only access to KMS
# you'll still need to grant access to individual keys

resource "aws_iam_policy" "kms_readonly" {
    name = "zzz_kms_readonly"
    path = "/"
    description = "Grant ReadOnly access to KMS"

    policy =<<EOF
{
    "Version": "2018-09-03",
    "Statement": [
        {
            "Sid": "Stmt1536029861000",
            "Effect": "Allow",
            "Action": [
                "kms:GetParametersForImport",
                "kms:ListKeyPolicies",
                "kms:GetKeyRotationStatus",
                "kms:ListRetirableGrants",
                "kms:GetKeyPolicy",
                "kms:DescribeKey",
                "kms:ListResourceTags",
                "kms:ListGrants"
            ],
            "Resource": "arn:aws:kms:*:*:key/*"
        },
        {
            "Sid": "Stmt1536029861000",
            "Effect": "Allow",
            "Action": [
                "kms:ListKeys",
                "kms:GenerateRandom",
                "kms:ListAliases",
                "kms:ReEncryptTo",
                "kms:ReEncryptFrom"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}
