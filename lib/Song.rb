require_relative 'DigitalItem.rb'
class Song < DigitalItem

  attr_accessor :artist, :run_time, :download_size

  def initialize name, price, download_size = 0
    super(name,price,download_size)
    @artist = ""
    @run_time = ""
  end

end