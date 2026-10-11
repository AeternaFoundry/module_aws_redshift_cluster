variable "redshift_clusters" {
  description = <<EOT
Map of redshift_clusters, attributes below
Required:
    - cluster_identifier
    - node_type
Optional:
    - allow_version_upgrade
    - apply_immediately
    - aqua_configuration_status
    - automated_snapshot_retention_period
    - availability_zone
    - availability_zone_relocation_enabled
    - cluster_parameter_group_name
    - cluster_subnet_group_name
    - cluster_type
    - cluster_version
    - database_name
    - default_iam_role_arn
    - elastic_ip
    - encrypted
    - enhanced_vpc_routing
    - final_snapshot_identifier
    - iam_roles
    - kms_key_id
    - maintenance_track_name
    - manage_master_password
    - manual_snapshot_retention_period
    - master_password
    - master_password_secret_kms_key_id
    - master_password_wo
    - master_password_wo_version
    - master_username
    - multi_az
    - number_of_nodes
    - owner_account
    - port
    - preferred_maintenance_window
    - publicly_accessible
    - region
    - skip_final_snapshot
    - snapshot_arn
    - snapshot_cluster_identifier
    - snapshot_identifier
    - tags
    - tags_all
    - vpc_security_group_ids
EOT

  type = map(object({
    cluster_identifier                   = string
    node_type                            = string
    master_password                      = optional(string)
    master_password_secret_kms_key_id    = optional(string)
    master_password_wo                   = optional(string)
    master_password_wo_version           = optional(number)
    master_username                      = optional(string)
    multi_az                             = optional(bool)
    number_of_nodes                      = optional(number)
    owner_account                        = optional(string)
    port                                 = optional(number)
    preferred_maintenance_window         = optional(string)
    publicly_accessible                  = optional(bool)
    region                               = optional(string)
    skip_final_snapshot                  = optional(bool)
    snapshot_arn                         = optional(string)
    snapshot_cluster_identifier          = optional(string)
    snapshot_identifier                  = optional(string)
    tags                                 = optional(map(string))
    manual_snapshot_retention_period     = optional(number)
    manage_master_password               = optional(bool)
    maintenance_track_name               = optional(string)
    kms_key_id                           = optional(string)
    allow_version_upgrade                = optional(bool)
    apply_immediately                    = optional(bool)
    aqua_configuration_status            = optional(string)
    automated_snapshot_retention_period  = optional(number)
    availability_zone                    = optional(string)
    availability_zone_relocation_enabled = optional(bool)
    cluster_parameter_group_name         = optional(string)
    cluster_subnet_group_name            = optional(string)
    cluster_type                         = optional(string)
    cluster_version                      = optional(string)
    database_name                        = optional(string)
    default_iam_role_arn                 = optional(string)
    elastic_ip                           = optional(string)
    encrypted                            = optional(string)
    enhanced_vpc_routing                 = optional(bool)
    final_snapshot_identifier            = optional(string)
    iam_roles                            = optional(set(string))
    tags_all                             = optional(map(string))
    vpc_security_group_ids               = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.redshift_clusters : (
        v.automated_snapshot_retention_period == null || (v.automated_snapshot_retention_period <= 35)
      )
    ])
    error_message = "must be at most 35"
  }
  validation {
    condition = alltrue([
      for k, v in var.redshift_clusters : (
        v.manual_snapshot_retention_period == null || (v.manual_snapshot_retention_period >= -1 && v.manual_snapshot_retention_period <= 3653)
      )
    ])
    error_message = "must be between -1 and 3653"
  }
  validation {
    condition = alltrue([
      for k, v in var.redshift_clusters : (
        v.master_password == null || ((length(v.master_password) >= 8 && length(v.master_password) <= 64) && (can(regex("^.*[a-z].*", v.master_password))) && (can(regex("^.*[A-Z].*", v.master_password))) && (can(regex("^.*[0-9].*", v.master_password))) && (can(regex("^[^\\@\\/'\" ]*$", v.master_password))))
      )
    ])
    error_message = "all of: must be between 8 and 64 characters; must contain at least one lowercase letter; must contain at least one uppercase letter; must contain at least one number; cannot contain [/@\"' ]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redshift_clusters : (
        v.master_password_wo == null || ((length(v.master_password_wo) >= 8 && length(v.master_password_wo) <= 64) && (can(regex("^.*[a-z].*", v.master_password_wo))) && (can(regex("^.*[A-Z].*", v.master_password_wo))) && (can(regex("^.*[0-9].*", v.master_password_wo))) && (can(regex("^[^\\@\\/'\" ]*$", v.master_password_wo))))
      )
    ])
    error_message = "all of: must be between 8 and 64 characters; must contain at least one lowercase letter; must contain at least one uppercase letter; must contain at least one number; cannot contain [/@\"' ]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redshift_clusters : (
        v.master_password_secret_kms_key_id == null || (length(v.master_password_secret_kms_key_id) >= 1)
      )
    ])
    error_message = "[from verify.ValidKMSKeyID: invalid when len(value) < 1]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redshift_clusters : (
        v.master_password_secret_kms_key_id == null || (length(v.master_password_secret_kms_key_id) <= 2048)
      )
    ])
    error_message = "[from verify.ValidKMSKeyID: invalid when len(value) > 2048]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redshift_clusters : (
        v.master_username == null || ((length(v.master_username) >= 1 && length(v.master_username) <= 128) && (can(regex("^[A-Za-z][0-9A-Za-z_.@+-]*$", v.master_username))))
      )
    ])
    error_message = "all of: must be between 1 and 128 characters; must start with a letter and only contain alphanumeric characters, underscores, plus signs, dots, @ symbols, or hyphens"
  }
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

