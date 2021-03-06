# == Schema Information
#
# Table name: hospital_has_specialties
#
#  id           :bigint           not null, primary key
#  specialty_id :bigint
#  hospital_id  :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class HospitalHasSpecialtyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
