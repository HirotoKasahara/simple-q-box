class Sleeps < ActiveRecord::Migration[5.2]
  def change
    drop_table :sleeps
  end
end
