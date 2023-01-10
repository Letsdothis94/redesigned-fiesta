class SweetController < ApplicationController

def index
    render json: Sweet.all
end

def show 
    sweet = Sweet.find_by!(id: params[:id])
    if sweet.valid?
        render json: sweet
    else
        render json: { errors: sweet.errors.full_messages }, status: 404
    end
end









end
