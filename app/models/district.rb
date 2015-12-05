class District < ActiveRecord::Base
	validates :name, presence: true
	belongs_to :state
	has_many :municipalities
end
