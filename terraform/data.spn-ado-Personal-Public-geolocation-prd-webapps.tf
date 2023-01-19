data "azuread_application" "spn-ado-Personal-Public-geolocation-prd-webapps" {
  display_name = "spn-ado-Personal-Public-geolocation-prd-webapps"
}

data "azuread_service_principal" "spn-ado-Personal-Public-geolocation-prd-webapps_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-geolocation-prd-webapps.application_id
}
