class CreateVotesTable < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :phrase_id, null: false
      t.integer :vote, null: false
      t.timestamps
    end
  end
end
