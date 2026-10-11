output "redshift_clusters_id" {
  description = "Map of id values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redshift_clusters_allow_version_upgrade" {
  description = "Map of allow_version_upgrade values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.allow_version_upgrade if v.allow_version_upgrade != null }
}
output "redshift_clusters_apply_immediately" {
  description = "Map of apply_immediately values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.apply_immediately if v.apply_immediately != null }
}
output "redshift_clusters_aqua_configuration_status" {
  description = "Map of aqua_configuration_status values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.aqua_configuration_status if v.aqua_configuration_status != null && length(v.aqua_configuration_status) > 0 }
}
output "redshift_clusters_arn" {
  description = "Map of arn values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "redshift_clusters_automated_snapshot_retention_period" {
  description = "Map of automated_snapshot_retention_period values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.automated_snapshot_retention_period if v.automated_snapshot_retention_period != null }
}
output "redshift_clusters_availability_zone" {
  description = "Map of availability_zone values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "redshift_clusters_availability_zone_relocation_enabled" {
  description = "Map of availability_zone_relocation_enabled values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.availability_zone_relocation_enabled if v.availability_zone_relocation_enabled != null }
}
output "redshift_clusters_cluster_identifier" {
  description = "Map of cluster_identifier values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.cluster_identifier if v.cluster_identifier != null && length(v.cluster_identifier) > 0 }
}
output "redshift_clusters_cluster_namespace_arn" {
  description = "Map of cluster_namespace_arn values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.cluster_namespace_arn if v.cluster_namespace_arn != null && length(v.cluster_namespace_arn) > 0 }
}
output "redshift_clusters_cluster_nodes" {
  description = "Map of cluster_nodes values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.cluster_nodes if v.cluster_nodes != null && length(v.cluster_nodes) > 0 }
}
output "redshift_clusters_cluster_parameter_group_name" {
  description = "Map of cluster_parameter_group_name values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.cluster_parameter_group_name if v.cluster_parameter_group_name != null && length(v.cluster_parameter_group_name) > 0 }
}
output "redshift_clusters_cluster_public_key" {
  description = "Map of cluster_public_key values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.cluster_public_key if v.cluster_public_key != null && length(v.cluster_public_key) > 0 }
}
output "redshift_clusters_cluster_revision_number" {
  description = "Map of cluster_revision_number values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.cluster_revision_number if v.cluster_revision_number != null && length(v.cluster_revision_number) > 0 }
}
output "redshift_clusters_cluster_subnet_group_name" {
  description = "Map of cluster_subnet_group_name values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.cluster_subnet_group_name if v.cluster_subnet_group_name != null && length(v.cluster_subnet_group_name) > 0 }
}
output "redshift_clusters_cluster_type" {
  description = "Map of cluster_type values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.cluster_type if v.cluster_type != null && length(v.cluster_type) > 0 }
}
output "redshift_clusters_cluster_version" {
  description = "Map of cluster_version values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.cluster_version if v.cluster_version != null && length(v.cluster_version) > 0 }
}
output "redshift_clusters_database_name" {
  description = "Map of database_name values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "redshift_clusters_default_iam_role_arn" {
  description = "Map of default_iam_role_arn values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.default_iam_role_arn if v.default_iam_role_arn != null && length(v.default_iam_role_arn) > 0 }
}
output "redshift_clusters_dns_name" {
  description = "Map of dns_name values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.dns_name if v.dns_name != null && length(v.dns_name) > 0 }
}
output "redshift_clusters_elastic_ip" {
  description = "Map of elastic_ip values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.elastic_ip if v.elastic_ip != null && length(v.elastic_ip) > 0 }
}
output "redshift_clusters_encrypted" {
  description = "Map of encrypted values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.encrypted if v.encrypted != null && length(v.encrypted) > 0 }
}
output "redshift_clusters_endpoint" {
  description = "Map of endpoint values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "redshift_clusters_enhanced_vpc_routing" {
  description = "Map of enhanced_vpc_routing values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.enhanced_vpc_routing if v.enhanced_vpc_routing != null }
}
output "redshift_clusters_final_snapshot_identifier" {
  description = "Map of final_snapshot_identifier values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.final_snapshot_identifier if v.final_snapshot_identifier != null && length(v.final_snapshot_identifier) > 0 }
}
output "redshift_clusters_iam_roles" {
  description = "Map of iam_roles values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.iam_roles if v.iam_roles != null && length(v.iam_roles) > 0 }
}
output "redshift_clusters_kms_key_id" {
  description = "Map of kms_key_id values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "redshift_clusters_maintenance_track_name" {
  description = "Map of maintenance_track_name values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.maintenance_track_name if v.maintenance_track_name != null && length(v.maintenance_track_name) > 0 }
}
output "redshift_clusters_manage_master_password" {
  description = "Map of manage_master_password values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.manage_master_password if v.manage_master_password != null }
}
output "redshift_clusters_manual_snapshot_retention_period" {
  description = "Map of manual_snapshot_retention_period values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.manual_snapshot_retention_period if v.manual_snapshot_retention_period != null }
}
output "redshift_clusters_master_password" {
  description = "Map of master_password values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.master_password if v.master_password != null && length(v.master_password) > 0 }
  sensitive   = true
}
output "redshift_clusters_master_password_secret_arn" {
  description = "Map of master_password_secret_arn values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.master_password_secret_arn if v.master_password_secret_arn != null && length(v.master_password_secret_arn) > 0 }
}
output "redshift_clusters_master_password_secret_kms_key_id" {
  description = "Map of master_password_secret_kms_key_id values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.master_password_secret_kms_key_id if v.master_password_secret_kms_key_id != null && length(v.master_password_secret_kms_key_id) > 0 }
}
output "redshift_clusters_master_password_wo" {
  description = "Map of master_password_wo values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.master_password_wo if v.master_password_wo != null && length(v.master_password_wo) > 0 }
  sensitive   = true
}
output "redshift_clusters_master_password_wo_version" {
  description = "Map of master_password_wo_version values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.master_password_wo_version if v.master_password_wo_version != null }
}
output "redshift_clusters_master_username" {
  description = "Map of master_username values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.master_username if v.master_username != null && length(v.master_username) > 0 }
}
output "redshift_clusters_multi_az" {
  description = "Map of multi_az values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.multi_az if v.multi_az != null }
}
output "redshift_clusters_node_type" {
  description = "Map of node_type values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.node_type if v.node_type != null && length(v.node_type) > 0 }
}
output "redshift_clusters_number_of_nodes" {
  description = "Map of number_of_nodes values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.number_of_nodes if v.number_of_nodes != null }
}
output "redshift_clusters_owner_account" {
  description = "Map of owner_account values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.owner_account if v.owner_account != null && length(v.owner_account) > 0 }
}
output "redshift_clusters_port" {
  description = "Map of port values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.port if v.port != null }
}
output "redshift_clusters_preferred_maintenance_window" {
  description = "Map of preferred_maintenance_window values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.preferred_maintenance_window if v.preferred_maintenance_window != null && length(v.preferred_maintenance_window) > 0 }
}
output "redshift_clusters_publicly_accessible" {
  description = "Map of publicly_accessible values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.publicly_accessible if v.publicly_accessible != null }
}
output "redshift_clusters_region" {
  description = "Map of region values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "redshift_clusters_skip_final_snapshot" {
  description = "Map of skip_final_snapshot values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.skip_final_snapshot if v.skip_final_snapshot != null }
}
output "redshift_clusters_snapshot_arn" {
  description = "Map of snapshot_arn values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.snapshot_arn if v.snapshot_arn != null && length(v.snapshot_arn) > 0 }
}
output "redshift_clusters_snapshot_cluster_identifier" {
  description = "Map of snapshot_cluster_identifier values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.snapshot_cluster_identifier if v.snapshot_cluster_identifier != null && length(v.snapshot_cluster_identifier) > 0 }
}
output "redshift_clusters_snapshot_identifier" {
  description = "Map of snapshot_identifier values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.snapshot_identifier if v.snapshot_identifier != null && length(v.snapshot_identifier) > 0 }
}
output "redshift_clusters_tags" {
  description = "Map of tags values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "redshift_clusters_tags_all" {
  description = "Map of tags_all values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "redshift_clusters_vpc_security_group_ids" {
  description = "Map of vpc_security_group_ids values across all redshift_clusters, keyed the same as var.redshift_clusters"
  value       = { for k, v in aws_redshift_cluster.redshift_clusters : k => v.vpc_security_group_ids if v.vpc_security_group_ids != null && length(v.vpc_security_group_ids) > 0 }
}

