class HomeController < ApplicationController

    def index
        @list_out = Store.all
        
    end
    def info
        @info_out = Store.find(params[:id])
    end
    def write
        info = Store.new
        info.storeName = params[:storeName]
        info.storeMenu = params[:storeMenu]
        info.leastPrice = params[:leastPrice]
        info.mostPrice = params[:mostPrice]
        info.phoneNumber = params[:phoneNumber]
        info.runningTime = params[:runningTime]
        info.latclicked = params[:latclicked]
        info.lngclicked = params[:lngclicked]
        
        info.save
        redirect_to '/'
    end
    
end
