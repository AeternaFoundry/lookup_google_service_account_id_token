output "service_account_id_token_lookup_id" {
  description = "Map of id values across all service_account_id_token_lookup, keyed the same as var.service_account_id_token_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_service_account_id_token.service_account_id_token_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_account_id_token_lookup_delegates" {
  description = "Map of delegates values across all service_account_id_token_lookup, keyed the same as var.service_account_id_token_lookup except keys with no delegates are omitted"
  value       = { for k, v in data.google_service_account_id_token.service_account_id_token_lookup : k => v.delegates if v.delegates != null && length(v.delegates) > 0 }
}
output "service_account_id_token_lookup_id_token" {
  description = "Map of id_token values across all service_account_id_token_lookup, keyed the same as var.service_account_id_token_lookup except keys with no id_token are omitted"
  value       = { for k, v in data.google_service_account_id_token.service_account_id_token_lookup : k => v.id_token if v.id_token != null && length(v.id_token) > 0 }
  sensitive   = true
}
output "service_account_id_token_lookup_include_email" {
  description = "Map of include_email values across all service_account_id_token_lookup, keyed the same as var.service_account_id_token_lookup except keys with no include_email are omitted"
  value       = { for k, v in data.google_service_account_id_token.service_account_id_token_lookup : k => v.include_email if v.include_email != null }
}
output "service_account_id_token_lookup_target_audience" {
  description = "Map of target_audience values across all service_account_id_token_lookup, keyed the same as var.service_account_id_token_lookup except keys with no target_audience are omitted"
  value       = { for k, v in data.google_service_account_id_token.service_account_id_token_lookup : k => v.target_audience if v.target_audience != null && length(v.target_audience) > 0 }
}
output "service_account_id_token_lookup_target_service_account" {
  description = "Map of target_service_account values across all service_account_id_token_lookup, keyed the same as var.service_account_id_token_lookup except keys with no target_service_account are omitted"
  value       = { for k, v in data.google_service_account_id_token.service_account_id_token_lookup : k => v.target_service_account if v.target_service_account != null && length(v.target_service_account) > 0 }
}

