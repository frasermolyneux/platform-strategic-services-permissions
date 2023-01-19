data "azuread_application" "spn-ado-Personal-Public-platform-monitoring" {
  display_name = "spn-ado-Personal-Public-platform-monitoring"
}

data "azuread_service_principal" "spn-ado-Personal-Public-platform-monitoring_service-principal" {
  application_id = data.azuread_application.spn-ado-Personal-Public-platform-monitoring.application_id
}
