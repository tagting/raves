class AddTimestampToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :timestamp, :datetime
  end
end
