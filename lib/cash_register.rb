class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount

  def initialize(total = 0)
    @total = total
  end

  def total
    @total
  end

  def add_item(title, price)
    @title = title
    @price = price
    @total += price
  end
end
