class RemoveTextFromComment < ActiveRecord::Migration[7.1]
  def change
    remove_column :comments, :text, :string
  end
end
