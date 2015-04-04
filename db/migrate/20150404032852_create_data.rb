class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.integer :address_id
      t.string :category
      t.text :data

      t.timestamps
    end
  end
end
