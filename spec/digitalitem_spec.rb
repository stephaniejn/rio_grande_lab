require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    #initlize item
    @digitalitem = DigitalItem.new("New Digital Item", 10.99, 11)
  end

  describe "Inilization" do
  #check inilization
  it "is assigned a name" do
    expect(@digitalitem.name).to eq "New Digital Item"
  end
  it "is assigned a price" do
    expect(@digitalitem.price).to eq(10.99)
  end
  #check that it is an extended from Item
  it "is extended from Item" do
    expect(@digitalitem.class.superclass).to eq(Item)
  end
  #check that it is an instance of Digital Item
  it "is an instance of the Digital Item class" do
    expect(@digitalitem).to be_instance_of(DigitalItem)
  end
end

describe "Accessors" do
  it "should be able to get quantity" do
    expect(@digitalitem.quantity).to eq(1)
  end
  it "should be able to get and set name" do
    @digitalitem.name="Digital Item New"
    expect(@digitalitem.name).to eq("Digital Item New")
  end  
  it "should be able to get and set download_size" do
    expect(@digitalitem.download_size).to eq(11)
    @digitalitem.download_size=10
    expect(@digitalitem.download_size).to eq 10
  end 
  it "should be able to get weight" do
    expect(@digitalitem.weight).to eq(-1)
  end 
  it "should be able to get and set price" do
    @digitalitem.price=24.99
    expect(@digitalitem.price).to eq(24.99)
  end  
end

describe "Methods" do
  it "should be able to return" do
    result = @digitalitem.return 5
    expect(result).to eq(true)
    expect(@digitalitem.quantity).to eq(1)
  end
  it "should be able to calculate ship price" do
   expect(@digitalitem.ship_price).to eq(false)
 end
end
end