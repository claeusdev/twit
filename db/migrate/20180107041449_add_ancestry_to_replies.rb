class AddAncestryToReplies < ActiveRecord::Migration[5.1]
  def change
    add_column :replies, :ancestry, :string
    add_index :replies, :ancestry
  end
end
