module Api
  module V1
    class PostsController < ActionController::API
      def index
        render json: Post.all
      end
    end
  end
end