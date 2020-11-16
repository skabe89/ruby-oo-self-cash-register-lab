class CashRegister
    attr_accessor :discount, :total, :transcations

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @transactions = []
    end

    def add_item(title, price, quantity = 1)
        @transactions << price * quantity
        @total = @total + (price * quantity)
        quantity.times do @items << title
        end
    end

    def apply_discount
        if discount != 0
            @total = @total - (@discount * 10)
            "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def last_transcation
        @last_transcation = transactions[-1]
    end

    def void_last_transaction
        @total = @total - @transactions[-1]
    end

end
