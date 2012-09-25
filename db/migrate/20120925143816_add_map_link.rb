class AddMapLink < ActiveRecord::Migration
  def change
    add_column :offices, :map, :string
    add_column :places, :map, :string
  end
end
