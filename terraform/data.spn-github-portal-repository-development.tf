data "azuread_application" "spn-github-portal-repository-development" {
  display_name = "spn-github-portal-repository-development"
}

data "azuread_service_principal" "spn-github-portal-repository-development_service-principal" {
  application_id = data.azuread_application.spn-github-portal-repository-development.application_id
}
