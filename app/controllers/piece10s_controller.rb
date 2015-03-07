class Piece10sController < ApplicationController
  before_action :set_piece10, only: [:show, :edit, :update, :destroy]

  # GET /piece10s
  # GET /piece10s.json
  def index
    @piece10s = Piece10.all
  end

  # GET /piece10s/1
  # GET /piece10s/1.json
  def show
  end

  # GET /piece10s/new
  def new
    @piece10 = Piece10.new
  end

  # GET /piece10s/1/edit
  def edit
  end

  # POST /piece10s
  # POST /piece10s.json
  def create
    @piece10 = Piece10.new(piece10_params)

    respond_to do |format|
      if @piece10.save
        format.html { redirect_to @piece10, notice: 'Piece10 was successfully created.' }
        format.json { render :show, status: :created, location: @piece10 }
      else
        format.html { render :new }
        format.json { render json: @piece10.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece10s/1
  # PATCH/PUT /piece10s/1.json
  def update
    respond_to do |format|
      if @piece10.update(piece10_params)
        format.html { redirect_to @piece10, notice: 'Piece10 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece10 }
      else
        format.html { render :edit }
        format.json { render json: @piece10.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece10s/1
  # DELETE /piece10s/1.json
  def destroy
    @piece10.destroy
    respond_to do |format|
      format.html { redirect_to piece10s_url, notice: 'Piece10 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece10
      @piece10 = Piece10.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece10_params
      params.require(:piece10).permit(:name, :user_id)
    end
end
