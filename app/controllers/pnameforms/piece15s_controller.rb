class Pnameforms::Piece15sController < ApplicationController
  before_action :set_piece15, only: [:show, :edit, :update, :destroy]

  # GET /piece15s
  # GET /piece15s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece15s = @pnameform.piece15s
  end

  # GET /piece15s/15
  # GET /piece15s/15.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece15s = Piece15.all    
  end

  # GET /piece15s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece15 = current_user.piece15s.build
  end

  # GET /piece15s/15/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece15.pnameform = @pnameform 
  end

  # POST /piece15s
  # POST /piece15s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece15 = current_user.piece15s.build(piece15_params)
    @piece15.pnameform = @pnameform 

    respond_to do |format|
      if @piece15.save
        format.html { redirect_to pnameform_piece15s_path(@pnameform), notice: 'Piece15 was successfully created.' }
        format.json { render :show, status: :created, location: @piece15 }
      else
        format.html { render :new }
        format.json { render json: @piece15.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece15s/15
  # PATCH/PUT /piece15s/15.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece15.pnameform = @pnameform 

    respond_to do |format|
      if @piece15.update(piece15_params)
        format.html { redirect_to pnameform_piece15s_path(@pnameform), notice: 'Piece15 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece15 }
      else
        format.html { render :edit }
        format.json { render json: @piece15.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece15s/15
  # DELETE /piece15s/15.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece15 = Piece15.find(params[:id])
    title = @piece15.name

    if @piece15.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece15s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece15
      @piece15 = Piece15.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece15_params
      params.require(:piece15).permit(:name, :user_id)
    end
end
