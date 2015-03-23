class Pnameforms::Piece5sController < ApplicationController
  before_action :set_piece5, only: [:show, :edit, :update, :destroy]

  # GET /piece5s
  # GET /piece5s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece5s = @pnameform.piece5s
  end

  # GET /piece5s/5
  # GET /piece5s/5.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece5s = Piece5.all    
  end

  # GET /piece5s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece5 = current_user.piece5s.build
  end

  # GET /piece5s/5/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece5.pnameform = @pnameform 
  end

  # POST /piece5s
  # POST /piece5s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece5 = current_user.piece5s.build(piece5_params)
    @piece5.pnameform = @pnameform 

    respond_to do |format|
      if @piece5.save
        format.html { redirect_to pnameform_piece5s_path(@pnameform), notice: 'Piece5 was successfully created.' }
        format.json { render :show, status: :created, location: @piece5 }
      else
        format.html { render :new }
        format.json { render json: @piece5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece5s/5
  # PATCH/PUT /piece5s/5.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece5.pnameform = @pnameform 

    respond_to do |format|
      if @piece5.update(piece5_params)
        format.html { redirect_to pnameform_piece5s_path(@pnameform), notice: 'Piece5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece5 }
      else
        format.html { render :edit }
        format.json { render json: @piece5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece5s/5
  # DELETE /piece5s/5.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece5 = Piece5.find(params[:id])
    title = @piece5.name

    if @piece5.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece5s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece5
      @piece5 = Piece5.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece5_params
      params.require(:piece5).permit(:name, :user_id)
    end
end
