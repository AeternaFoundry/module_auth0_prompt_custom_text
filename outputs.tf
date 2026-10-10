output "prompt_custom_texts_id" {
  description = "Map of id values across all prompt_custom_texts, keyed the same as var.prompt_custom_texts except keys with no id are omitted"
  value       = { for k, v in auth0_prompt_custom_text.prompt_custom_texts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "prompt_custom_texts_body" {
  description = "Map of body values across all prompt_custom_texts, keyed the same as var.prompt_custom_texts except keys with no body are omitted"
  value       = { for k, v in auth0_prompt_custom_text.prompt_custom_texts : k => v.body if v.body != null && length(v.body) > 0 }
}
output "prompt_custom_texts_language" {
  description = "Map of language values across all prompt_custom_texts, keyed the same as var.prompt_custom_texts except keys with no language are omitted"
  value       = { for k, v in auth0_prompt_custom_text.prompt_custom_texts : k => v.language if v.language != null && length(v.language) > 0 }
}
output "prompt_custom_texts_prompt" {
  description = "Map of prompt values across all prompt_custom_texts, keyed the same as var.prompt_custom_texts except keys with no prompt are omitted"
  value       = { for k, v in auth0_prompt_custom_text.prompt_custom_texts : k => v.prompt if v.prompt != null && length(v.prompt) > 0 }
}

