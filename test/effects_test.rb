require 'minitest/autorun'
require './lib/effects'

class EffextsTest < Minitest::Test
  def test_reverse
    # とりあえずモジュールが参照できることを確認する
    assert Effexts
  end
end