output "config_deployments_id" {
  description = "Map of id values across all config_deployments, keyed the same as var.config_deployments except keys with no id are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_deployments_annotations" {
  description = "Map of annotations values across all config_deployments, keyed the same as var.config_deployments except keys with no annotations are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "config_deployments_artifacts_gcs_bucket" {
  description = "Map of artifacts_gcs_bucket values across all config_deployments, keyed the same as var.config_deployments except keys with no artifacts_gcs_bucket are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.artifacts_gcs_bucket if v.artifacts_gcs_bucket != null && length(v.artifacts_gcs_bucket) > 0 }
}
output "config_deployments_deletion_policy" {
  description = "Map of deletion_policy values across all config_deployments, keyed the same as var.config_deployments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "config_deployments_effective_annotations" {
  description = "Map of effective_annotations values across all config_deployments, keyed the same as var.config_deployments except keys with no effective_annotations are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "config_deployments_effective_labels" {
  description = "Map of effective_labels values across all config_deployments, keyed the same as var.config_deployments except keys with no effective_labels are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "config_deployments_force_destroy" {
  description = "Map of force_destroy values across all config_deployments, keyed the same as var.config_deployments except keys with no force_destroy are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.force_destroy if v.force_destroy != null }
}
output "config_deployments_import_existing_resources" {
  description = "Map of import_existing_resources values across all config_deployments, keyed the same as var.config_deployments except keys with no import_existing_resources are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.import_existing_resources if v.import_existing_resources != null }
}
output "config_deployments_labels" {
  description = "Map of labels values across all config_deployments, keyed the same as var.config_deployments except keys with no labels are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "config_deployments_latest_revision" {
  description = "Map of latest_revision values across all config_deployments, keyed the same as var.config_deployments except keys with no latest_revision are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.latest_revision if v.latest_revision != null && length(v.latest_revision) > 0 }
}
output "config_deployments_location" {
  description = "Map of location values across all config_deployments, keyed the same as var.config_deployments except keys with no location are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.location if v.location != null && length(v.location) > 0 }
}
output "config_deployments_name" {
  description = "Map of name values across all config_deployments, keyed the same as var.config_deployments except keys with no name are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "config_deployments_project" {
  description = "Map of project values across all config_deployments, keyed the same as var.config_deployments except keys with no project are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.project if v.project != null && length(v.project) > 0 }
}
output "config_deployments_quota_validation" {
  description = "Map of quota_validation values across all config_deployments, keyed the same as var.config_deployments except keys with no quota_validation are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.quota_validation if v.quota_validation != null && length(v.quota_validation) > 0 }
}
output "config_deployments_service_account" {
  description = "Map of service_account values across all config_deployments, keyed the same as var.config_deployments except keys with no service_account are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.service_account if v.service_account != null && length(v.service_account) > 0 }
}
output "config_deployments_state" {
  description = "Map of state values across all config_deployments, keyed the same as var.config_deployments except keys with no state are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "config_deployments_terraform_blueprint" {
  description = "Map of terraform_blueprint values across all config_deployments, keyed the same as var.config_deployments except keys with no terraform_blueprint are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => one(v.terraform_blueprint) if v.terraform_blueprint != null && length(v.terraform_blueprint) > 0 }
}
output "config_deployments_terraform_labels" {
  description = "Map of terraform_labels values across all config_deployments, keyed the same as var.config_deployments except keys with no terraform_labels are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "config_deployments_tf_version_constraint" {
  description = "Map of tf_version_constraint values across all config_deployments, keyed the same as var.config_deployments except keys with no tf_version_constraint are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.tf_version_constraint if v.tf_version_constraint != null && length(v.tf_version_constraint) > 0 }
}
output "config_deployments_worker_pool" {
  description = "Map of worker_pool values across all config_deployments, keyed the same as var.config_deployments except keys with no worker_pool are omitted"
  value       = { for k, v in google_config_deployment.config_deployments : k => v.worker_pool if v.worker_pool != null && length(v.worker_pool) > 0 }
}

