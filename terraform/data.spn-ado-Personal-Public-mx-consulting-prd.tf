data "azuread_application" "spn-ado-Personal-Public-mx-consulting-prd" {
  display_name = "spn-ado-Personal-Public-mx-consulting-prd"
}

data "azuread_service_principal" "spn-ado-Personal-Public-mx-consulting-prd_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-mx-consulting-prd.application_id
}
