class ClientsController < ApplicationController
    def index
        render json: Client.all
    end

    def show
        client = Client.find(params[:id])
        render json: client, serializer: TotalMembershipSerializer
    end
end
