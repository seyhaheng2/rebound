class Product < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	belongs_to :user

	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end
end
