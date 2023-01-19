data "azuread_application" "spn-ado-XtremeIdiots-Public-devtest" {
  display_name = "spn-ado-XtremeIdiots-Public-devtest"
}

data "azuread_service_principal" "spn-ado-XtremeIdiots-Public-devtest_service-principal" {
  application_id = data.azuread_application.spn-ado-XtremeIdiots-Public-devtest.application_id
}
