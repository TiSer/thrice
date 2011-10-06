class CreateTracks < ActiveRecord::Migration
  def up
    create_table :tracks do |t|
      t.string :category
      t.integer :user_id
      
      t.timestamps 
    end
  end

  def down
    drop_table :tracks
  end
end
