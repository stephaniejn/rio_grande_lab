class Item
    attr_reader :quantity
    attr_accessor :name, :price, :description, :weight

    @@ship_price_per_oz=1.2

    def initialize name, price, weight = 0
        @name = name
        @price = price
        @weight = weight
        @quantity = 0
        @description = ""
    end

    def sell amount
        if @quantity >= amount
            @quantity -= amount
            true
        else
            false
        end
    end

    def stock amount
        @quantity += amount
        true
    end

    def return amount
        @quantity += amount
        true
    end

    def ship_price_per_oz
        @@ship_price_per_oz
    end

    def ship_price 
        if weight >= 0
            weight * @@ship_price_per_oz
        else 
            false
        end
    end

end