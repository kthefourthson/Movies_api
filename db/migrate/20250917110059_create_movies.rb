class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.decimal :rating

      t.timestamps
    end
  end
end
