class CreateSpacelists < ActiveRecord::Migration
  def change
    create_table :spacelists do |t|
      t.string :name
      t.integer :number
      t.float :lat
      t.float :lng
      t.string :comment

      t.timestamps null: false
    end
  end
end
