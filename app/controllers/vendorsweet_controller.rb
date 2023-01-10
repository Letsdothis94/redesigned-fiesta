class VendorsweetController < ApplicationController

    def index
        render json: VendorSweet.all
    end

    def create
        sweetvendor = VendorSweet.new(
                        price: params[:price],
                        vendor_id: params[:vendor_id],
                        sweet_id: params[:sweet_id])
        if sweetvendor.save
            render json:sweetvendor
        else
            render json: { errors: sweetvendor.errors.full_messages }, status: 403
        end
    end

    def destroy
        sweetvendor = VendorSweet.find_by!(id: params[:id]).destroy
        if sweetvendor.destroy
            render json: {}
        else
            render json: {errors: sweetvendor.errors.full_messages}, status: 404
        end
    end

    def show 
        sweetvendor = VendorSweet.find_by!(id: params[:id])
        render json: sweetvendor
    end


end
