class Pnameforms::Piece19sController < ApplicationController
  before_action :set_piece19, only: [:show, :edit, :update, :destroy]

  # GET /piece19s
  # GET /piece19s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece19s = @pnameform.piece19s
  end

  # GET /piece19s/19
  # GET /piece19s/19.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece19s = Piece19.all    
  end

  # GET /piece19s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece19 = current_user.piece19s.build
  end

  # GET /piece19s/19/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece19.pnameform = @pnameform 
  end

  # POST /piece19s
  # POST /piece19s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece19 = current_user.piece19s.build(piece19_params)
    @piece19.pnameform = @pnameform 

    respond_to do |format|
      if @piece19.save
        format.html { redirect_to pnameform_piece19s_path(@pnameform), notice: 'Piece19 was successfully created.' }
        format.json { render :show, status: :created, location: @piece19 }
      else
        format.html { render :new }
        format.json { render json: @piece19.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece19s/19
  # PATCH/PUT /piece19s/19.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece19.pnameform = @pnameform 

    respond_to do |format|
      if @piece19.update(piece19_params)
        format.html { redirect_to pnameform_piece19s_path(@pnameform), notice: 'Piece19 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece19 }
      else
        format.html { render :edit }
        format.json { render json: @piece19.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece19s/19
  # DELETE /piece19s/19.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece19 = Piece19.find(params[:id])
    title = @piece19.name

    if @piece19.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece19s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece19
      @piece19 = Piece19.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece19_params
      params.require(:piece19).permit(:name, :user_id)
    end
end
