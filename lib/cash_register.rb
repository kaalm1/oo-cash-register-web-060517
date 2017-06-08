class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    @total += price*quantity
    @price = price
    quantity.times {|x| self.items << title}
  end

  def apply_discount
    if self.discount != nil
      self.total *= (1-self.discount/100.to_f)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= self.price
  end
end
