class AddAvatarToLesson < ActiveRecord::Migration
  def self.up
    add_attachment :lessons, :avatar
  end

  def self.down
    remove_attachment :lessons, :avatar
  end
end
