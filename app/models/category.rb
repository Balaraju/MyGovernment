class Category < ActiveRecord::Base


	has_many :service_categories

	has_many :departments
	validates :name, presence: true

end
