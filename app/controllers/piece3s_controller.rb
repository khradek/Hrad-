class Piece3sController < ApplicationController
  before_action :set_piece3, only: [:show, :edit, :update, :destroy]

  # GET /piece3s
  # GET /piece3s.json
  def index
    @piece3s = Piece3.all
  end

  # GET /piece3s/1
  # GET /piece3s/1.json
  def show
  end

  # GET /piece3s/new
  def new
    @piece3 = Piece3.new
  end

  # GET /piece3s/1/edit
  def edit
  end

  # POST /piece3s
  # POST /piece3s.json
  def create
    @piece3 = Piece3.new(piece3_params)

    respond_to do |format|
      if @piece3.save
        format.html { redirect_to @piece3, notice: 'Piece3 was successfully created.' }
        format.json { render :show, status: :created, location: @piece3 }
      else
        format.html { render :new }
        format.json { render json: @piece3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece3s/1
  # PATCH/PUT /piece3s/1.json
  def update
    respond_to do |format|
      if @piece3.update(piece3_params)
        format.html { redirect_to @piece3, notice: 'Piece3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece3 }
      else
        format.html { render :edit }
        format.json { render json: @piece3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece3s/1
  # DELETE /piece3s/1.json
  def destroy
    @piece3.destroy
    respond_to do |format|
      format.html { redirect_to piece3s_url, notice: 'Piece3 was successfully destroyed.' }
      format.json { head :no_content }
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
