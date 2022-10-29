require 'rails_helper'

describe "Show author page", type: :feature do
    before(:each) do
        @alan = FactoryBot.create :author
    end

    it "should exist at 'author_path' and render withour error" do
        visit author_path(@alan)
    end

    it "should display the author's details" do
        visit author_path(@alan)
        expect(page).to have_text "Alan Turing"
        expect(page).to have_text "http://wikipedia.de/Alan_Turing"
    end
end