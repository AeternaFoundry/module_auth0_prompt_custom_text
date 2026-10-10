resource "auth0_prompt_custom_text" "prompt_custom_texts" {
  for_each = var.prompt_custom_texts

  body     = each.value.body
  language = each.value.language
  prompt   = each.value.prompt
}

