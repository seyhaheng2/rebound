class Product < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	belongs_to :user

	include PgSearch
	multisearchable :against => [:name, :deacription],
					:if => :available_in_red?

	pg_search_scope :search, against: [:name, :description],
	using: {tsearch: {dictionary: "english"}},
	associated_against: {user: :username}

	def self.text_search(query)
	  if query.present?
	  	search(query)
	  else
	    scoped
	  end
	end
end
