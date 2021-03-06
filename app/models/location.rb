# == Schema Information
#
# Table name: locations
#
#  id         :bigint           not null, primary key
#  lat        :float
#  lng        :float
#  address    :text
#  zipcode    :string
#  city       :string
#  tel        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Location < ApplicationRecord
	has_many :images
	has_many :hours
end
