class AddFiltersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :byob_filter, :boolean
    add_column :users, :outdoor_seating_filter, :boolean
    add_column :users, :family_friendly_filter, :boolean
    add_column :users, :open_bar_filter, :boolean
    add_column :users, :cuisine_filter, :string
  end
end
