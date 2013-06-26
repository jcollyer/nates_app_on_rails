class AddBiblebookIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :biblebook_id, :integer
  end
end
