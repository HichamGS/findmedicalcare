# == Schema Information
#
# Table name: hospitals
#
#  id            :bigint           not null, primary key
#  location_id   :bigint
#  name          :string
#  description   :text
#  type_hospital :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class HospitalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
