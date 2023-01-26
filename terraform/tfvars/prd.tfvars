environment = "prd"
location    = "uksouth"
instance    = "01"

tags = {
  Environment = "prd",
  Workload    = "platform-strategic-services-permissions",
  DeployedBy  = "GitHub-Terraform",
  Git         = "https://github.com/frasermolyneux/platform-strategic-services-permissions"
}

aad_groups = [
  "sg-sql-platform-admins-dev-01",
  "sg-sql-platform-admins-prd-01"
]

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
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth-01/providers/Microsoft.ContainerRegistry/registries/acrty7og2i6qpv3s"
      }
    ]
  },
  {
    name = "spn-geo-location-development"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth-01/providers/Microsoft.ContainerRegistry/registries/acrty7og2i6qpv3s"
      },
      { // Required to publish APIs and create subscriptions
        role_definition_name = "API Management Service Contributor",
        scope                = "/subscriptions/d68448b0-9947-46d7-8771-baa331a3063a/resourceGroups/rg-platform-apim-dev-uksouth-01/providers/Microsoft.ApiManagement/service/apim-platform-dev-uksouth-amjx44uuirhb6"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create web apps for the app service plan
        role_definition_name = "Website Contributor",
        scope                = "/subscriptions/d68448b0-9947-46d7-8771-baa331a3063a/resourceGroups/rg-platform-plans-dev-uksouth-01"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create Front Door configuration for external facing services
        role_definition_name = "CDN Profile Contributor",
        scope                = "/subscriptions/d68448b0-9947-46d7-8771-baa331a3063a/resourceGroups/rg-platform-frontdoor-dev-uksouth-01/providers/Microsoft.Cdn/profiles/fd-platform-dev-pa2u36baumsfc"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create DNS configuration for external facing services
        role_definition_name = "DNS Zone Contributor",
        scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-dns-prd-uksouth-01"
        provider             = "sub-platform-connectivity"
      }
    ]
  },
  {
    name = "spn-geo-location-production"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth-01/providers/Microsoft.ContainerRegistry/registries/acrty7og2i6qpv3s"
      },
      { // Required to publish APIs and create subscriptions
        role_definition_name = "API Management Service Contributor",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-apim-prd-uksouth-01/providers/Microsoft.ApiManagement/service/apim-platform-prd-uksouth-ty7og2i6qpv3s"
      },
      { // Required to create web apps for the app service plan
        role_definition_name = "Website Contributor",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-plans-prd-uksouth-01/providers/Microsoft.Web/serverfarms/plan-platform-prd-uksouth-01"
      },
      { // Required to create Front Door configuration for external facing services
        role_definition_name = "CDN Profile Contributor",
        scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-frontdoor-prd-uksouth-01/providers/Microsoft.Cdn/profiles/fd-platform-prd-et7nxqc67pqjy"
        provider             = "sub-platform-connectivity"
      },
      { // Required to create DNS configuration for external facing services
        role_definition_name = "DNS Zone Contributor",
        scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-dns-prd-uksouth-01"
        provider             = "sub-platform-connectivity"
      }
    ]
  },
  {
    name = "spn-platform-connectivity-development"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth-01/providers/Microsoft.ContainerRegistry/registries/acrty7og2i6qpv3s"
      }
    ]
  },
  {
    name = "spn-platform-connectivity-production"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth-01/providers/Microsoft.ContainerRegistry/registries/acrty7og2i6qpv3s"
      }
    ]
  },
  {
    name = "spn-platform-monitoring-production"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth-01/providers/Microsoft.ContainerRegistry/registries/acrty7og2i6qpv3s"
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
        scope                = "/subscriptions/d68448b0-9947-46d7-8771-baa331a3063a/resourceGroups/rg-platform-apim-dev-uksouth-01/providers/Microsoft.ApiManagement/service/apim-platform-dev-uksouth-amjx44uuirhb6"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create web apps for the app service plan
        role_definition_name = "Website Contributor",
        scope                = "/subscriptions/d68448b0-9947-46d7-8771-baa331a3063a/resourceGroups/rg-platform-plans-dev-uksouth-01"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create Front Door configuration for external facing services
        role_definition_name = "CDN Profile Contributor",
        scope                = "/subscriptions/d68448b0-9947-46d7-8771-baa331a3063a/resourceGroups/rg-platform-frontdoor-dev-uksouth-01/providers/Microsoft.Cdn/profiles/fd-platform-dev-pa2u36baumsfc"
        provider             = "sub-visualstudio-enterprise"
      },
      { // Required to create DNS configuration for external facing services
        role_definition_name = "DNS Zone Contributor",
        scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-dns-prd-uksouth-01"
        provider             = "sub-platform-connectivity"
      }
    ],
    aad_memberships = [
      "sg-sql-platform-admins-dev-01" // Required to allow DACPAC deployments to the SQL database
    ]
  },
  {
    name = "spn-portal-repository-production"
    role_assignments = [
      { // Required to publish APIs and create subscriptions
        role_definition_name = "API Management Service Contributor",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-apim-prd-uksouth-01/providers/Microsoft.ApiManagement/service/apim-platform-prd-uksouth-ty7og2i6qpv3s"
      },
      { // Required to create web apps for the app service plan
        role_definition_name = "Website Contributor",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-plans-prd-uksouth-01/providers/Microsoft.Web/serverfarms/plan-platform-prd-uksouth-01"
      },
      { // Required to create Front Door configuration for external facing services
        role_definition_name = "CDN Profile Contributor",
        scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-frontdoor-prd-uksouth-01/providers/Microsoft.Cdn/profiles/fd-platform-prd-et7nxqc67pqjy"
        provider             = "sub-platform-connectivity"
      },
      { // Required to create DNS configuration for external facing services
        role_definition_name = "DNS Zone Contributor",
        scope                = "/subscriptions/db34f572-8b71-40d6-8f99-f29a27612144/resourceGroups/rg-platform-dns-prd-uksouth-01"
        provider             = "sub-platform-connectivity"
      }
    ],
    aad_memberships = [
      "sg-sql-platform-admins-prd-01" // Required to allow DACPAC deployments to the SQL database
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
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth-01/providers/Microsoft.ContainerRegistry/registries/acrty7og2i6qpv3s"
      }
    ]
  },
  {
    name = "spn-portal-servers-integration-production"
    role_assignments = [
      { // Required to pull Bicep modules from the ACR
        role_definition_name = "AcrPull",
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth-01/providers/Microsoft.ContainerRegistry/registries/acrty7og2i6qpv3s"
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
        scope                = "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-prd-uksouth-01/providers/Microsoft.ContainerRegistry/registries/acrty7og2i6qpv3s"
      }
    ]
  }
]
