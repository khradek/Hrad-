class Pnameforms::Piece17sController < ApplicationController
  before_action :set_piece17, only: [:show, :edit, :update, :destroy]

  # GET /piece17s
  # GET /piece17s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece17s = @pnameform.piece17s
  end

  # GET /piece17s/17
  # GET /piece17s/17.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece17s = Piece17.all    
  end

  # GET /piece17s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece17 = current_user.piece17s.build
  end

  # GET /piece17s/17/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece17.pnameform = @pnameform 
  end

  # POST /piece17s
  # POST /piece17s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece17 = current_user.piece17s.build(piece17_params)
    @piece17.pnameform = @pnameform 

    respond_to do |format|
      if @piece17.save
        format.html { redirect_to pnameform_piece17s_path(@pnameform), notice: 'Piece17 was successfully created.' }
        format.json { render :show, status: :created, location: @piece17 }
      else
        format.html { render :new }
        format.json { render json: @piece17.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece17s/17
  # PATCH/PUT /piece17s/17.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece17.pnameform = @pnameform 

    respond_to do |format|
      if @piece17.update(piece17_params)
        format.html { redirect_to pnameform_piece17s_path(@pnameform), notice: 'Piece17 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece17 }
      else
        format.html { render :edit }
        format.json { render json: @piece17.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece17s/17
  # DELETE /piece17s/17.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece17 = Piece17.find(params[:id])
    title = @piece17.name

    if @piece17.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece17s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece17
      @piece17 = Piece17.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece17_params
      params.require(:piece17).permit(:name, :user_id)
    end
end
