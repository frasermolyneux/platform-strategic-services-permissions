data "azuread_application" "spn-ado-Personal-Public-strategic-prd" {
  display_name = "spn-ado-Personal-Public-strategic-prd"
}

data "azuread_service_principal" "spn-ado-Personal-Public-strategic-prd_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-strategic-prd.application_id
}
