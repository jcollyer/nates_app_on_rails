class Lesson < ActiveRecord::Base
  # Public: Title of the lesson.
  # column :title

  # Public: Summary of the lesson.
  # column :summary

  attr_accessible :avatar

  has_attached_file :avatar,
  	:styles => { :large => "600x600>", :medium => "340x340>", :thumb => "100x100>" },
  	:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
  	:default_url => "/images/:style/missing.png"

end
