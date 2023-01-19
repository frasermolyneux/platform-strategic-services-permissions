// CONTRIBUTOR

resource "azurerm_role_assignment" "spn-ado-Personal-Public-geolocation-prd_rg-platform-frontdoor-prd-uksouth_contributor" {
  scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-frontdoor-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-geolocation-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-mx-consulting-prd_rg-platform-frontdoor-prd-uksouth_contributor" {
  scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-frontdoor-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-mx-consulting-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-XtremeIdiots-Public-portal-prd_rg-platform-frontdoor-prd-uksouth_contributor" {
  scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-frontdoor-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-XtremeIdiots-Public-portal-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-repository-production_rg-platform-frontdoor-prd-uksouth_contributor" {
  scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-frontdoor-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-repository-production_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-servers-integration-production_rg-platform-frontdoor-prd-uksouth_contributor" {
  scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-frontdoor-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-servers-integration-production_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-event-ingest-production_rg-platform-frontdoor-prd-uksouth_contributor" {
  scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-frontdoor-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-event-ingest-production_service-principal.object_id
}
