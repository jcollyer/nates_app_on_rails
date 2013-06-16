class AddBuylinkToBooks < ActiveRecord::Migration
  def change
    add_column :books, :buylink, :string
  end
end
