class Service < ActiveRecord::Base
	validates :name, presence: true
	belongs_to :department
	has_many :service_categories
end
