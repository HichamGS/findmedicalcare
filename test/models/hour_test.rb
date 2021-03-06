# == Schema Information
#
# Table name: hours
#
#  id          :bigint           not null, primary key
#  Day         :string
#  start       :time
#  end         :time
#  location_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class HourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
