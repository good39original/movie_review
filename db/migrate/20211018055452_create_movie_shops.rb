class CreateMovieShops < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_shops do |t|
      t.string :name

      t.timestamps
    end
  end
end
