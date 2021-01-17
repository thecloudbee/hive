PUT tcb-2021-01-18-special-chars
{
  "settings": {
    "analysis": {
      "analyzer": {
        "tcb_special_char_analyser": {
          "type": "custom",
          "tokenizer": "tcb_special_char_tokenizer",
          "filter": [
            "lowercase",
            "stop"
          ]
        }
      },
      "tokenizer": {
        "tcb_special_char_tokenizer": {
          "type": "char_group",
          "tokenize_on_chars": [
            "whitespace",
            "punctuation"
          ]
        }
      }
    }
  },
  "mappings": {
    "properties": {
      "message": {
        "type": "text",
        "analyzer": "tcb_special_char_analyser"
      }
    }
  }
}