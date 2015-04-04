class Removeios < ActiveRecord::Migration
  def change
    remove_column :addresses, :waitingForIosResponse
  end
end
