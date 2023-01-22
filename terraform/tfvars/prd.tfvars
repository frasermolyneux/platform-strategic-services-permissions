environment = "prd"
location    = "uksouth"

tags = {
  Environment = "prd",
  Workload    = "platform-strategic-services-permissions",
  DeployedBy  = "GitHub-Terraform",
  Git         = "https://github.com/frasermolyneux/platform-strategic-services-permissions"
}

service_principals = [
  {
    name = "spn-azure-landing-zones-production"
  },
  {
    name = "spn-demo-manager-production"
    acrpull_assignments = [
      "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
    ]
  },
  {
    name = "spn-geo-location-development"
    acrpull_assignments = [
      "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
    ]
  },
  {
    name = "spn-geo-location-production"
    acrpull_assignments = [
      "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
    ]
  },
  {
    name = "spn-platform-connectivity-development"
    acrpull_assignments = [
      "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
    ]
  },
  {
    name = "spn-platform-connectivity-production"
    acrpull_assignments = [
      "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
    ]
  },
  {
    name = "spn-platform-monitoring-production"
    acrpull_assignments = [
      "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
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
  },
  {
    name = "spn-portal-repository-func-development"
  },
  {
    name = "spn-portal-repository-func-production"
  },
  {
    name = "spn-portal-repository-production"
  },
  {
    name = "spn-portal-servers-integration-development"
    acrpull_assignments = [
      "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
    ]
  },
  {
    name = "spn-portal-servers-integration-production"
    acrpull_assignments = [
      "/subscriptions/903b6685-c12a-4703-ac54-7ec1ff15ca43/resourceGroups/rg-platform-acr-4xhbmv4lmxxbs-prd-uksouth/providers/Microsoft.ContainerRegistry/registries/acr4xhbmv4lmxxbs"
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
  }
]
