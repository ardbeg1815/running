class CreateDistances < ActiveRecord::Migration[6.0]
  def change
    create_table :distances do |t|
      t.integer :month
      t.integer :date
      t.integer :distance
      t.integer :weight
      t.timestamps
    end
  end
end