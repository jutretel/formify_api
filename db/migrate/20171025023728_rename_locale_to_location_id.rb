class RenameLocaleToLocationId < ActiveRecord::Migration[5.1]
  def change
  	rename_column :events, :locale_id, :location_id
  end
end
