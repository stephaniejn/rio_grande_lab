require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    #initlize item
    @ebook = EBook.new("Harry Potter and the Sorcerer's Stone", 18.99, 12)
  end

  describe "Inilization" do
  #check inilization
  it "is assigned a name" do
    expect(@ebook.name).to eq "Harry Potter and the Sorcerer's Stone"
  end
  it "is assigned a price" do
    expect(@ebook.price).to eq(18.99)
  end
  #check that it is an extended from Item
  it "is extended from DigitalItem" do
    expect(@ebook.class.superclass).to eq(DigitalItem)
  end

  #check that it is an instance of Book
  it "is an instance of the EBook class" do
    expect(@ebook).to be_instance_of(EBook)
  end
end

  # #check getters and setters
  describe "Accessors" do

    it "should be able to get and set name" do
      @ebook.name="Lord of the Flies"
      expect(@ebook.name).to eq("Lord of the Flies")
    end  

    it "should be able to get and set price" do
      @ebook.price=19.99
      expect(@ebook.price).to eq(19.99)
    end
    it "is assigned a quantity" do
      expect(@ebook.quantity).to eq(1)
    end  
    it "should be able to get and set download_size" do
      expect(@ebook.download_size).to eq(12)
      @ebook.download_size=10
      expect(@ebook.download_size).to eq 10
    end 
    it "should be able to get weight" do
      expect(@ebook.weight).to eq(-1)
    end 

    it "should be able to get and set author" do
      expect(@ebook.author).to eq("")
      @ebook.author= "William Golding"
      expect(@ebook.author).to eq "William Golding"
    end

    it "should be able to get and set page" do
      expect(@ebook.page).to eq("")
      @ebook.page=250
      expect(@ebook.page).to eq(250)
    end  

  end
end