require 'minitest/autorun'
require 'minitest/reporters'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    register = CashRegister.new(1000)
    transaction = Transaction.new(10)
    transaction.amount_paid = 10

    assert_equal(1010, register.accept_money(transaction))
  end

  def test_change
    register = CashRegister.new(1000)
    transaction = Transaction.new(15)
    transaction.amount_paid = 20
    assert_equal(5, register.change(transaction))
  end

  def test_give_receipt
    item_cost = 15
    register = CashRegister.new(1000)
    transaction = Transaction.new(item_cost)
    assert_output("You've paid $#{item_cost}.\n") { register.give_receipt(transaction) }
  end
end