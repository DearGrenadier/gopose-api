class HealthController < ApplicationController
  def index
    render json: { helth: 'ok' }
  end
end
