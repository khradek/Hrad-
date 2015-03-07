class Piece6sController < ApplicationController
  before_action :set_piece6, only: [:show, :edit, :update, :destroy]

  # GET /piece6s
  # GET /piece6s.json
  def index
    @piece6s = Piece6.all
  end

  # GET /piece6s/1
  # GET /piece6s/1.json
  def show
  end

  # GET /piece6s/new
  def new
    @piece6 = Piece6.new
  end

  # GET /piece6s/1/edit
  def edit
  end

  # POST /piece6s
  # POST /piece6s.json
  def create
    @piece6 = Piece6.new(piece6_params)

    respond_to do |format|
      if @piece6.save
        format.html { redirect_to @piece6, notice: 'Piece6 was successfully created.' }
        format.json { render :show, status: :created, location: @piece6 }
      else
        format.html { render :new }
        format.json { render json: @piece6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece6s/1
  # PATCH/PUT /piece6s/1.json
  def update
    respond_to do |format|
      if @piece6.update(piece6_params)
        format.html { redirect_to @piece6, notice: 'Piece6 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece6 }
      else
        format.html { render :edit }
        format.json { render json: @piece6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece6s/1
  # DELETE /piece6s/1.json
  def destroy
    @piece6.destroy
    respond_to do |format|
      format.html { redirect_to piece6s_url, notice: 'Piece6 was successfully destroyed.' }
      format.json { head :no_content }
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
