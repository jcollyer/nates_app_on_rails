class AddRefurlToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :refurl, :string
  end
end
