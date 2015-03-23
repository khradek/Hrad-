class Pnameforms::Piece3sController < ApplicationController
  before_action :set_piece3, only: [:show, :edit, :update, :destroy]

  # GET /piece3s
  # GET /piece3s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece3s = @pnameform.piece3s
  end

  # GET /piece3s/3
  # GET /piece3s/3.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece3s = Piece3.all    
  end

  # GET /piece3s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece3 = current_user.piece3s.build
  end

  # GET /piece3s/3/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece3.pnameform = @pnameform 
  end

  # POST /piece3s
  # POST /piece3s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece3 = current_user.piece3s.build(piece3_params)
    @piece3.pnameform = @pnameform 

    respond_to do |format|
      if @piece3.save
        format.html { redirect_to pnameform_piece3s_path(@pnameform), notice: 'Piece3 was successfully created.' }
        format.json { render :show, status: :created, location: @piece3 }
      else
        format.html { render :new }
        format.json { render json: @piece3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece3s/3
  # PATCH/PUT /piece3s/3.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece3.pnameform = @pnameform 

    respond_to do |format|
      if @piece3.update(piece3_params)
        format.html { redirect_to pnameform_piece3s_path(@pnameform), notice: 'Piece3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece3 }
      else
        format.html { render :edit }
        format.json { render json: @piece3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece3s/3
  # DELETE /piece3s/3.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece3 = Piece3.find(params[:id])
    title = @piece3.name

    if @piece3.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece3s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece3
      @piece3 = Piece3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece3_params
      params.require(:piece3).permit(:name, :user_id)
    end
end
