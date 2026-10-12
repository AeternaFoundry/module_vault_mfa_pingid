variable "mfa_pingids" {
  description = <<EOT
Map of mfa_pingids, attributes below
Required:
    - mount_accessor
    - name
    - settings_file_base64
Optional:
    - namespace
    - username_format
EOT

  type = map(object({
    mount_accessor       = string
    name                 = string
    settings_file_base64 = string
    namespace            = optional(string)
    username_format      = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

