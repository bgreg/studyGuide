class AddExampleReferenceToLinks < ActiveRecord::Migration[5.0]
  def change
    add_reference :links, :example, foreign_key: true
  end
end
