class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total= total
    @total =0
    @discount = discount
    @items =[]
  end

  def add_item(t, pr, q=nil)
    if !q
      @items << t
      @total += pr
    else
      q.to_i.times {@items << title}
      @total +=(pr * q)
    end

    #!quantity ? @total +=price : @total += (price*quantity)
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

  def items
    @items
  end


end
