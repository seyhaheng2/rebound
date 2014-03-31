class Store < ActiveRecord::Base
  belongs_to :product
  searchable do
      text :name, :description
   end
end
