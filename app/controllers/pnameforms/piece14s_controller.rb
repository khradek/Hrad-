class Pnameforms::Piece14sController < ApplicationController
  before_action :set_piece14, only: [:show, :edit, :update, :destroy]

  # GET /piece14s
  # GET /piece14s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece14s = @pnameform.piece14s
  end

  # GET /piece14s/14
  # GET /piece14s/14.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece14s = Piece14.all    
  end

  # GET /piece14s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece14 = current_user.piece14s.build
  end

  # GET /piece14s/14/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece14.pnameform = @pnameform 
  end

  # POST /piece14s
  # POST /piece14s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece14 = current_user.piece14s.build(piece14_params)
    @piece14.pnameform = @pnameform 

    respond_to do |format|
      if @piece14.save
        format.html { redirect_to pnameform_piece14s_path(@pnameform), notice: 'Piece14 was successfully created.' }
        format.json { render :show, status: :created, location: @piece14 }
      else
        format.html { render :new }
        format.json { render json: @piece14.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece14s/14
  # PATCH/PUT /piece14s/14.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece14.pnameform = @pnameform 

    respond_to do |format|
      if @piece14.update(piece14_params)
        format.html { redirect_to pnameform_piece14s_path(@pnameform), notice: 'Piece14 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece14 }
      else
        format.html { render :edit }
        format.json { render json: @piece14.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece14s/14
  # DELETE /piece14s/14.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece14 = Piece14.find(params[:id])
    title = @piece14.name

    if @piece14.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece14s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece14
      @piece14 = Piece14.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece14_params
      params.require(:piece14).permit(:name, :user_id)
    end
end
