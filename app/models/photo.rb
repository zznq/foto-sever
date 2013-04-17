class Photo < ActiveRecord::Base
  attr_accessible :date_uploaded, :group_id, :image

  has_attachment :content_type => :image,
		 :storage => :file_system,
		 :max_size => 5.megabytes,
		 :resize_to => '640x480>',
		 :thumbnails => { :thumb => '160x120>' }

 validate_as_attachment
		
end
