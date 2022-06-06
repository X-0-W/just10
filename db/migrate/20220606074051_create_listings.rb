class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :collection_instruction
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
