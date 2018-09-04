# create a policy for restricting access to senstive stuff
resource "aws_iam_policy" "deny_senstive_services"{
    name = "zzz_deny_senstive_services"
    path = "/"
    description = "Deny access to senstive services"

    policy = <<EOF
{
    "Version": "2018-09-03",
    "Statement": [
        {
            "Sid": "Stmt1536029861000"
            "Effect": "Deny",
            "Action": [
                "aws-portal:ModifyAccount",
                "aws-portal:ModifyBilling",
                "aws-portal:ModifyPaymentMethods",
                "aws-portal:ViewBilling",
                "aws-portal:ViewPaymentMethods"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Sid": "Stmt1536029862000"
            "Effect": "Deny",
            "Action": [
                "ds:*"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Sid": "Stmt1536029863000"
            "Effect": "Deny",
            "Action": [
                "ec2:AttachClassicLinkVpc",
                "ec2:AttachVpnGateway",
                "ec2:CreateCustomerGateway",
                "ec2:CreateInternetGateway",
                "ec2:CreateNatGateway",
                "ec2:CreateVpc",
                "ec2:CreateVpcPeeringConnection",
                "ec2:CreateVpnConnection",
                "ec2:CreateVpnConnectionRoute",
                "ec2:CreateVpnGateway",
                "ec2:DeleteCustomerGateway",
                "ec2:DeleteDhcpOptions",
                "ec2:DeleteInternetGateway",
                "ec2:DeleteNatGateway",
                "ec2:DeleteVpc",
                "ec2:DeleteVpcPeeringConnection",
                "ec2:DeleteVpnConnection",
                "ec2:DeleteVpnConnectionRoute",
                "ec2:DeleteVpnGateway",
                "ec2:DetachInternetGateway",
                "ec2:DetachVpnGateway",
                "ec2:DisableVgwRoutePropagation",
                "ec2:DisableVpcClassicLink",
                "ec2:DisableVpcClassicLinkDnsSupport",
                "ec2:EnableVpcClassicLink",
                "ec2:EnableVpcClassicLinkDnsSupport",
                "ec2:ModifyVpcAttribute",
                "ec2:ModifyVpcPeeringConnectionOptions",
                "ec2:MoveAddressToVpc",
                "ec2:RejectVpcPeeringConnection"
            ],
            "Resource": [
                "*"
            ]
        },
        {
            "Sid": "Stmt1536029864000"
            "Effect": "Deny",
            "Action": [
                "iam:UpdateAssumeRolePolicy",
                "iam:CreateLoginProfile",
                "iam:CreateAccountAlias",
                "iam:DeleteOpenIDConnectProvider",
                "iam:RemoveClientIDFromOpenIDConnectProvider",
                "iam:DeleteRole",
                "iam:UpdateAccountPasswordPolicy",
                "iam:CreateSAMLProvider",
                "iam:CreateUser",
                "iam:DeleteAccountAlias",
                "iam:UpdateSAMLProvider",
                "iam:DeleteAccountPasswordPolicy",
                "iam:CreateOpenIDConnectProvider",
                "iam:DeleteSAMLProvider"
            ],
            "Resource": [
                "*"
            ]
        }

        
    ]
}
EOF
}

