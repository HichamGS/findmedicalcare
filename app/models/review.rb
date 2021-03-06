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
class Review < ApplicationRecord
  belongs_to :doctor, optional: true
  belongs_to :pharmacy, optional: true
  belongs_to :hospital, optional: true
end
