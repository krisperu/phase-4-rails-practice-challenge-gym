class GymsController < ApplicationController
    def index
        render json: Gym.all
    end

    def show
        gym = Gym.find(params[:id])
        render json: gym, status: :found
    end

    def destroy
        gym = Gym.find(params[:id])
        gym.destroy
        head :no_content
    end
end
