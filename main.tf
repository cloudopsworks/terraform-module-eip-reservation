##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

resource "aws_eip" "eip_reservation" {
  count  = var.reservation_number
  domain = "vpc"

  tags = merge({
    Name = "eip-reservation-${lower(var.org.organization_unit)}-${lower(var.org.environment_name)}-${lower(var.org.environment_type)}-${count.index}"
  }, local.all_tags)
}