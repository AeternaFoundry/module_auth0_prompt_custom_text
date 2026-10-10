variable "prompt_custom_texts" {
  description = <<EOT
Map of prompt_custom_texts, attributes below
Required:
    - body
    - language
    - prompt
EOT

  type = map(object({
    body     = string
    language = string
    prompt   = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.prompt_custom_texts : (
        can(jsondecode(v.body))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

