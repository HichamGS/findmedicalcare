# == Schema Information
#
# Table name: doctors_specialties
#
#  id           :bigint           not null, primary key
#  doctor_id    :bigint
#  specialty_id :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class DoctorsSpecialty < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty
end
