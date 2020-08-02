class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :article
      t.boolean :status


      t.timestamps
    end
  end
end
