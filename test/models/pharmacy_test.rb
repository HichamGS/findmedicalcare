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
require "test_helper"

class PharmacyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
