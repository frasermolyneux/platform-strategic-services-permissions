resource "azurerm_role_assignment" "spn-ado-Personal-Public-bicep-modules_acrmxplatformprduksouth_contributor" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-bicep-modules_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-platform-monitoring_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-platform-monitoring_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-platform-connectivity_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-platform-connectivity_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-geolocation-prd_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-geolocation-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-mx-consulting-prd_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-mx-consulting-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-XtremeIdiots-Public-portal-prd_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-ado-XtremeIdiots-Public-portal-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-strategic-prd_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-strategic-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-XtremeIdiots-Public-demomanager-prd_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-ado-XtremeIdiots-Public-demomanager-prd_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-XtremeIdiots-Public-devtest_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-ado-XtremeIdiots-Public-devtest_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-ado-Personal-Public-devtest_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-ado-Personal-Public-devtest_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-servers-integration-acr_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-github-portal-servers-integration-acr_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-servers-integration-development_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-github-portal-servers-integration-development_service-principal.object_id
}

resource "azurerm_role_assignment" "spn-github-portal-servers-integration-production_acrmxplatformprduksouth_acrpull" {
  scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acrmxplatformprduksouth"
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.spn-github-portal-servers-integration-production_service-principal.object_id
}
