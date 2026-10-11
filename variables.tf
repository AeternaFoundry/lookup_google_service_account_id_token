variable "service_account_id_token_lookup" {
  description = <<EOT
Map of service_account_id_token_lookup, attributes below
Required:
    - target_audience
Optional:
    - delegates
    - include_email
    - target_service_account
EOT

  type = map(object({
    target_audience        = string
    delegates              = optional(set(string))
    include_email          = optional(bool)
    target_service_account = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

