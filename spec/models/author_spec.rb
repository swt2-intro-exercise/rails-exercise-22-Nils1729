require 'rails_helper'

RSpec.describe Author, type: :model do
  before(:each) do
    @first_name = 'Alan'
    @last_name = 'Turing'
    @homepage = 'http://wikipedia.org/Alan_Turing'
    @author = Author.new(first_name: @first_name, last_name: @last_name, homepage: @homepage)
  end

  it "should have first_name, last_name and homepage" do
    expect(@author.first_name).to eq(@first_name)
    expect(@author.last_name).to eq(@last_name)
    expect(@author.homepage).to eq(@homepage)
  end

  it "should have a method `name` which returns the full name of an author" do
    expect(@author.name).to eq('Alan Turing')
  end


  it "should not save an empty last_name" do
    @author.last_name = ""
    @author.save

    expect(@author).to_not be_valid
  end

  it "should have an empty list of papers" do
    expect(@author.papers).to be_empty 
  end
end
