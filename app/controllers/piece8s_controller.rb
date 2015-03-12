class Piece8sController < ApplicationController
  before_action :set_piece8, only: [:show, :edit, :update, :destroy]

  # GET /piece8s
  # GET /piece8s.json
  def index
    @piece8s = Piece8.all
  end

  # GET /piece8s/1
  # GET /piece8s/1.json
  def show
  end

  # GET /piece8s/new
  def new
    @piece8 = current_user.piece8s.build 
  end

  # GET /piece8s/1/edit
  def edit
  end

  # POST /piece8s
  # POST /piece8s.json
  def create
    @piece8 = current_user.piece8s.build(piece8_params)

    respond_to do |format|
      if @piece8.save
        format.html { redirect_to @piece8, notice: 'Piece8 was successfully created.' }
        format.json { render :show, status: :created, location: @piece8 }
      else
        format.html { render :new }
        format.json { render json: @piece8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece8s/1
  # PATCH/PUT /piece8s/1.json
  def update
    respond_to do |format|
      if @piece8.update(piece8_params)
        format.html { redirect_to @piece8, notice: 'Piece8 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece8 }
      else
        format.html { render :edit }
        format.json { render json: @piece8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece8s/1
  # DELETE /piece8s/1.json
  def destroy
    @piece8.destroy
    respond_to do |format|
      format.html { redirect_to piece8s_url, notice: 'Piece8 was successfully destroyed.' }
      format.json { head :no_content }
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
