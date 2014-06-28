class ChangePhrasesColumn < ActiveRecord::Migration
  def up
    change_column :phrases, :upvotes, :integer, :default => 0
    change_column :phrases, :downvotes, :integer, :default => 0
  end
  def down
    change_column :phrases, :upvotes, :integer
    change_column :phrases, :downvotes, :integer
  end
end
