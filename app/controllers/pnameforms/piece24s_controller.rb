class Pnameforms::Piece24sController < ApplicationController
  before_action :set_piece24, only: [:show, :edit, :update, :destroy]

  # GET /piece24s
  # GET /piece24s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece24s = @pnameform.piece24s
  end

  # GET /piece24s/24
  # GET /piece24s/24.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece24s = Piece24.all    
  end

  # GET /piece24s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece24 = current_user.piece24s.build
  end

  # GET /piece24s/24/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece24.pnameform = @pnameform 
  end

  # POST /piece24s
  # POST /piece24s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece24 = current_user.piece24s.build(piece24_params)
    @piece24.pnameform = @pnameform 

    respond_to do |format|
      if @piece24.save
        format.html { redirect_to pnameform_piece24s_path(@pnameform), notice: 'Piece24 was successfully created.' }
        format.json { render :show, status: :created, location: @piece24 }
      else
        format.html { render :new }
        format.json { render json: @piece24.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece24s/24
  # PATCH/PUT /piece24s/24.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece24.pnameform = @pnameform 

    respond_to do |format|
      if @piece24.update(piece24_params)
        format.html { redirect_to pnameform_piece24s_path(@pnameform), notice: 'Piece24 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece24 }
      else
        format.html { render :edit }
        format.json { render json: @piece24.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece24s/24
  # DELETE /piece24s/24.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece24 = Piece24.find(params[:id])
    title = @piece24.name

    if @piece24.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece24s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece24
      @piece24 = Piece24.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece24_params
      params.require(:piece24).permit(:name, :user_id)
    end
end
