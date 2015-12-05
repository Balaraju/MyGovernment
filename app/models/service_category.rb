require 'elasticsearch/model'

class ServiceCategory < ActiveRecord::Base
	include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

	belongs_to :service
end

ServiceCategory.import force: true