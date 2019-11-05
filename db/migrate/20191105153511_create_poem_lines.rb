class CreatePoemLines < ActiveRecord::Migration[6.0]
  def change
    create_table :poem_lines do |t|
      t.references :poem, foreign_key: true
      t.references :line, foreign_key: true
      t.timestamps
    end
  end
end
