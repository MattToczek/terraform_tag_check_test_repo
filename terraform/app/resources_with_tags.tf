resource "aws_autoscaling_group" "asg_with_dynamic_tags" {

  dynamic "tag" {
    for_each = local.common_tags

    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }
  max_size = 0
  min_size = 0
}

resource "aws_iam_role" "iam_role_with_tags" {
  tags = local.common_tags
  assume_role_policy = "policy"
}
