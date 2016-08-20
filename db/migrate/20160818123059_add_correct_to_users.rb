class AddCorrectToUsers < ActiveRecord::Migration
  def change
    add_column :users, :correct, :string
    add_column :users, :incorrect, :string
    add_column :users, :accuracy_rate, :string
  end
end
