class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.integer :duration
      t.text :description
      t.integer :price
      t.string :location
      t.string :title
      t.timestamps
    end
  end
end
