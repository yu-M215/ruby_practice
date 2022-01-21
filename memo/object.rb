class User
  p "クラス構文の直下でのself"
  p self
  p "クラス構文の直下でのselfのクラス"
  p self.class
end

p "Userクラス自身のクラスはClassクラス"
p "User.class #= #{User.class}"

p "ClassクラスのスーパークラスはModuleクラス"
p "Class.superclass #= #{Class.superclass}"

module Loggable
  p "モジュール構文の直下でのself"
  p self
  p "モジュール構文の直下でのselfのクラス"
  p self.class
end

p "Loggableモジュール自身のクラスはModuleクラス"
p "Loggable.class #= #{Loggable.class}"

p "ModuleクラスのスーパークラスはObjectクラスはクラス"
p "Module.superclass #= #{Module.superclass}"