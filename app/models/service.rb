require 'elasticsearch/model'

class Service < ActiveRecord::Base

	include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

	validates :name, presence: true
	belongs_to :department

	has_many :categories, :through => :service_categories

	has_many :service_categories
	has_many :service_offices


 	

end


Service.import force: true

