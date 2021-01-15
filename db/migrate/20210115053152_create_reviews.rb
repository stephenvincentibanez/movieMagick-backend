class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :text
      t.float :rating

      t.timestamps
    end
  end
end
