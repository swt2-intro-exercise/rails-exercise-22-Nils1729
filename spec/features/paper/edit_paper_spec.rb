require 'rails_helper'

describe "Edit paper page", type: :feature do
    before(:each) do
        @example_paper = FactoryBot.create :paper
    end

    it "should have a multiselect input" do
        visit edit_paper_path(@example_paper)
        expect(page).to have_css "select[multiple]", count: 1 
    end
end