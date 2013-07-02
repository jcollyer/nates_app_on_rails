class RemoveImageFromBiblebook < ActiveRecord::Migration
  def up
    remove_column :biblebooks, :image
  end

  def down
    add_column :biblebooks, :image, :string
  end
end
