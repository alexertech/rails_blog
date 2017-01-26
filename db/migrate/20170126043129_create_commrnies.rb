class CreateCommrnies < ActiveRecord::Migration[5.0]
  def change
    create_table :commrnies do |t|
      t.string :author
      t.text :body
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
