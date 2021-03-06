# == Schema Information
#
# Table name: images
#
#  id          :bigint           not null, primary key
#  path        :string
#  location_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Image < ApplicationRecord
  belongs_to :location
end
