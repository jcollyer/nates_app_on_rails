class Lesson < ActiveRecord::Base
	# Public: Cover art image for lesson.
	has_attached_file :image,
		:styles => { :large => "400x400>", :medium => "240x240>", :thumb => "100x100>" },
		:default_url => "/assets/missing_:style.png"

  has_attached_file :mp3



  # Public: Title of the lesson.
  # column :title

  # Public: Summary of the lesson.
  # column :summary
end
