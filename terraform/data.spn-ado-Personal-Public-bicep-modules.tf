data "azuread_application" "spn-ado-Personal-Public-bicep-modules" {
  display_name = "spn-ado-Personal-Public-bicep-modules"
}

data "azuread_service_principal" "spn-ado-Personal-Public-bicep-modules_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-bicep-modules.application_id
}
