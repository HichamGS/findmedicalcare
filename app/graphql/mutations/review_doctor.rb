class Mutations::ReviewDoctor < Mutations::BaseMutation

	argument :rating, Float, required: true
	argument :comment, String, required: true
	argument :doctor_id, Integer, required: true

	field :review, Types::ReviewType, null: false
	field :errors, [String], null: false

	def resolve(rating:, comment:, doctor_id:)
		review = Review.new(rating: rating, comment: comment, doctor_id: doctor_id)
		if review.save
			{
				review: review,
				errors: []
			}
		else
			{
				review: nil,
				errors: review.errors.full_messages
			}
		end
	end
end