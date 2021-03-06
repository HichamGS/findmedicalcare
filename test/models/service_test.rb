# == Schema Information
#
# Table name: services
#
#  id           :bigint           not null, primary key
#  title        :string
#  price        :string
#  doctor_id    :bigint
#  hospital_id  :bigint
#  specialty_id :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
