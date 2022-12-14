require 'rails_helper'

describe "Index paper page", type: :feature do
    before(:each) do
        @example_paper = Paper.new(title: "Examples", venue: "latest newspapers", year: 1970)
        @example_paper.save
    end

    it "should link to paper edit pages" do
        visit papers_path
        expect(page).to have_link "Edit", href: edit_paper_path(@example_paper)
    end


    it "should have a link to delete an author" do
        visit papers_path
        expect(page).to have_link "Destroy"
    end
end