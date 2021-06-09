
class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize (discount = 0) #Optionally 'takes a discount on init'
        @total = 0
        @discount = discount #setter for discount
        @items = [] #sets up blank array
    end

    def add_item(title, price, quantity=1) #"Optional means default value"
        self.total += price * quantity
        quantity.times do   #how to fill blank array with items!!
            items << title
        end
        self.last_transaction = price * quantity
    end

    def apply_discount
        if discount != 0
        self.total = (total * ((100.0 - discount.to_f)/100)).to_i
        return "After the discount, the total comes to $#{total}."
        else
        return "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end

end