class Pnameforms::Piece22sController < ApplicationController
  before_action :set_piece22, only: [:show, :edit, :update, :destroy]

  # GET /piece22s
  # GET /piece22s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece22s = @pnameform.piece22s
  end

  # GET /piece22s/22
  # GET /piece22s/22.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece22s = Piece22.all    
  end

  # GET /piece22s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece22 = current_user.piece22s.build
  end

  # GET /piece22s/22/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece22.pnameform = @pnameform 
  end

  # POST /piece22s
  # POST /piece22s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece22 = current_user.piece22s.build(piece22_params)
    @piece22.pnameform = @pnameform 

    respond_to do |format|
      if @piece22.save
        format.html { redirect_to pnameform_piece22s_path(@pnameform), notice: 'Piece22 was successfully created.' }
        format.json { render :show, status: :created, location: @piece22 }
      else
        format.html { render :new }
        format.json { render json: @piece22.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece22s/22
  # PATCH/PUT /piece22s/22.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece22.pnameform = @pnameform 

    respond_to do |format|
      if @piece22.update(piece22_params)
        format.html { redirect_to pnameform_piece22s_path(@pnameform), notice: 'Piece22 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece22 }
      else
        format.html { render :edit }
        format.json { render json: @piece22.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece22s/22
  # DELETE /piece22s/22.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece22 = Piece22.find(params[:id])
    title = @piece22.name

    if @piece22.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece22s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece22
      @piece22 = Piece22.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece22_params
      params.require(:piece22).permit(:name, :user_id)
    end
end
