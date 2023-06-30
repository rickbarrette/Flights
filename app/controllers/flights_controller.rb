class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def show
    @flight = Flight.find(params[:id])
  end

  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.new(flight_params)

    if @flight.save
      redirect_to @flight
    else
      render :new, status: :unprocessable_entity
    end
  end

  def import
    return redirect_to request.referer, notice: :no_file if params[:file].nil?
    return redirect_to request.referer, notice: :only_csv unless params[:file].content_type == 'text/csv'

    CsvImportService.new.call(params[:file])

    redirect_to request.referer, notice: :import_started
  end


  private
    def flight_params
      params.require(:flight).permit(:date, :from, :to, :oil, :fuel, :tach, :hobbs, :note)
    end

end
