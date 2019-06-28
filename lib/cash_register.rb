class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    if quantity > 1
      q = 0
      while q < quantity
        @items << title
        q += 1
      end
    else
      @items << title
    end
    @total += price * quantity
    @last_transaction = @total
    @total
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
