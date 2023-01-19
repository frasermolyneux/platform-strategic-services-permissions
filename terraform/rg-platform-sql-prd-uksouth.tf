// CONTRIBUTOR

resource "azurerm_role_assignment" "spn-ado-XtremeIdiots-Public-portal-prd_rg-platform-sql-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-sql-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-XtremeIdiots-Public-portal-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-servers-integration-production_rg-platform-sql-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-sql-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-servers-integration-production_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-repository-production_rg-platform-sql-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-sql-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-repository-production_service-principal.object_id
}
