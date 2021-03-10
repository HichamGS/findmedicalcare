module Api::V1
    class DoctorsController < ApplicationController
        def index
            doctors = Doctor::all
            render json: { doctors: doctors }
        end
    end
end
