class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.boolean :waitingForIosResponse

      t.timestamps
    end
  end
end
