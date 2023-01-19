data "azuread_application" "spn-github-portal-servers-integration-development" {
  display_name = "spn-github-portal-servers-integration-development"
}

data "azuread_service_principal" "spn-github-portal-servers-integration-development_service-principal" {
  application_id = data.azuread_application.spn-github-portal-servers-integration-development.application_id
}
