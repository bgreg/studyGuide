class AddPseudoToExamples < ActiveRecord::Migration[5.0]
  def change
    add_column :examples, :pseudo, :text
  end
end
