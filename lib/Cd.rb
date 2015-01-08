require_relative 'Item.rb'
class Cd < Item

  attr_accessor :tracks, :artist, :run_time, :weight

  def initialize name, price, weight = 0
    super(name,price,weight)
    @tracks = ""
    @artist = ""
    @run_time = ""
  end

end