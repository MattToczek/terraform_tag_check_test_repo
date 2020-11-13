resource "aws_autoscaling_group" "asg_without_dynamic_tags" {
  max_size = 0
  min_size = 0
}

resource "aws_iam_role" "iam_role_with_missing_tag" {
  tags = {
    tag1 = "tag2"
  }
  assume_role_policy = "policy"
}
