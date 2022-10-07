class CreateGenresMoviesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :genres_movies_tables do |t|
      create_join_table :genres,:movies
      t.timestamps
    end
  end
end
