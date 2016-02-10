class CreateSplinters < ActiveRecord::Migration
  def change
    create_table :splinters do |t|
      t.string :title
      t.string :url
      t.text :image

      t.timestamps null: false
    end
  end
end
