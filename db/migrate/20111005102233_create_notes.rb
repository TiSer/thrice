class CreateNotes < ActiveRecord::Migration
  def up
    create_table :notes do |t|
      t.text :body
      t.integer :user_id
      
      t.timestamps 
    end
  end

  def down
    drop_table :notes
  end
end
