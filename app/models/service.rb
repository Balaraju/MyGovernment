require 'elasticsearch/model'

class Service < ActiveRecord::Base

	include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

	validates :name, presence: true
	belongs_to :department

end


Service.import force: true

