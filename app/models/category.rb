class Category < ActiveRecord::Base


	has_many :services, :through => :service_categories

	has_many :service_categories

	has_many :departments
	validates :name, presence: true

end
