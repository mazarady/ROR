class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :user_id

      t.timestamps
    end
  end
end
