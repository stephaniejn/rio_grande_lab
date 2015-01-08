require_relative 'Item.rb'
class Book < Item

  attr_accessor :author, :page, :weight

  def initialize name, price, weight = 0
    super(name,price,weight)
    @author = ""
    @page = ""
  end
end