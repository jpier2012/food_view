class AddFiltersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :byob, :boolean
    add_column :users, :outdoor_seating, :boolean
    add_column :users, :family_friendly, :boolean
    add_column :users, :open_bar, :boolean
    add_column :users, :cuisine, :string
  end
end
