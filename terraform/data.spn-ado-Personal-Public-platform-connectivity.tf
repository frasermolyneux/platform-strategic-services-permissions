data "azuread_application" "spn-ado-Personal-Public-platform-connectivity" {
  display_name = "spn-ado-Personal-Public-platform-connectivity"
}

data "azuread_service_principal" "spn-ado-Personal-Public-platform-connectivity_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-platform-connectivity.application_id
}
