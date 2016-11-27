module Api
  module V1
    class PostsController < ActionController::API
      def index
        render json: Post.all
      end

      def create
        post = Post.new(post_params)

        if post.save
          render json: post
        else
          render json: { errors: post.errors }
        end
      end

      private

      def post_params
        params.permit(:title, :description, :location, :money, :people)
      end
    end
  end
end