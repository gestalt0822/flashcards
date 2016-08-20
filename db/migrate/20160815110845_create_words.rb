class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string  :word
      t.string  :meaning
      t.string  :wrong1
      t.string  :wrong2
      t.string  :level
      t.timestamps
    end
  end
end
