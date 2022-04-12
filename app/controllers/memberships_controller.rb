class MembershipsController < ApplicationController
    def index
        render json: Membership.all
    end

    def show
        membership = Membership.find(params[:id])
        render json: membership, status: :found
    end

    def create
        membership = Membership.create!(member_params)
        render json: membership, status: :created
    end

    private
    def member_params
        params.permit(:gym_id, :client_id, :charge)
    end
end
