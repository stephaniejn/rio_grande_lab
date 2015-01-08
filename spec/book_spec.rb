require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    #initlize item
    @book = Book.new("Harry Potter", 20.99, 10)
  end

  describe "Inilization" do
  #check inilization
  it "is assigned a name" do
    expect(@book.name).to eq "Harry Potter"
  end
  it "is assigned a price" do
    expect(@book.price).to eq(20.99)
  end
  #check that it is an extended from Item
  it "is extended from Item" do
    expect(@book.class.superclass).to eq(Item)
  end

  #check that it is an instance of Book
  it "is an instance of the Book class" do
    expect(@book).to be_instance_of(Book)
  end
end

  #check getters and setters
  describe "Accessors" do

    it "should be able to get and set name" do
      @book.name="Lord of the Rings"
      expect(@book.name).to eq("Lord of the Rings")
    end  

    it "should be able to get and set price" do
      @book.price=22.99
      expect(@book.price).to eq(22.99)
    end  

    it "should be able to get and set weight" do
      expect(@book.weight).to eq(10)
      @book.weight=1
      expect(@book.weight).to eq 1
    end 

    it "should be able to get and set author" do
      expect(@book.author).to eq("")
      @book.author= "JR Tolkein"
      expect(@book.author).to eq "JR Tolkein"
    end

    it "should be able to get and set page" do
      expect(@book.page).to eq("")
      @book.page=500
      expect(@book.page).to eq(500)
    end  

  end
end