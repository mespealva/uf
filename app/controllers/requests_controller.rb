class RequestsController < ApplicationController

  def index
      @request = Request.all
      render json: @request
  end

  def show
      @request = Request.find_by(name: params[:name])
      #user = request.headers['X-CLIENTE=juan']
      #Request.create(nombre: params[:client])
      @count = Request.where(name: params[:name]).count
      if @request
          render json: [@request, {peticiones: @count}]
      else
          render json: { message: 'No existe usuario' }
      end
  end

  
end
