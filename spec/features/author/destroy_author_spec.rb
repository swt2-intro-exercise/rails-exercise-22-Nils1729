require 'rails_helper'

describe "Destroy author action", type: :feature do
    before(:each) do
        @alan = FactoryBot.create :author
    end

    it "should destroy the author" do
        visit author_path

        prev_authors = Author.count

        expect { click_link 'Destroy' }.to change(Author, :count).by(-1)
    end
end