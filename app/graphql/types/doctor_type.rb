module Types
  class DoctorType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :description, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :location, Types::LocationType, null: true
    field :specialties, [Types::SpecialtyType], null: true
    field :images, [Types::ImageType], null: true
  end
end
