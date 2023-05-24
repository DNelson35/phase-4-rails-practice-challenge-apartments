class ApartmentsController < ApplicationController

    def index 
        render json: Apartment.all, status: :ok
    end

    def show
        apt = find_apt
        render json: apt, status: :ok
    end

    def create 
        apt = Apartment.create!(apt_params)
        render json: apt, status: :created
    end

    def update
        apt = find_apt
        apt.update!(apt_params)
        render json: apt, status: :accepted
    end

    def destroy
        apt = find_apt
        apt.destroy
        head :no_content
    end

    private

    def find_apt
        Apartment.find(params[:id])
    end

    def apt_params
        params.permit(:id, :name)
    end

end
