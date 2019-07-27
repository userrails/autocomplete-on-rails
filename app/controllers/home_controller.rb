class HomeController < ApplicationController
    autocomplete :client, :name

  def index
    @order = Order.new
  end
end
