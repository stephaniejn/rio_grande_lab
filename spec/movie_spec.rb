require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    #initlize item
    @movie = Movie.new("Singing in the Rain", 5.99, 10)
  end

  describe "Inilization" do
  #check inilization
  it "is assigned a name" do
    expect(@movie.name).to eq "Singing in the Rain"
  end
  it "is assigned a price" do
    expect(@movie.price).to eq(5.99)
  end
  #check that it is an extended from Item
  it "is extended from Item" do
    expect(@movie.class.superclass).to eq(DigitalItem)
  end
  #check that it is an instance of Cd
  it "is an instance of the Movie class" do
    expect(@movie).to be_instance_of(Movie)
  end
end
  #check getters and setters
  describe "Accessors" do

   it "should be able to get and set name" do
    @movie.name="An Education"
    expect(@movie.name).to eq("An Education")
  end  

  it "should be able to get and set price" do
    @movie.price=10.99
    expect(@movie.price).to eq(10.99)
  end  
  it "should be able to get and set download_size" do
    expect(@movie.download_size).to eq(10)
    @movie.download_size=10
    expect(@movie.download_size).to eq 10
  end 
  it "is assigned a quantity" do
    expect(@movie.quantity).to eq(1)
  end  

  it "should be able to get weight" do
    expect(@movie.weight).to eq(-1)
  end 


  it "should be able to get and set run_time" do
    expect(@movie.run_time).to eq("")
    @movie.run_time=100
    expect(@movie.run_time).to eq 100
  end  

  it "should be able to get and set director" do
    expect(@movie.director).to eq("")
    @movie.director= "Lone Scherfig"
    expect(@movie.director).to eq "Lone Scherfig"
  end  

  it "should be able to get and set producer" do
    expect(@movie.producer).to eq("")
    @movie.producer="Amanda Posey"
    expect(@movie.producer).to eq("Amanda Posey")
  end  

end

end
