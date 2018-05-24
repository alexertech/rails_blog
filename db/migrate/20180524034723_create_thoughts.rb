class CreateThoughts < ActiveRecord::Migration[5.0]
  def change
    create_table :thoughts do |t|
      t.string :author
      t.text :quote

      t.timestamps
    end
  end
end
