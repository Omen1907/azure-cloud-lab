resource "azurerm_policy_definition" "require_tags" {
  name         = "require-tags"
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = "Require Specific Tags on Resources"

  policy_rule = jsonencode({
    if = {
      anyOf = [
        {
          field  = "tags['env']"
          exists = false
        },
        {
          field  = "tags['owner']"
          exists = false
        },
        {
          field  = "tags['cost-center']"
          exists = false
        }
      ]
    }
    then = {
      effect = "audit"
    }
  })
}

resource "azurerm_policy_assignment" "require_tags_assignment" {
  name                 = "require-tags-assignment"
  policy_definition_id = azurerm_policy_definition.require_tags.id
  scope                = var.scope

  display_name = "Require tags on all resources"
}

resource "azurerm_policy_definition" "allowed_locations" {
  name         = "allowed-locations"
  policy_type  = "Custom"
  mode         = "Indexed"
  display_name = "Allowed Locations only"

  policy_rule = jsonencode({
    if = {
      field = "location"
      notIn = ["eastus", "westeurope"]
    }
    then = {
      effect = "deny"
    }
  })
}

resource "azurerm_policy_assignment" "location_assignment" {
  name                 = "location-assignment"
  policy_definition_id = azurerm_policy_definition.allowed_locations.id
  scope                = var.scope

  display_name = "Restrict locations"
}

# if nothing breaks -> effect = "deny"
