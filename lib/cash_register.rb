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
      @total= @total - (@total/ (@discount/100))
    else
      @total = @total
    end
  end


end
