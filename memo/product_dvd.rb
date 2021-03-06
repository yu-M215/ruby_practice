class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

product = Product.new('A great movie', 1000)

puts product.name
puts product.price

class DVD < Product
  # nameとpriceはスーパークラスでattr_readerが設定されているので定義不要
  attr_reader :running_time

  # def initialize(name, price, running_time)
  #   # スーパークラスのinitializeメソッドを呼び出す
  #   super(name, price)
  #   # DVDクラス独自の属性
  #   @running_time = running_time
  # end

  # def initialize(name, price)
  #   # 引数をすべてスーパークラスのメソッドに渡す。super(name, price)と書いたのと同じ
  #   # サブクラスで特別な処理をしないなら、同名メソッドを定義する必要はない
  #   # (スーパークラスに処理を任せる)
  #   super
  #   # サブクラスで必要な初期化処理を書く
  # end

  # def initialize(name, price)
  #   # super()だと引数なしでスーパークラスのメソッドを呼び出す
  #   # (ただし数が合わないのでこのコードはエラーになる)
  #   super()
  # end
end

# dvd = DVD.new('A great movie', 1000, 120)

# initializeを記述しない状態でDVDクラスをnewすると、自動的にスーパークラスのinitializeメソッドが呼び出される
dvd = DVD.new('A great movie', 1000)

puts dvd.name
puts dvd.price
# puts dvd.running_time