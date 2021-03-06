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
require "test_helper"

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
