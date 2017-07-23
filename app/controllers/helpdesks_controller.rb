class HelpdesksController < ApplicationController
  before_action :set_helpdesk, only: [:show, :update, :destroy]

  # GET /helpdesks
  def index
    @helpdesks = Helpdesk.all

    render json: @helpdesks
  end

  # GET /helpdesks/1
  def show
    render json: @helpdesk
  end

  # POST /helpdesks
  def create
    @helpdesk = Helpdesk.new(helpdesk_params)

    if @helpdesk.save
      render json: @helpdesk, status: :created, location: @helpdesk
    else
      render json: @helpdesk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /helpdesks/1
  def update
    if @helpdesk.update(helpdesk_params)
      render json: @helpdesk
    else
      render json: @helpdesk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /helpdesks/1
  def destroy
    @helpdesk.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helpdesk
      @helpdesk = Helpdesk.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def helpdesk_params
      params.require(:helpdesk).permit(:name, :phone_number)
    end
end
