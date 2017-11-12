class RemovePasswordDisgestFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :password_disgest, :string
  end
end
