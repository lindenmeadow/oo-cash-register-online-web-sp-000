class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount

  @@ITEMS = []

  def initialize(total = 0, discount)
    @total = total
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price)
    @title = title
    @price = price
    self.total += price
    @@ITEMS << title
  end

  def apply_discount
    discount = price * discount
    total -= discount
  end

  def items
    @@ITEMS
  end

  def void_last_transaction

  end
end
