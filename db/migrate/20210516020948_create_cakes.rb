class CreateCakes < ActiveRecord::Migration[5.2]
  def change
    create_table :cakes do |t|
      t.float :time
      t.string :try
      t.string :impression
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
