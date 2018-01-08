output "domain_arn" {
  value = "${coalesce(join("", aws_elasticsearch_domain.elk_vpc.*.arn), join("", aws_elasticsearch_domain.elk.*.arn))}"
}

output "domain_endpoint" {
  value = "${coalesce(join("", aws_elasticsearch_domain.elk_vpc.*.endpoint), join("", aws_elasticsearch_domain.elk.*.endpoint))}"
}

output "domain_id" {
  value = "${coalesce(join("", aws_elasticsearch_domain.elk_vpc.*.domain_id), join("", aws_elasticsearch_domain.elk.*.domain_id))}"
}

output "logger_role_arn" {
  value = "${aws_iam_role.logger.arn}"
}
