module Types
  class HourType < Types::BaseObject
    field :id, ID, null: false
    field :Day, String, null: true
    field :start, Types::TimeType, null: true
    field :end, Types::TimeType, null: true
    field :location_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
