class AddTitleToExample < ActiveRecord::Migration[5.0]
  def change
    add_column :examples, :title, :string
  end
end
