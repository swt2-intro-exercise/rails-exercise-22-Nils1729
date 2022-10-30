require 'rails_helper'

describe "Show paper page", type: :feature do
    before(:each) do
        @example_paper = FactoryBot.create :paper
    end

    it "should show the author's full names" do
        visit papers_path
        expect(page).to have_text "Alan Turing"
    end
end