// CONTRIBUTOR

resource "azurerm_role_assignment" "spn-ado-Personal-Public-geolocation-prd_rg-platform-webapps-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-geolocation-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-geolocation-prd-webapps_rg-platform-webapps-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-geolocation-prd-webapps_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-mx-consulting-prd_rg-platform-webapps-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-mx-consulting-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-mx-consulting-prd-webapps_rg-platform-webapps-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-mx-consulting-prd-webapps_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-XtremeIdiots-Public-portal-prd_rg-platform-webapps-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-XtremeIdiots-Public-portal-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-XtremeIdiots-Public-portal-prd-webapps_rg-platform-webapps-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-XtremeIdiots-Public-portal-prd-webapps_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-servers-integration-production_rg-platform-webapps-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-servers-integration-production_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-platform-webapps-production_rg-platform-webapps-prd-uksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-github-platform-webapps-production_service-principal.object_id
}

// WEBSITE CONTRIBUTOR

resource "azurerm_role_assignment" "spn-github-portal-repository-production_rg-platform-webapps-prd-uksouth_website-contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Website Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-repository-production_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-repository-func-production_rg-platform-webapps-prd-uksouth_website-contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Website Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-repository-func-production_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-event-ingest-production_rg-platform-webapps-prd-uksouth_website-contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Website Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-event-ingest-production_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-sync-production_rg-platform-webapps-prd-uksouth_website-contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-prd-uksouth"
  role_definition_name = "Website Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-sync-production_service-principal.object_id
}
