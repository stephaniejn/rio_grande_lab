require_relative 'Item.rb'
class DigitalItem < Item

  attr_reader :quantity, :weight
  attr_accessor :download_size

  def initialize name, price, download_size = 0
    super(name,price,weight)
    @download_size = download_size
    @weight = -1
    @quantity = 1

  end

  def return amount
    @quantity = 1
    true
  end

end