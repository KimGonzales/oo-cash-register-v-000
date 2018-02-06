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
      @discount = discount/100.0
      @total = total - (@discount*total)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


end
