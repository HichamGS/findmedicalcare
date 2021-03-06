module Types
  class ServiceType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :price, String, null: true
    field :doctor_id, Integer, null: true
    field :hospital_id, Integer, null: true
    field :specialty_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
