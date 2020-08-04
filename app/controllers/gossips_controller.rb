class GossipsController < ApplicationController
  def new
  end

  def create
    @gossip = Gossip.new(title: params["gossip_title"], content: params["gossip_content"])
    city = City.new
    user = User.new
    user.city = city
    @gossip.user = user
    if @gossip.save
      redirect_to '/gossips/'
    else
      render 'new'
    end

  
  end

  def index
  end
end
