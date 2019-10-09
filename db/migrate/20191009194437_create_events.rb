class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :location
      t.text :description
      t.text :details

      t.timestamps
    end
  end
end
