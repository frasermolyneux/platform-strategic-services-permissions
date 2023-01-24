locals {
  principal_role_assignments = flatten([
    for principal in var.service_principals : [
      for role_assignment in principal.role_assignments : {
        key                  = format("%s-%s-%s", principal.name, role_assignment.scope, role_assignment.role_definition_name)
        scope                = role_assignment.scope
        principal_name       = principal.name
        role_definition_name = role_assignment.role_definition_name
      }
    ]
  ])
}

resource "azurerm_role_assignment" "principal" {
  for_each = { for each in local.principal_role_assignments : each.key => each }

  scope                = each.value.scope
  role_definition_name = each.value.role_definition_name
  principal_id         = data.azuread_service_principal.workload[each.value.principal_name].object_id
}
