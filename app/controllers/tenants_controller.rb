class TenantsController < ApplicationController

    def create 
        tent = Tenants.create!(tent_params)
        render json: tent, status: :created
    end

    def update
        tent = Tenant.find(params[:id])
        tent.update!(tent_params)
        render json: tent, status: :accepted
    end

    private
    def tent_params
        params.permit(:id,:name, :age,)
    end
end
