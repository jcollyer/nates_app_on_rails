class AddTestamentToBiblebook < ActiveRecord::Migration
  def change
    add_column :biblebooks, :testament, :boolean
  end
end
