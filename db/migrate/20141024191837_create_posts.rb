class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.belongs_to :blog, index: true

      t.timestamps
    end
  end
end
