class CreateDistances < ActiveRecord::Migration[6.0]
  def change
    create_table :distances do |t|
      t.integer :month
      t.integer :date
      t.float   :distance
      t.float   :weight
      t.timestamps
    end
  end
end