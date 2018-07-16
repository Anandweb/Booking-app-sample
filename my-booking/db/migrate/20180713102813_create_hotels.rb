class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :availability
      t.string :date

      t.timestamps
    end
  end
end
