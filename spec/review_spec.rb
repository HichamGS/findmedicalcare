require 'rails_helper'
RSpec.describe Api::V1::ReviewsController, :type => :controller do
    describe "GET 'index' " do
        it "returns a successful 200 response" do
            get :index, format: :json
            expect(response).to have_http_status(200)
        end
        
        it "returns all the reviews" do
            # FactoryGirl.create_list(:doctor, 5)
            get :index, format: :json
            parsed_response = JSON.parse(response.body)
            expect(parsed_response['reviews'].length).to eq(1)
        end
    end
    
    describe "GET 'show' " do
        let(:review) { review = 1 }
        it "returns a successful 200 response" do
            get :show, params: { id: review }, format: :json
            expect(response).to have_http_status(200)
        end
        
        it "returns data of an single review" do
            get :show, params: { id: review }, format: :json
            parsed_response = JSON.parse(response.body)
            expect(parsed_response['review']).to_not be_nil
        end
        
        it "returns an error if the review does not exist" do
            get :show, params: { id: -1 } , format: :json
            parsed_response = JSON.parse(response.body)
            expect(parsed_response['error']).to eq("Review does not exist")
            expect(response).to be_not_found
        end
    end
    
    
    describe "POST 'create' " do
        context "when is successfully created" do
            before(:each) do
                doctor_id = rand(1...5)
                @comment = "Some comment"
                rating = rand(1...5)
                # @event_attributes = FactoryGirl.attributes_for(:event)
                # api_authorization_header user.auth_token
                post :create, params: { comment: @comment, rating: rating, doctor_id: doctor_id }, format: :json
            end
            
            it "renders the JSON representation for the review record just created" do
                review_response = JSON::parse(response.body)
                #raise review_response.inspect
                expect(review_response['review']['comment']).to eql @comment
            end
            it { expect(response).to have_http_status(200) }
        end
    end
end