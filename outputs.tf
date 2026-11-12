output "prompt_custom_texts_id" {
  description = "Map of id values across all prompt_custom_texts, keyed the same as var.prompt_custom_texts"
  value       = { for k, v in auth0_prompt_custom_text.prompt_custom_texts : k => v.id }
}
output "prompt_custom_texts_body" {
  description = "Map of body values across all prompt_custom_texts, keyed the same as var.prompt_custom_texts"
  value       = { for k, v in auth0_prompt_custom_text.prompt_custom_texts : k => v.body }
}
output "prompt_custom_texts_language" {
  description = "Map of language values across all prompt_custom_texts, keyed the same as var.prompt_custom_texts"
  value       = { for k, v in auth0_prompt_custom_text.prompt_custom_texts : k => v.language }
}
output "prompt_custom_texts_prompt" {
  description = "Map of prompt values across all prompt_custom_texts, keyed the same as var.prompt_custom_texts"
  value       = { for k, v in auth0_prompt_custom_text.prompt_custom_texts : k => v.prompt }
}

