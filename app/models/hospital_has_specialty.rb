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
class HospitalHasSpecialty < ApplicationRecord
  belongs_to :specialty
  belongs_to :hospital
end
