class CreateMeetingEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_entries do |t|
      t.references  :meeting,     foreign_key: true
      t.string      :family_name, null: false
      t.string      :first_name,  null: false
      t.string      :family_kana, null: false
      t.string      :first_kana,  null: false
      t.string      :phone,       null: false
      t.string      :email,       null: false
      t.text        :purpose
      t.text        :note
      t.boolean     :agreement,   null: false, default: false

      t.timestamps
    end
  end
end
