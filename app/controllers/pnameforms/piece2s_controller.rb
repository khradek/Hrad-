class Pnameforms::Piece2sController < ApplicationController
  before_action :set_piece2, only: [:show, :edit, :update, :destroy]

  # GET /piece2s
  # GET /piece2s.json
  def index
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece2s = @pnameform.piece2s
  end

  # GET /piece2s/2
  # GET /piece2s/2.json
  def show
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece2s = Piece2.all    
  end

  # GET /piece2s/new
  def new
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece2 = current_user.piece2s.build
  end

  # GET /piece2s/2/edit
  def edit
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece2.pnameform = @pnameform 
  end

  # POST /piece2s
  # POST /piece2s.json
  def create
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece2 = current_user.piece2s.build(piece2_params)
    @piece2.pnameform = @pnameform 

    respond_to do |format|
      if @piece2.save
        format.html { redirect_to pnameform_piece2s_path(@pnameform), notice: 'Piece2 was successfully created.' }
        format.json { render :show, status: :created, location: @piece2 }
      else
        format.html { render :new }
        format.json { render json: @piece2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece2s/2
  # PATCH/PUT /piece2s/2.json
  def update
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece2.pnameform = @pnameform 

    respond_to do |format|
      if @piece2.update(piece2_params)
        format.html { redirect_to pnameform_piece2s_path(@pnameform), notice: 'Piece2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece2 }
      else
        format.html { render :edit }
        format.json { render json: @piece2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece2s/2
  # DELETE /piece2s/2.json
  def destroy
    @pnameform = Pnameform.find(params[:pnameform_id]) 
    @piece2 = Piece2.find(params[:id])
    title = @piece2.name

    if @piece2.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to pnameform_piece2s_path(@pnameform)
    else
      flash[:error] = "There was an error deleting."
      render :show 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece2
      @piece2 = Piece2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece2_params
      params.require(:piece2).permit(:name, :user_id)
    end
end
