data "azuread_application" "spn-github-portal-repository-func-production" {
  display_name = "spn-github-portal-repository-func-production"
}

data "azuread_service_principal" "spn-github-portal-repository-func-production_service-principal" {
  application_id = data.azuread_application.spn-github-portal-repository-func-production.application_id
}
