class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    User.first.update_attribute(:name, "admin")
  end
end
