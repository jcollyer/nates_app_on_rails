class AddRefurlToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :Refurl, :string
  end
end
