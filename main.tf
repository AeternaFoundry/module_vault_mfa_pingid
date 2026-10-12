resource "vault_mfa_pingid" "mfa_pingids" {
  for_each = var.mfa_pingids

  mount_accessor       = each.value.mount_accessor
  name                 = each.value.name
  settings_file_base64 = each.value.settings_file_base64
  namespace            = each.value.namespace
  username_format      = each.value.username_format
}

