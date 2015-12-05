class Service < ActiveRecord::Base
	validates :name, presence: true
	belongs_to :department
	has_many :service_categories
	has_many :service_offices
end
