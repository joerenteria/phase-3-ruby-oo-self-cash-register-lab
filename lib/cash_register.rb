class CashRegister
    attr_accessor :discount, :total, :last

    def initialize(dis = nil)
        @discount = dis
        @total = 0
        @items = []
        @last = 0
    end

    def add_item(title , price , quantity = 1)
        @total = total=(@total+price*quantity)
        quantity.times do
        @items << title
        @last = price * quantity
        end
    end

    def void_last_transaction
        @total=(@total.to_f - @last.to_f)
        if @items.none?
            @total=(0.0)
        end
    end

    def apply_discount
        p = (100 - discount.to_f) * 0.01
        if @discount != nil
            @total = total=(@total * p)
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items()
        return @items
    end
end