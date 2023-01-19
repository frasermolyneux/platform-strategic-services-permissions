data "azuread_application" "spn-github-portal-servers-integration-acr" {
  display_name = "spn-github-portal-servers-integration-acr"
}

data "azuread_service_principal" "spn-github-portal-servers-integration-acr_service-principal" {
  application_id = data.azuread_application.spn-github-portal-servers-integration-acr.application_id
}
