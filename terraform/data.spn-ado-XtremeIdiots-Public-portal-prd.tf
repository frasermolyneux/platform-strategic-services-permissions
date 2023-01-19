data "azuread_application" "spn-ado-XtremeIdiots-Public-portal-prd" {
  display_name = "spn-ado-XtremeIdiots-Public-portal-prd"
}

data "azuread_service_principal" "spn-ado-XtremeIdiots-Public-portal-prd_service-principal" {
  application_id = data.azuread_application.spn-ado-XtremeIdiots-Public-portal-prd.application_id
}
