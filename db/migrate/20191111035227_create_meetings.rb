class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.datetime  :start_time,  null: false
      t.datetime  :end_time
      t.boolean   :display,     null: false, default: true
      t.boolean   :open,        null: false, default: true

      t.timestamps
    end
  end
end
