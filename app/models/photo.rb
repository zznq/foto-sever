class Photo < ActiveRecord::Base
  attr_accessible :group_id, :image

  has_attached_file :image,
		 :styles => { :medium => "640x480>", :thumb => '160x120>' },
		 :default_url => '/images/:style/missing.png'
  validates_attachment_content_type :image, :content_type => ['image/jpeg','image/jpg', 'image/png']
end
