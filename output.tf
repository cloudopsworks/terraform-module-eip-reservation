##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

output "public_ips" {
  value = aws_eip.eip_reservation.*.public_ip
}

output "public_ip_ids" {
  value = aws_eip.eip_reservation.*.id
}