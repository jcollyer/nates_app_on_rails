 class Lesson < ActiveRecord::Base
  default_scope order('position ASC')
  # lessons = Lesson.all.sort_by { |a| +(a.title.to_i) }

  belongs_to :biblebook
	# Public: Cover art image for lesson.
	has_attached_file :image,
		:styles => { :large => "400x400>", :medium => "240x240>", :thumb => "100x100>" },
		:storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename",
    :default_url => '/assets/missing_:style.jpg'

  has_attached_file :mp3,
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"



  # Public: Title of the lesson.
  # column :title

  # Public: Summary of the lesson.
  # column :summary
end
