class AddDescriptionToResource < ActiveRecord::Migration
  def change
    add_column :resources, :description, :text
  end
end
