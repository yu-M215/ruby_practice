text = '私の誕生日は1977年7月17日です。'

# =~やmatchメソッドを使うとマッチした結果が組み込み変数に代入される
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得する
puts $~.class
puts $~

# マッチした部分全体を取得する
puts $&

# 1番目～3番目のキャプチャを取得する
puts $1
puts $2
puts $3

# 最後のキャプチャ文字列を取得する
puts $+