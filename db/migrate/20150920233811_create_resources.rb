class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true
      t.text :tagline
      t.text :website

      t.timestamps null: false
    end
  end
end
