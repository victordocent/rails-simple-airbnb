class AddColumnsToFlats < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :primary_image, :string
    add_column :flats, :availability, :boolean, null: false, default: true
  end
end
