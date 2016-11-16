class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.timestamps
      t.references :topic, foreign_key: true
    end
  end
end
