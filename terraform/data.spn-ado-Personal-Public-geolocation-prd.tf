data "azuread_application" "spn-ado-Personal-Public-geolocation-prd" {
  display_name = "spn-ado-Personal-Public-geolocation-prd"
}

data "azuread_service_principal" "spn-ado-Personal-Public-geolocation-prd_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-geolocation-prd.application_id
}
