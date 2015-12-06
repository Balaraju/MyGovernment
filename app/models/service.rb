class Service < ActiveRecord::Base

	validates :name, presence: true
	validates_uniqueness_of :name
	belongs_to :department

	has_many :service_categories
	has_many :service_offices

	after_save :load_into_soulmate
	before_destroy :remove_from_soulmate

  def self.search(term)
    matches = Soulmate::Matcher.new('Services').matches_for_term(term)
    matches.collect {|match| {"id" => match["id"], "label" => match["term"], "link" => match["data"]["link"]} }
  end

  def self.level_name(category_type, category_id)
  	name="CENTER"
  	if category_type == "CENTER"
  		name = "CENTER"
  	elsif category_type == "STATE"
  		name = State.find(category_id).name
  	elsif category_type == "DISTRICT"
  		name = District.find(category_id).name
  	elsif category_type == "PLACE"
  		name = Place.find(category_id).name 
  	end
  end

private 

	def load_into_soulmate
		loader = Soulmate::Loader.new("Services")
		loader.add("term" => name, "id" => self.id, "data" => {
			"link" => Rails.application.routes.url_helpers.service_path(self.id)
	   	})
	end

	def remove_from_soulmate
		loader = Soulmate::Loader.new("Services")
	    loader.remove("id" => self.id)
	end
end
