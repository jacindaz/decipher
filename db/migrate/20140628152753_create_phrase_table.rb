class CreatePhraseTable < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :slang, null: false
      t.text :description, null: false
      t.text :example, null: false
      t.integer :upvotes, null: false
      t.integer :downvotes, null: false

      t.timestamps
    end
  end
end
