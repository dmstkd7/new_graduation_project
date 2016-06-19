class CreateBlogs < ActiveRecord::Migration
  def change
    add_column :posts, :image, :string
    
    create_table :blogs do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
