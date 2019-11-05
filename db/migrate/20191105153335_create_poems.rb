class CreatePoems < ActiveRecord::Migration[6.0]
  def change
    create_table :poems do |t|
      t.string :author
      t.string :title

      t.timestamps
    end
  end
end
