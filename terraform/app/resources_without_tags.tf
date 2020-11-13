resource "aws_iam_role" "iam_role_with_missing_tag" {
  tags = {
    tag1 = "tag1"
  }
  assume_role_policy = "policy"
}
