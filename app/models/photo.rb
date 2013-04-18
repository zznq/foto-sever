class Photo < ActiveRecord::Base
  attr_accessible :date_uploaded, :group_id, :image

  has_attached_file :image,
		 :styles => { :medium => "640x480>", :thumb => '160x120>' },
		 :default_url => '/images/:style/missing.png'
end
