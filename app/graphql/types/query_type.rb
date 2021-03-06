module Types
  class QueryType < Types::BaseObject
    # /locations
    field :locations, [Types::LocationType], null: false
    def locations
      Location.all
    end
    field :location, Types::LocationType, null: false do
      argument :id, ID, required: true
    end
    def location(id:)
      Location.find(id)
    end
    # /doctors
    field :doctors, [Types::DoctorType], null: false
    def doctors
      Doctor.all
    end
    field :doctor, Types::DoctorType, null: false do
      argument :id, ID, required: true
    end
    def doctor(id:)
      Doctor.find(id)
    end
    field :reviews, [Types::ReviewType], null: false
    def reviews
      Review.all
    end
  end
end
