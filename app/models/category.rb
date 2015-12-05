class Category < ActiveRecord::Base
	has_many :departments

	validates :name, presence: true
end
