class CashRegister

  attr_accessor :total, :discount, :price

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
      @total=  price - (price * (@discount/100))
    else
      @total = price
    end
  end


end
