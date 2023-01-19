data "azuread_application" "spn-ado-XtremeIdiots-Public-demomanager-prd" {
  display_name = "spn-ado-XtremeIdiots-Public-demomanager-prd"
}

data "azuread_service_principal" "spn-ado-XtremeIdiots-Public-demomanager-prd_service-principal" {
  application_id = data.azuread_application.spn-ado-XtremeIdiots-Public-demomanager-prd.application_id
}
