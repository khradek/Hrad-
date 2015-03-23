class Pnameforms::Piece8sController < ApplicationController
  before_action :set_piece8, only: [:show, :edit, :update, :destroy]

  # GET /piece8s
  # GET /piece8s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece8s = @pnameform.piece8s
  end

  # GET /piece8s/8
  # GET /piece8s/8.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece8s = Piece8.all    
  end

  # GET /piece8s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece8 = current_user.piece8s.build
  end

  # GET /piece8s/8/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece8.pnameform = @pnameform 
  end

  # POST /piece8s
  # POST /piece8s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece8 = current_user.piece8s.build(piece8_params)
    @piece8.pnameform = @pnameform 

    respond_to do |format|
      if @piece8.save
        format.html { redirect_to pnameform_piece8s_path(@pnameform), notice: 'Piece8 was successfully created.' }
        format.json { render :show, status: :created, location: @piece8 }
      else
        format.html { render :new }
        format.json { render json: @piece8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece8s/8
  # PATCH/PUT /piece8s/8.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece8.pnameform = @pnameform 

    respond_to do |format|
      if @piece8.update(piece8_params)
        format.html { redirect_to pnameform_piece8s_path(@pnameform), notice: 'Piece8 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece8 }
      else
        format.html { render :edit }
        format.json { render json: @piece8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece8s/8
  # DELETE /piece8s/8.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece8 = Piece8.find(params[:id])
    title = @piece8.name

    if @piece8.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece8s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece8
      @piece8 = Piece8.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece8_params
      params.require(:piece8).permit(:name, :user_id)
    end
end
