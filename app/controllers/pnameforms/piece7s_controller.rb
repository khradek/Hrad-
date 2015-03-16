class Pnameforms::Piece7sController < ApplicationController
  before_action :set_piece7, only: [:show, :edit, :update, :destroy]

  # GET /piece7s
  # GET /piece7s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece7s = @pnameform.piece7s
  end

  # GET /piece7s/7
  # GET /piece7s/7.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece7s = Piece7.all    
  end

  # GET /piece7s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece7 = Piece7.new 
  end

  # GET /piece7s/7/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece7.pnameform = @pnameform 
  end

  # POST /piece7s
  # POST /piece7s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece7 = Piece7.new(piece7_params)
    @piece7.pnameform = @pnameform 

    respond_to do |format|
      if @piece7.save
        format.html { redirect_to pnameform_piece7s_path(@pnameform), notice: 'Piece7 was successfully created.' }
        format.json { render :show, status: :created, location: @piece7 }
      else
        format.html { render :new }
        format.json { render json: @piece7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece7s/7
  # PATCH/PUT /piece7s/7.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece7.pnameform = @pnameform 

    respond_to do |format|
      if @piece7.update(piece7_params)
        format.html { redirect_to pnameform_piece7s_path(@pnameform), notice: 'Piece7 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece7 }
      else
        format.html { render :edit }
        format.json { render json: @piece7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece7s/7
  # DELETE /piece7s/7.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece7 = Piece7.find(params[:id])
    title = @piece7.name

    if @piece7.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece7s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece7
      @piece7 = Piece7.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece7_params
      params.require(:piece7).permit(:name, :user_id)
    end
end
