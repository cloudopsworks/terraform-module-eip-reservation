##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

resource "aws_eip" "eip_reservation" {
  count  = var.reservation_number
  domain = "vpc"

  tags = merge({
    Name = "eip-reservation-${lower(org.org_unit_name)}-${lower(org.environment_name)}--${lower(org.environment_type)}-${count.index}"
  }, module.tags.locals.common_tags)
}