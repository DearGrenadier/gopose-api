module Api
  module V1
    class PostsController < Devise::RegistrationsController
      def index
        render json: Post.all
      end
    end
  end
end