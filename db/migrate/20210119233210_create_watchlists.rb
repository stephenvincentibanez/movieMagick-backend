class CreateWatchlists < ActiveRecord::Migration[6.1]
  def change
    create_table :watchlists do |t|
      t.references :movie
      t.references :user
      t.timestamps
    end
  end
end
