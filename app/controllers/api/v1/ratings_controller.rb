module Api
  module V1
    class RatingsController < ApplicationController
      protect_from_forgery with: :null_session

      def create
        rating = Rating.new(rating_params)

        if rating.save
          render json: RatingSerializer.new(rating).serialized_json
        else
          render json: { error: rating.errors.messages }, status: 422
        end
      end

      def destroy
        rating = Rating.find(params[:id])

        if rating.destroy
          head :no_content
        else
          render json: { error: rating.errors.messages }, status: 422
        end
      end

      private

      def rating_params
        params.require(:rating).permit(:title, :description, :score, :platform_id)
      end
    end
  end
end
