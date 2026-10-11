resource "google_config_deployment" "config_deployments" {
  for_each = var.config_deployments

  location                  = each.value.location
  name                      = each.value.name
  service_account           = each.value.service_account
  annotations               = each.value.annotations
  artifacts_gcs_bucket      = each.value.artifacts_gcs_bucket
  deletion_policy           = each.value.deletion_policy
  force_destroy             = each.value.force_destroy
  import_existing_resources = each.value.import_existing_resources
  labels                    = each.value.labels
  project                   = each.value.project
  quota_validation          = each.value.quota_validation
  tf_version_constraint     = each.value.tf_version_constraint
  worker_pool               = each.value.worker_pool

  terraform_blueprint {
    gcs_source = each.value.terraform_blueprint.gcs_source
    dynamic "git_source" {
      for_each = each.value.terraform_blueprint.git_source != null ? [each.value.terraform_blueprint.git_source] : []
      content {
        directory = git_source.value.directory
        ref       = git_source.value.ref
        repo      = git_source.value.repo
      }
    }
    dynamic "input_values" {
      for_each = each.value.terraform_blueprint.input_values != null ? each.value.terraform_blueprint.input_values : []
      content {
        input_value   = input_values.value.input_value
        variable_name = input_values.value.variable_name
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

