class AddViewsToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :view, :integer, default: 0
  end
end
