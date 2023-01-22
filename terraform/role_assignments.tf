locals {
  acrpull_role_assignments = flatten([
    for principal in var.service_principals : [
      for scope in principal.acrpull_assignments : {
        key            = format("%s-%s", principal.name, scope)
        scope          = scope
        principal_name = principal.name
      }
    ]
  ])

  owner_role_assignments = flatten([
    for principal in var.service_principals : [
      for scope in principal.owner_assignments : {
        key            = format("%s-%s", principal.name, scope)
        scope          = scope
        principal_name = principal.name
      }
    ]
  ])

  contributor_role_assignments = flatten([
    for principal in var.service_principals : [
      for scope in principal.contributor_assignments : {
        key            = format("%s-%s", principal.name, scope)
        scope          = scope
        principal_name = principal.name
      }
    ]
  ])
}

resource "azurerm_role_assignment" "acrpull" {
  for_each = { for each in local.acrpull_role_assignments : each.key => each }

  scope                = each.value.scope
  role_definition_name = "AcrPull"
  principal_id         = data.azuread_service_principal.workload[each.value.principal_name].object_id
}
