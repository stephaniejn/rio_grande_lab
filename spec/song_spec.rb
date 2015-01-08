require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    #initlize item
    @song = Song.new("Another Sunny Day", 0.99, 15)
  end

  describe "Inilization" do
  #check inilization
  it "is assigned a name" do
    expect(@song.name).to eq "Another Sunny Day"
  end
  it "is assigned a price" do
    expect(@song.price).to eq(0.99)
  end
  #check that it is an extended from Item
  it "is extended from DigitalItem" do
    expect(@song.class.superclass).to eq(DigitalItem)
  end
  #check that it is an instance of Cd
  it "is an instance of the Song class" do
    expect(@song).to be_instance_of(Song)
  end
end
  #check getters and setters
  describe "Accessors" do

   it "should be able to get and set name" do
    @song.name="Oh, Inverted World"
    expect(@song.name).to eq("Oh, Inverted World")
  end  

  it "should be able to get and set price" do
    @song.price=1.59
    expect(@song.price).to eq(1.59)
  end  

  it "should be able to get and set download_size" do
    expect(@song.download_size).to eq(15)
    @song.download_size=11
    expect(@song.download_size).to eq 11
  end 

  it "should be able to get a quantity" do
    expect(@song.quantity).to eq(1)
  end 

  it "should be able to get weight" do
    expect(@song.weight).to eq(-1)
  end 

  it "should be able to get and set artist" do
    expect(@song.artist).to eq("")
    @song.artist="The Shins"
    expect(@song.artist).to eq "The Shins"
  end  

  it "should be able to get and set run_time" do
    expect(@song.run_time).to eq("")
    @song.run_time=2
    expect(@song.run_time).to eq(2)
  end  

end

end
