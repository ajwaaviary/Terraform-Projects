resource "aws_lb" "prod_alb" {
  name               = "prod-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [data.aws_security_group.prod_sg.id]

  # At least two subnets on different AZ must be specified
  subnets            = data.aws_subnet_ids.available_db_subnet.ids
  enable_deletion_protection = false
  tags = {
    Environment = "dev"
  }
}