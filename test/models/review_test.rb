# == Schema Information
#
# Table name: reviews
#
#  id          :bigint           not null, primary key
#  rating      :float
#  comment     :text
#  doctor_id   :bigint
#  hospital_id :bigint
#  pharmacy_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
