class AddReferenceToBlogsWithIndex < ActiveRecord::Migration[6.0]
  def change
    add_reference :blogs, :author, foreign_key: true
    add_index :blogs, :title, unique: true
  end
end
