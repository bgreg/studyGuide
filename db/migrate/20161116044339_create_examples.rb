class CreateExamples < ActiveRecord::Migration[5.0]
  def change
    create_table :examples do |t|
      t.timestamps
      t.references :topic, foreign_key: true
    end
  end
end
