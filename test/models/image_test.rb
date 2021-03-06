# == Schema Information
#
# Table name: images
#
#  id          :bigint           not null, primary key
#  path        :string
#  location_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
