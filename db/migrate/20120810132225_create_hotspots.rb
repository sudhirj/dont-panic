class CreateHotspots < ActiveRecord::Migration
  def change
    create_table :hotspots do |t|

      t.timestamps
    end
  end
end
