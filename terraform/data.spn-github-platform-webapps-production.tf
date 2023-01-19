data "azuread_application" "spn-github-platform-webapps-production" {
  display_name = "spn-github-platform-webapps-production"
}

data "azuread_service_principal" "spn-github-platform-webapps-production_service-principal" {
  application_id = data.azuread_application.spn-github-platform-webapps-production.application_id
}
