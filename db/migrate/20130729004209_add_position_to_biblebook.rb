class AddPositionToBiblebook < ActiveRecord::Migration
  def change
    add_column :biblebooks, :position, :integer
  end
end
