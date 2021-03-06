class CreateReviewsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :rating
    end
  end
end
