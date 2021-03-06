# == Schema Information
#
# Table name: pharmacies
#
#  id          :bigint           not null, primary key
#  type        :string
#  location_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Pharmacy < ApplicationRecord
  belongs_to :location
end
