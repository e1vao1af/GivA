class AddTitleToTag < ActiveRecord::Migration[7.0]
  def change
    add_column :tags, :title, :string
  end
end
