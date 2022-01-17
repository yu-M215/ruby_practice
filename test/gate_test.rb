require 'minitest/autorun'
require './lib/gate'
require './lib/ticket'

class GateTest < Minitest::Test
  def test_gate
    # 梅田から十三まで150円の切符で出場できるか
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    assert juso.exit(ticket)
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough
    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)

    ticket = Ticket.new(150)
    umeda.enter(ticket)
    refute mikuni.exit(ticket)
  end
end