class Department < ActiveRecord::Base
	belongs_to :category
	has_many :services
	
	validates :name, presence: true
end
