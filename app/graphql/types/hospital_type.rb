module Types
  class HospitalType < Types::BaseObject
    field :id, ID, null: false
    field :location_id, Integer, null: true
    field :name, String, null: true
    field :description, String, null: true
    field :type_hospital, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
