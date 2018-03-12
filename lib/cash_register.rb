
class CashRegister
  attr_accessor :discount, :last_transaction, :total



  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0
  end

  def add_item(name, cost, number = 1)
    self.total += (cost*number)
    @last_transaction = cost
    number.times{@items.push(name)}
  end



  def apply_discount
    if discount != 0
      #fractional_discount = @discount/100.00
      @total *= @discount
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  # the cash register was initialized with an employee discount:
    # applies the discount to the total price
    # returns success message with updated total
    # reduces the total

  # the cash register was *NOT* initialized with an employee discount:
    # returns a string error message that there is no discount to appply
  end

  def items
    return @items
  # (self).items!?
  # returns an array containing all items that have been added
  end

  def void_last_transaction
    self.total -= @last_transaction
  # subtracts the last transaction from the total
  end

end
