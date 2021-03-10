require 'rails_helper'
RSpec.describe Api::V1::DoctorsController, :type => :controller do
    describe "GET 'index' " do
        it "returns a successful 200 response" do
            get :index, format: :json
            expect(response).to have_http_status(200)
        end
        
        it "returns all the doctors" do
            # FactoryGirl.create_list(:doctor, 5)
            get :index, format: :json
            parsed_response = JSON.parse(response.body)
            expect(parsed_response['doctors'].length).to eq(28)
        end
    end
end