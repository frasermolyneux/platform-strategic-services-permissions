// WEBSITE CONTRIBUTOR

resource "azurerm_role_assignment" "spn-github-portal-repository-development_rg-platform-webapps-dev-uksouth_website-contributor" {
  scope                = "/subscriptions/1b5b28ed-1365-4a48-b285-80f80a6aaa1b/resourceGroups/rg-platform-webapps-dev-uksouth"
  role_definition_name = "Website Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-repository-development_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-repository-func-development_rg-platform-webapps-dev-uksouth_website-contributor" {
  scope                = "/subscriptions/1b5b28ed-1365-4a48-b285-80f80a6aaa1b/resourceGroups/rg-platform-webapps-dev-uksouth"
  role_definition_name = "Website Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-repository-func-development_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-event-ingest-development_rg-platform-webapps-dev-uksouth_website-contributor" {
  scope                = "/subscriptions/1b5b28ed-1365-4a48-b285-80f80a6aaa1b/resourceGroups/rg-platform-webapps-dev-uksouth"
  role_definition_name = "Website Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-event-ingest-development_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-sync-development_rg-platform-webapps-dev-uksouth_website-contributor" {
  scope                = "/subscriptions/1b5b28ed-1365-4a48-b285-80f80a6aaa1b/resourceGroups/rg-platform-webapps-dev-uksouth"
  role_definition_name = "Website Contributor"
  principal_id         = data.azuread_service_principal.spn-github-portal-sync-development_service-principal.object_id
}
