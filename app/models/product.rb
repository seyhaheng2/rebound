class Product < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	# def self.latest
	# 	Product.order(:updated_at).last
	# end
end
