class Pnameforms::Piece6sController < ApplicationController
  before_action :set_piece6, only: [:show, :edit, :update, :destroy]

  # GET /piece6s
  # GET /piece6s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece6s = @pnameform.piece6s
  end

  # GET /piece6s/6
  # GET /piece6s/6.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece6s = Piece6.all    
  end

  # GET /piece6s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece6 = current_user.piece6s.build 
  end

  # GET /piece6s/6/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece6.pnameform = @pnameform 
  end

  # POST /piece6s
  # POST /piece6s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece6 = current_user.piece6s.build(piece6_params)
    @piece6.pnameform = @pnameform 

    respond_to do |format|
      if @piece6.save
        format.html { redirect_to pnameform_piece6s_path(@pnameform), notice: 'Piece6 was successfully created.' }
        format.json { render :show, status: :created, location: @piece6 }
      else
        format.html { render :new }
        format.json { render json: @piece6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece6s/6
  # PATCH/PUT /piece6s/6.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece6.pnameform = @pnameform 

    respond_to do |format|
      if @piece6.update(piece6_params)
        format.html { redirect_to pnameform_piece6s_path(@pnameform), notice: 'Piece6 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece6 }
      else
        format.html { render :edit }
        format.json { render json: @piece6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece6s/6
  # DELETE /piece6s/6.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece6 = Piece6.find(params[:id])
    title = @piece6.name

    if @piece6.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece6s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece6
      @piece6 = Piece6.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece6_params
      params.require(:piece6).permit(:name, :user_id)
    end
end
