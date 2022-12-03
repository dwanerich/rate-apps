module Api
  module V1
    class PlatformsController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        platforms = Platform.all

        render json: PlatformSerializer.new(platforms, options).serialized_json
      end

      def show
        platform = Platform.find_by(slug: params[:slug])

        render json: PlatformSerializer.new(platform, options).serialized_json
      end

      def create
        platform = Platform.new(platform_params)

        if platform.save
          render json: PlatformSerializer.new(platform).serialized_json
        else
          render json: { error: platform.errors.messages }, status: 422
        end
      end

      def update
        platform = Platform.find_by(slug: params[:slug])

        if platform.update(platform_params)
          render json: PlatformSerializer.new(platform, options).serialized_json
        else
          render json: { error: platform.errors.messages }, status: 422
        end
      end

      def destroy
        platform = Platform.find_by(slug: params[:slug])
        if platform.destroy
          head :no_content
        else
          render json: { error: platform.errors.messages }, status: 422
        end
      end

      private
      def platform_params
        params.require(:platform).permit(:name, :img_url)
      end

      # compound document below
      def options
        @options ||= { include: %i[ratings]}
      end
    end
  end
end
