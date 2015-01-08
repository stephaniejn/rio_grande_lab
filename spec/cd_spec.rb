require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initlize item
    @cd = Cd.new("Harry Potter Soundtrack", 15.99, 1)
  end

  describe "Inilization" do
  #check inilization
  it "is assigned a name" do
    expect(@cd.name).to eq "Harry Potter Soundtrack"
  end
  it "is assigned a price" do
    expect(@cd.price).to eq(15.99)
  end
  #check that it is an extended from Item
  it "is extended from Item" do
    expect(@cd.class.superclass).to eq(Item)
  end
  #check that it is an instance of Cd
  it "is an instance of the Cd class" do
    expect(@cd).to be_instance_of(Cd)
  end
end
  #check getters and setters
  describe "Accessors" do

   it "should be able to get and set name" do
    @cd.name="HP 2 Soundtrack"
    expect(@cd.name).to eq("HP 2 Soundtrack")
  end  

  it "should be able to get and set price" do
    @cd.price=21.99
    expect(@cd.price).to eq(21.99)
  end  

  it "should be able to get and set tracks" do
    expect(@cd.tracks).to eq("")
    @cd.tracks=12
    expect(@cd.tracks).to eq 12
  end  

  it "should be able to get and set weight" do
    expect(@cd.weight).to eq(1)
    @cd.weight=1
    expect(@cd.weight).to eq 1
  end 


  it "should be able to get and set artist" do
    expect(@cd.artist).to eq("")
    @cd.artist="Many People"
    expect(@cd.artist).to eq "Many People"
  end  

  it "should be able to get and set run_time" do
    expect(@cd.run_time).to eq("")
    @cd.run_time=200
    expect(@cd.run_time).to eq(200)
  end  

end

end
