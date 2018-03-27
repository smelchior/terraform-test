resource "aws_ecr_repository" "repository" {
  name = "footest123"
}

resource "aws_ecr_repository" "repository2" {
  name = "footest1234"
}

resource "aws_iam_user" "test" {
  name = "testtfoo1"
}

resource "aws_iam_access_key" "test" {
  user = "${aws_iam_user.test.name}"
}
