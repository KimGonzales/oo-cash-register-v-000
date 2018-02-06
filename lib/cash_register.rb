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
      @discount = discount.to_f/100.to_f
      @total = self.total - (@discount*self.total)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


end
