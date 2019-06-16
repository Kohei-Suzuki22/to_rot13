# to_rot13

## Description
コマンドラインによる標準入力をROT13変換して出力します。`

### libディレクトリ

#### answer.rb
コマンドラインによる標準入力をROT13変換して出力します。
入力については、空の文字列またはASCIIによる印字不可能な文字列を入力すると例外が起きるように設計してあります 

#### validation.rb 
answer.rbで作成した、My_informationsが JSON Schema の仕様に当てはまっているかを判定します。
当てはまっている場合は、バリデーションクリアを出力。当てはまっていない場合は、バリデーション失敗を出力します。

### specディレクトリ(RSpecによるテスト)

#### answer_spec.rb 
lib/answer.rbのテストを実行します。
入出力に対してのテストと、#to_rot13(ROT13)変換に対するテストを記述しました。

#### validation.rb
lib/validation.rbのテストを実行します。
データがJSON Schemaの仕様を満たしている場合、満たしていない場合の動作に対するテストを記述しました。

