#users are added below 

resource "aws_iam_user" "tim" {
   name = "tim"
   path = "/"
}
resource "aws_iam_user" "ben" {
   name = "ben"
   path = "/"
}
resource "aws_iam_user" "lisa" {
   name = "lisa"
   path = "/"
}


# adds group

resource "aws_iam_group" "developers" {
    name = "developers"
    path = "/"
}
resource "aws_iam_group" "admin" {
    name = "admin"
    path = "/"
}

# group membership

resource "aws_iam_group_membership" "developers_team" {
  name = "developers-group-membership"
  users = [
  "${aws_iam_user.tim.name}",
  "${aws_iam_user.ben.name}",
  "${aws_iam_user.lisa.name}",
  ]
  group = "${aws_iam_group.developers.name}"

}


#policy

resource "aws_iam_policy" "policy" {
  name = "test_policy3"
  path = "/"
  description = "My test policy"
  policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": "ec2:*",
"Resource": "*"
}
]
}
EOF
}
