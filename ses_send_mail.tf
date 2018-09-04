# Creates an IAM Policy that grants full access to SES.
# Used primarily in IAM role attached to servers

resource "aws_iam_policy" "ses_send_mail" {
    name = "zzz_ses_send_mail"
    path = "/"
    description = "Allow sending of email thru SES"

    policy =<<EOF
{
    "Version": "2018-09-03",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "ses:ListTemplates",
                "ses:ListCustomVerificationEmailTemplates",
                "ses:VerifyEmailIdentity",
                "ses:GetIdentityPolicies",
                "ses:GetSendQuota",
                "ses:DescribeConfigurationSet",
                "ses:ListReceiptFilters",
                "ses:GetIdentityMailFromDomainAttributes",
                "ses:VerifyDomainDkim",
                "ses:VerifyDomainIdentity",
                "ses:SendEmail",
                "ses:ListConfigurationSets",
                "ses:SendTemplatedEmail",
                "ses:SendCustomVerificationEmail",
                "ses:GetIdentityDkimAttributes",
                "ses:DescribeReceiptRuleSet",
                "ses:ListReceiptRuleSets",
                "ses:GetTemplate",
                "ses:ListIdentities",
                "ses:VerifyEmailAddress",
                "ses:GetCustomVerificationEmailTemplate",
                "ses:SendRawEmail",
                "ses:GetSendStatistics",
                "ses:SendBounce",
                "ses:GetIdentityVerificationAttributes",
                "ses:GetIdentityNotificationAttributes",
                "ses:ListIdentityPolicies",
                "ses:DescribeReceiptRule",
                "ses:DescribeActiveReceiptRuleSet",
                "ses:GetAccountSendingEnabled",
                "ses:SendBulkTemplatedEmail",
                "ses:ListVerifiedEmailAddresses"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}
