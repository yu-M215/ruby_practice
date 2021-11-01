#メソッドのキーワード引数使用例

def buy_burger(menu, drink: true, poteto: true)
  #ハンバーガー購入
  if drink
    #ドリンク購入
  end
  if poteto
    #ポテト購入
  end
end

#チーズバーガーとドリンクとポテトを購入する
buy_burger('cheese', drink:true, poteto:true)

#drinkもpotetoもデフォルト値のtrueを使うので指定しない(上と意味は同じ)
buy_burger('cheese')

#フィッシュバーガーとドリンクを購入する
buy_burger('fish', drink:true, poteto:false)

#drinkはデフォルト値のtrueを使うので指定しない(上と意味は同じ)
buy_burger('fish', poteto:false)