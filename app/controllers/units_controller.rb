class UnitsController < ApplicationController

  def index
      @units = Unit.all
      render json: @units
  end

  def show
      @unit = Unit.find_by(date: Date.parse(params[:date]))
      Request.create(name: params[:client])

      if @unit.present?
          render json: @unit
      else
          render json: {message: 'Dato no encontrado'}
      end
  end

end