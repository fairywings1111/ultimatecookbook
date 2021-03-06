class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :ingredients
      t.text :directions
      t.integer :idea_id
      t.string :picture
      t.timestamps
    end
    add_foreign_key :comments, :ideas
  end
end
