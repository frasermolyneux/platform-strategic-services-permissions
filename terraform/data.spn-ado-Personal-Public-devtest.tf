data "azuread_application" "spn-ado-Personal-Public-devtest" {
  display_name = "spn-ado-Personal-Public-devtest"
}

data "azuread_service_principal" "spn-ado-Personal-Public-devtest_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-devtest.application_id
}
