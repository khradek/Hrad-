class Pnameforms::Piece12sController < ApplicationController
  before_action :set_piece12, only: [:show, :edit, :update, :destroy]

  # GET /piece12s
  # GET /piece12s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece12s = @pnameform.piece12s
  end

  # GET /piece12s/12
  # GET /piece12s/12.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece12s = Piece12.all    
  end

  # GET /piece12s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece12 = current_user.piece12s.build
  end

  # GET /piece12s/12/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece12.pnameform = @pnameform 
  end

  # POST /piece12s
  # POST /piece12s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece12 = current_user.piece12s.build(piece12_params)
    @piece12.pnameform = @pnameform 

    respond_to do |format|
      if @piece12.save
        format.html { redirect_to pnameform_piece12s_path(@pnameform), notice: 'Piece12 was successfully created.' }
        format.json { render :show, status: :created, location: @piece12 }
      else
        format.html { render :new }
        format.json { render json: @piece12.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece12s/12
  # PATCH/PUT /piece12s/12.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece12.pnameform = @pnameform 

    respond_to do |format|
      if @piece12.update(piece12_params)
        format.html { redirect_to pnameform_piece12s_path(@pnameform), notice: 'Piece12 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece12 }
      else
        format.html { render :edit }
        format.json { render json: @piece12.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece12s/12
  # DELETE /piece12s/12.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece12 = Piece12.find(params[:id])
    title = @piece12.name

    if @piece12.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece12s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece12
      @piece12 = Piece12.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece12_params
      params.require(:piece12).permit(:name, :user_id)
    end
end
