variable "config_deployments" {
  description = <<EOT
Map of config_deployments, attributes below
Required:
    - location
    - name
    - service_account
    - terraform_blueprint (block):
        - gcs_source (optional)
        - git_source (optional, block):
            - directory (optional)
            - ref (optional)
            - repo (required)
        - input_values (optional, block):
            - input_value (required)
            - variable_name (required)
Optional:
    - annotations
    - artifacts_gcs_bucket
    - deletion_policy
    - force_destroy
    - import_existing_resources
    - labels
    - project
    - quota_validation
    - tf_version_constraint
    - worker_pool
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                  = string
    name                      = string
    service_account           = string
    annotations               = optional(map(string))
    artifacts_gcs_bucket      = optional(string)
    deletion_policy           = optional(string)
    force_destroy             = optional(bool)
    import_existing_resources = optional(bool)
    labels                    = optional(map(string))
    project                   = optional(string)
    quota_validation          = optional(string)
    tf_version_constraint     = optional(string)
    worker_pool               = optional(string)
    terraform_blueprint = object({
      gcs_source = optional(string)
      git_source = optional(object({
        directory = optional(string)
        ref       = optional(string)
        repo      = string
      }))
      input_values = optional(list(object({
        input_value   = string
        variable_name = string
      })))
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

