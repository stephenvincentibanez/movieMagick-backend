class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :text
      t.string :rating
      t.references :user
      t.references :movie

      t.timestamps
    end
  end
end
