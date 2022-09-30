class ItemsController < ApplicationController
    
    def index
        items = Item.all.order(rafing: :desc)
        render json: items, include: :user
        
    end
end
