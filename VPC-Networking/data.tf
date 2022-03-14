################################################################################
# Availability Zones list out
################################################################################
data "aws_availability_zones" "zone_available" {
  state = "available"
}