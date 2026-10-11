data "google_service_account_id_token" "service_account_id_token_lookup" {
  for_each = var.service_account_id_token_lookup

  target_audience        = each.value.target_audience
  delegates              = each.value.delegates
  include_email          = each.value.include_email
  target_service_account = each.value.target_service_account
}

