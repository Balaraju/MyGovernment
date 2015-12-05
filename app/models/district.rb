require 'elasticsearch/model'

class District < ActiveRecord::Base
	include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

	validates :name, presence: true
	belongs_to :state
	has_many :municipalities


end

District.import force: true
