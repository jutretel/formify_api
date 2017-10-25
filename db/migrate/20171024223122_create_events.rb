class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :description
      t.float :rating
      t.boolean :is_public
      t.string :status
      t.references :user, foreign_key: true
      t.references :event_type, foreign_key: true
      t.references :locale, foreign_key: true

      t.timestamps
    end
  end
end
