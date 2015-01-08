require_relative 'DigitalItem.rb'
class EBook < DigitalItem

  attr_accessor :author, :page, :download_size, :weight

  def initialize name, price, download_size = 0
    super(name,price,weight)
    @download_size = download_size
    @author = ""
    @page = ""
  end
end