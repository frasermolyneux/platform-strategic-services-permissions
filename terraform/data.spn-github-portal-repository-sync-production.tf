data "azuread_application" "spn-github-portal-sync-production" {
  display_name = "spn-github-portal-sync-production"
}

data "azuread_service_principal" "spn-github-portal-sync-production_service-principal" {
  application_id = data.azuread_application.spn-github-portal-sync-production.application_id
}
