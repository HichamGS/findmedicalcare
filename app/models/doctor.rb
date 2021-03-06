# == Schema Information
#
# Table name: doctors
#
#  id          :bigint           not null, primary key
#  location_id :bigint
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Doctor < ApplicationRecord
  belongs_to :location
  has_and_belongs_to_many :specialties
  has_many :images, through: :location
  
  # belongs_to :specialty, optional: true
end
