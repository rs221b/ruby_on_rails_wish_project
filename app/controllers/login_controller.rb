class LoginController < ApplicationController
    # before_action :whitelist_params, only: [:start]
    skip_before_action :verify_authenticity_token
    def index
       
    end

    def start
        whitelist_params
        row = LoginHelper.start(@params[:name], @params[:contact], @params[:wish])
        render json: row
    end
    
    def whitelist_params
        @params ||= params.permit(:name, :contact, :wish)
    end
end