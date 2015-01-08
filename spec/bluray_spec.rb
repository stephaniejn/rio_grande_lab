require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initlize item
    @bluray = Bluray.new("Harry Potter and the Deathly Hallows", 25.99)
  end

  describe "Inilization" do
  #check inilization
  it "is assigned a name" do
    expect(@bluray.name).to eq "Harry Potter and the Deathly Hallows"
  end
  it "is assigned a price" do
    expect(@bluray.price).to eq(25.99)
  end
  #check that it is an extended from Item
  it "is extended from Item" do
    expect(@bluray.class.superclass).to eq(Item)
  end
  #check that it is an instance of Cd
  it "is an instance of the Bluray class" do
    expect(@bluray).to be_instance_of(Bluray)
  end
end
  #check getters and setters
  describe "Accessors" do

   it "should be able to get and set name" do
    @bluray.name="Harry Potter and the Prisoner of Azkaban"
    expect(@bluray.name).to eq("Harry Potter and the Prisoner of Azkaban")
  end  

  it "should be able to get and set price" do
    @bluray.price=22.99
    expect(@bluray.price).to eq(22.99)
  end  

  it "should be able to get and set run_time" do
    expect(@bluray.run_time).to eq("")
    @bluray.run_time=120
    expect(@bluray.run_time).to eq 120
  end  

  it "should be able to get and set weight" do
    expect(@bluray.weight).to eq(0)
    @bluray.weight=1
    expect(@bluray.weight).to eq 1
  end 

  it "should be able to get and set director" do
    expect(@bluray.director).to eq("")
    @bluray.director=" Alfonso Cuarón"
    expect(@bluray.director).to eq " Alfonso Cuarón"
  end  

  it "should be able to get and set producer" do
    expect(@bluray.producer).to eq("")
    @bluray.producer="David Heyman"
    expect(@bluray.producer).to eq("David Heyman")
  end  

end

end
