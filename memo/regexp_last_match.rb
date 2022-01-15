text = '私の誕生日は1977年7月17日です。'

# =~演算子などを使うと、マッチした結果をRegexp.last_matchで取得できる
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDatオブジェクトを取得する
puts Regexp.last_match
puts Regexp.last_match.class

# マッチした部分全体を取得する
puts Regexp.last_match(0)

# 1番目～3番目のキャプチャを取得する
puts Regexp.last_match(1)
puts Regexp.last_match(2)
puts Regexp.last_match(3)

# 最後のキャプチャ文字列を取得する
puts Regexp.last_match(-1)
