data "azuread_application" "spn-github-portal-repository-func-development" {
  display_name = "spn-github-portal-repository-func-development"
}

data "azuread_service_principal" "spn-github-portal-repository-func-development_service-principal" {
  application_id = data.azuread_application.spn-github-portal-repository-func-development.application_id
}
