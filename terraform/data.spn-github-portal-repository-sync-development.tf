data "azuread_application" "spn-github-portal-sync-development" {
  display_name = "spn-github-portal-sync-development"
}

data "azuread_service_principal" "spn-github-portal-sync-development_service-principal" {
  application_id = data.azuread_application.spn-github-portal-sync-development.application_id
}
