class AddTryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :try, :string
  end
end
