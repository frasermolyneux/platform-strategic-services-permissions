data "azuread_application" "spn-ado-Personal-Public-mx-consulting-prd-webapps" {
  display_name = "spn-ado-Personal-Public-mx-consulting-prd-webapps"
}

data "azuread_service_principal" "spn-ado-Personal-Public-mx-consulting-prd-webapps_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-mx-consulting-prd-webapps.application_id
}
