class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
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
