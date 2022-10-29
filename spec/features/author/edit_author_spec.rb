require 'rails_helper'

describe "Edit author page", type: :feature do
    before(:each) do
        @alan = FactoryBot.create :author
    end

    it "should exist at 'edit_author_path' and render withour error" do
        visit edit_author_path(@alan)
    end

    it "should update the author details" do
        visit edit_author_path(@alan)

        page.fill_in 'author[first_name]', with: 'Bob'
        find('input[type="submit"]').click

        @alan.reload

        expect(@alan.first_name).to eq 'Bob'
    end
end