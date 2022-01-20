require 'minitest/autorun'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze
    # とりあえずモジュールが参照できることを確認する
    assert DeepFreezable
  end
end