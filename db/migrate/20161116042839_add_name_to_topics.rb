class AddNameToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :name, :string
  end
end
