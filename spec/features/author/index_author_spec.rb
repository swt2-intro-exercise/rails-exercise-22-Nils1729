require 'rails_helper'

describe "Index author page", type: :feature do
    before(:each) do
        @alan = FactoryBot.create :author
    end

    it "should exist at 'index_author_path' and render withour error" do
        visit authors_path
    end

    it "should display the author's details" do
        visit authors_path
        expect(page).to have_text "Alan Turing"
        expect(page).to have_text "http://wikipedia.de/Alan_Turing"
    end

    it "should link to authors detail pages" do
        visit authors_path
        expect(page).to have_link "Show", href: author_path(@alan)
    end

    it "should link to 'new_author_path'" do
        visit authors_path
        expect(page).to have_link "New", href: new_author_path
    end

    it "should link to authors edit pages" do
        visit authors_path
        expect(page).to have_link "Edit", href: edit_author_path(@alan)
    end

    it " it should have link to delete an author" do
        visit authors_path
        expect(page).to have_link "Delete"
    end
end