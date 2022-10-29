require 'rails_helper'

RSpec.describe Paper, type: :model do
  before(:each) do
    @paper = Paper.new(title: "Solvable and unsolvable problems", venue: "Penguin Books", year: 1954)
  end

  it "should be invalid with nil title" do
    @paper.title = nil
    expect(@paper).to_not be_valid
  end

  it "should be invalid with nil venue" do
    @paper.venue = nil
    expect(@paper).to_not be_valid
  end

  it "should be invalid with nil year" do
    @paper.year = nil
    expect(@paper).to_not be_valid
  end

  it "should be invalid with non-numeric year" do
    @paper.year = "today"
    expect(@paper).to_not be_valid
  end
end
