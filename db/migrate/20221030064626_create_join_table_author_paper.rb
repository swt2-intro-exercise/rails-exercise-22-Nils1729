class CreateJoinTableAuthorPaper < ActiveRecord::Migration[7.0]
  def change
    create_join_table :authors, :papers do |t|
    end
  end
end
