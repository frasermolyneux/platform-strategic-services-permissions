data "azuread_application" "spn-ado-Personal-Public-azlanding-zones" {
  display_name = "spn-ado-Personal-Public-azlanding-zones"
}

data "azuread_service_principal" "spn-ado-Personal-Public-azlanding-zones_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-azlanding-zones.application_id
}
