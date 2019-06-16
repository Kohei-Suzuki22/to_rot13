#answer.rbの出力がJSON Schemaの使用を満たすかの確認ファイル


require "json-schema"
require_relative "answer"


Schema = {
  "type": "object",
  "required": [
  "github",
  "twitter",
  "answer",
  "homepage"
  ],
  "properties": {
    "github": {
      "type": "string",
      "title": "GitHubアカウント",
      "examples": [
        "motemen"
      ]
    },
    "twitter": {
      "type": "string",
      "title": "Twitterアカウント",
      "examples": [
        "motemen"
      ]
    },
    "answer": {
      "type": "string",
      "title": "問題の解答"
    },
    "homepage": {
      "type": "string",
      "title": "ホームページ",
      "description": "ホームページ、ポートフォリオなどのURL",
      "examples": [
        "https://motemen.github.io/"
      ]
    }
  }
}


#My_informationがSchemaの仕様を満たしていれば、「Schemaバリデーションクリア」と出力

if JSON::Validator.validate(Schema, My_informations)
  puts "Schemaバリデーションクリア"
else 
  puts "Schemaバリデーション失敗"
end