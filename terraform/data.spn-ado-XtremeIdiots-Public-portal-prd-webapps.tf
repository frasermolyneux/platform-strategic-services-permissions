data "azuread_application" "spn-ado-XtremeIdiots-Public-portal-prd-webapps" {
  display_name = "spn-ado-XtremeIdiots-Public-portal-prd-webapps"
}

data "azuread_service_principal" "spn-ado-XtremeIdiots-Public-portal-prd-webapps_service-principal" {
  application_id = data.azuread_application.spn-ado-XtremeIdiots-Public-portal-prd-webapps.application_id
}
