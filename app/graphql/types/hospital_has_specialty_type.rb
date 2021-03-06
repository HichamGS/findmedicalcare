module Types
  class HospitalHasSpecialtyType < Types::BaseObject
    field :id, ID, null: false
    field :specialty_id, Integer, null: true
    field :hospital_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
