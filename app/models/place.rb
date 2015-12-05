class Place < ActiveRecord::Base
	validates :name, presence: true
	belongs_to :district
end
