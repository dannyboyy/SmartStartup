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
end
