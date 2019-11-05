class CreatePoemTags < ActiveRecord::Migration[6.0]
  def change
    create_table :poem_tags do |t|
      t.references :poem, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
