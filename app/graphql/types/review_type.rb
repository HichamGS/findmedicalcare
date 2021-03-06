module Types
  class ReviewType < Types::BaseObject
    field :id, ID, null: false
    field :rating, Float, null: true
    field :comment, String, null: true
    field :doctor_id, Integer, null: true
    field :hospital_id, Integer, null: true
    field :pharmacy_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
