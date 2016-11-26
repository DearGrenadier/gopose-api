module Api
  module V1
    class RegistrationsController < Devise::RegistrationsController
      def create
        render head: :ok
      end
    end
  end
end