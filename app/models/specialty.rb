# == Schema Information
#
# Table name: specialties
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Specialty < ApplicationRecord
end
