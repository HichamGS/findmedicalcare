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
require "test_helper"

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
