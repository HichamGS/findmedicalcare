module Types
  class LocationType < Types::BaseObject
    field :id, ID, null: false
    field :lat, Float, null: true
    field :lng, Float, null: true
    field :address, String, null: true
    field :zipcode, String, null: true
    field :city, String, null: true
    field :tel, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
