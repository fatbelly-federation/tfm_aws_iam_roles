# this creates an IAM Policy that allows for the
# creation, deletion and tagging of ebs snapshots
# This policy is used primarily in IAM role attached 
# to a server.  This then allows a task to run on
# the server to create snapshots of its volumes
#
# you can find a useful powershell script to snapshot volumes at
# https://github.com/CaseyLabs/aws-ec2-ebs-automatic-snapshot-powershell

resource "aws_iam_policy" "create_delete_ebs_snapshots" {
    name = "zzz_create_delete_ebs_snapshots"
    path = "/"
    description = "Allow creation, deletion of ebs snapshots and tagging"

    policy =<<EOF
{
    "Version": "2018-09-03",
    "Statement": [
        {
            "Sid": "Stmt1536029861000",
            "Effect": "Allow",
            "Action": [
                "ec2:CreateSnapshot",
                "ec2:CreateTags",
                "ec2:DeleteSnapshot",
                "ec2:DescribeSnapshots",
                "ec2:DescribeVolumes",
                "ec2:DescribeInstances"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}
