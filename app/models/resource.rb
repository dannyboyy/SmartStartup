# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  name        :string
#  category_id :integer
#  tagline     :text
#  website     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#
# Indexes
#
#  index_resources_on_category_id  (category_id)
#

class Resource < ActiveRecord::Base
  belongs_to :category

  def self.import(file)
  	CSV.foreach(file.path, headers: true)	do |row|
  		resource_hash = row.to_hash
  		resource = Resource.where(id: resource_hash["id"])

  		if resource.count == 1
  		  resource.first.update_attributes(resource_hash)
  		else
  		  Resource.create!(resource_hash)
  		end 
  	end
  end
end
