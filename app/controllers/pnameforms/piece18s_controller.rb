class Pnameforms::Piece18sController < ApplicationController
  before_action :set_piece18, only: [:show, :edit, :update, :destroy]

  # GET /piece18s
  # GET /piece18s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece18s = @pnameform.piece18s
  end

  # GET /piece18s/18
  # GET /piece18s/18.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece18s = Piece18.all    
  end

  # GET /piece18s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece18 = Piece18.new 
  end

  # GET /piece18s/18/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece18.pnameform = @pnameform 
  end

  # POST /piece18s
  # POST /piece18s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece18 = Piece18.new(piece18_params)
    @piece18.pnameform = @pnameform 

    respond_to do |format|
      if @piece18.save
        format.html { redirect_to pnameform_piece18s_path(@pnameform), notice: 'Piece18 was successfully created.' }
        format.json { render :show, status: :created, location: @piece18 }
      else
        format.html { render :new }
        format.json { render json: @piece18.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece18s/18
  # PATCH/PUT /piece18s/18.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece18.pnameform = @pnameform 

    respond_to do |format|
      if @piece18.update(piece18_params)
        format.html { redirect_to pnameform_piece18s_path(@pnameform), notice: 'Piece18 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece18 }
      else
        format.html { render :edit }
        format.json { render json: @piece18.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece18s/18
  # DELETE /piece18s/18.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece18 = Piece18.find(params[:id])
    title = @piece18.name

    if @piece18.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece18s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece18
      @piece18 = Piece18.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece18_params
      params.require(:piece18).permit(:name, :user_id)
    end
end
