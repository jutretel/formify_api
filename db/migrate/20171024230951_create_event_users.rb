class CreateEventUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :event_users do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :participation_type

      t.timestamps
    end
  end
end
