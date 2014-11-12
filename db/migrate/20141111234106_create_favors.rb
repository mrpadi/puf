class CreateFavors < ActiveRecord::Migration
  def change
    create_table :favors do |t|
      t.decimal :latitude, {:precision=>10, :scale=>6}
      t.decimal :longitude, {:precision=>10, :scale=>6}
      t.boolean  :seed
      t.integer :origin

      t.timestamps
    end
  end
end
