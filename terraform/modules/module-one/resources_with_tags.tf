resource "aws_iam_role" "iam_role_with_tags" {
  tags = {
    tag1 = "tag1"
    tag2 = "tag2"
  }
  assume_role_policy = "policy"
}
