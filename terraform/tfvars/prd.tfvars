environment = "prd"
location    = "uksouth"

tags = {
  Environment = "prd",
  Workload    = "platform-strategic-services-permissions",
  DeployedBy  = "GitHub-Terraform",
  Git         = "https://github.com/frasermolyneux/platform-strategic-services-permissions"
}

subscriptions = {
  sub-platform-connectivity = {
    name            = "sub-platform-connectivity"
    subscription_id = "db34f572-8b71-40d6-8f99-f29a27612144"
  },
  sub-platform-strategic = {
    name            = "sub-platform-strategic"
    subscription_id = "903b6685-c12a-4703-ac54-7ec1ff15ca43"
  },
  sub-visualstudio-enterprise = {
    name            = "sub-visualstudio-enterprise"
    subscription_id = "d68448b0-9947-46d7-8771-baa331a3063a"
  }
}

service_principals = [
  {
    name = "spn-azure-landing-zones-production"
  },
  {
    name = "spn-demo-manager-production"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
      }
    ]
  },
  {
    name = "spn-geo-location-development"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
      }
    ]
  },
  {
    name = "spn-geo-location-production"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
      }
    ]
  },
  {
    name = "spn-platform-connectivity-development"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
      }
    ]
  },
  {
    name = "spn-platform-connectivity-production"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
      }
    ]
  },
  {
    name = "spn-platform-monitoring-production"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
      }
    ]
  },
  {
    name = "spn-platform-strategic-services-development"
  },
  {
    name = "spn-platform-strategic-services-permissions-production"
  },
  {
    name = "spn-platform-strategic-services-production"
  },
  {
    name = "spn-portal-event-ingest-development"
  },
  {
    name = "spn-portal-event-ingest-production"
  },
  {
    name = "spn-portal-repository-development"
    role_assignments = [
      { // Required to publish APIs and create subscriptions
        role_definition_name = "API Management Service Contributor",
        scope                = "/subscriptions/d68448b0-9947-46d7-8771-baa331a3063a/resourceGroups/rg-platform-apim-22ll2pfvig6pg-dev-uksouth/providers/Microsoft.ApiManagement/service/apim-mx-platform-22ll2pfvig6pg-dev-uksouth"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create web apps for the app service plan
        role_definition_name = "Website Contributor",
        scope                = "/subscriptions/d68448b0-9947-46d7-8771-baa331a3063a/resourceGroups/rg-platform-webapps-22ll2pfvig6pg-dev-uksouth/providers/Microsoft.Web/serverFarms/plan-platform-22ll2pfvig6pg-dev-uksouth-01"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create Front Door configuration for external facing services
        role_definition_name = "CDN Profile Contributor",
        scope                = "/subscriptions/d68448b0-9947-46d7-8771-baa331a3063a/resourceGroups/rg-platform-frontdoor-22ll2pfvig6pg-dev-uksouth/providers/Microsoft.Cdn/profiles/fd-platform-22ll2pfvig6pg-dev"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create DNS configuration for external facing services
        role_definition_name = "DNS Zone Contributor",
        scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-dns-utftcdi77in3c-prd-uksouth"
        provider             = "sub-platform-connectivity"
      }
    ]
  },
  {
    name = "spn-portal-repository-production"
    role_assignments = [
      { // Required to publish APIs and create subscriptions
        role_definition_name = "API Management Service Contributor",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-apim-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ApiManagement/service/apim-mx-platform-4xhbmv4lmxxbs-prd-uksouth"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create web apps for the app service plan
        role_definition_name = "Website Contributor",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-webapps-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.Web/serverFarms/plan-platform-4xhbmv4lmxxbs-prd-uksouth-01"
      },
      { // Required to create Front Door configuration for external facing services
        role_definition_name = "CDN Profile Contributor",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-frontdoor-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.Cdn/profiles/fd-platform-4xhbmv4lmxxbs-prd"
      },
      { // Required to create DNS configuration for external facing services
        role_definition_name = "DNS Zone Contributor",
        scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-dns-utftcdi77in3c-prd-uksouth"
        provider             = "sub-platform-connectivity"
      }
    ]
  },
  {
    name = "spn-portal-repository-func-development"
  },
  {
    name = "spn-portal-repository-func-production"
  },
  {
    name = "spn-portal-servers-integration-development"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
      }
    ]
  },
  {
    name = "spn-portal-servers-integration-production"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
      }
    ]
  },
  {
    name = "spn-portal-sync-development"
  },
  {
    name = "spn-portal-sync-production"
  },
  {
    name = "spn-xtremeidiots-portal-development"
  },
  {
    name = "spn-xtremeidiots-portal-production"
  },
  {
    name = "spn-bicep-modules-production"
    role_assignments = [
      { // Required to push Bicep modules to the ACR
        role_definition_name = "Contributor",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
      }
    ]
  }
]
