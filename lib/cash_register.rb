class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total= total
    @total =0
    @discount = discount
  end

  def add_item(title, price, quantity=nil)
    !quantity ? @total +=price : @total += (price*quantity)
  end

  def apply_discount
    if discount > 0
      discount_rate = (self.discount / 100)
      @total = self.@total * discount_rate
    end
  end


end
