class AddAdminname < ActiveRecord::Migration[6.1]
  def change
    add_column :admins, :adminname, :string
    add_index :admins, :adminname, unique: true
  end
end
