class VendorController < ApplicationController

    def index
        vendor = Vendor.all
        render json: vendor.as_json(only: [:id, :name])
    end

    def show
        vendor = Vendor.find_by!(id: params[:id])
        if vendor.valid?
            render json:vendor
        else 
            render json: { errors: vandor.errors.full_massages }, status: 404
        end
    end

    







end
