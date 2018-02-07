class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date_time
      t.string :event_type
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
