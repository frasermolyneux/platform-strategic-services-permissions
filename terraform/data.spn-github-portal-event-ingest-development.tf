data "azuread_application" "spn-github-portal-event-ingest-development" {
  display_name = "spn-github-portal-event-ingest-development"
}

data "azuread_service_principal" "spn-github-portal-event-ingest-development_service-principal" {
  application_id = data.azuread_application.spn-github-portal-event-ingest-development.application_id
}
