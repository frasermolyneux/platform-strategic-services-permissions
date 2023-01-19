data "azuread_application" "spn-github-portal-event-ingest-production" {
  display_name = "spn-github-portal-event-ingest-production"
}

data "azuread_service_principal" "spn-github-portal-event-ingest-production_service-principal" {
  application_id = data.azuread_application.spn-github-portal-event-ingest-production.application_id
}
