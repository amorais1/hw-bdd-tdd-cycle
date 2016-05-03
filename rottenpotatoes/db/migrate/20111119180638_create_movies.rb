class CreateMovies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :release_date
      t.director :director
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table :movies
  end
  
  def add_Director
    add_column :director
  end
  
end
