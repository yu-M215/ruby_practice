require 'minitest/autorun'
require './lib/deep_freezable.rb'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze
    # とりあえずモジュールが参照できることを確認する
    assert DeepFreezable
  end
end