class Piece4sController < ApplicationController
  before_action :set_piece4, only: [:show, :edit, :update, :destroy]

  # GET /piece4s
  # GET /piece4s.json
  def index
    @piece4s = Piece4.all
  end

  # GET /piece4s/1
  # GET /piece4s/1.json
  def show
  end

  # GET /piece4s/new
  def new
    @piece4 = Piece4.new
  end

  # GET /piece4s/1/edit
  def edit
  end

  # POST /piece4s
  # POST /piece4s.json
  def create
    @piece4 = Piece4.new(piece4_params)

    respond_to do |format|
      if @piece4.save
        format.html { redirect_to @piece4, notice: 'Piece4 was successfully created.' }
        format.json { render :show, status: :created, location: @piece4 }
      else
        format.html { render :new }
        format.json { render json: @piece4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece4s/1
  # PATCH/PUT /piece4s/1.json
  def update
    respond_to do |format|
      if @piece4.update(piece4_params)
        format.html { redirect_to @piece4, notice: 'Piece4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece4 }
      else
        format.html { render :edit }
        format.json { render json: @piece4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece4s/1
  # DELETE /piece4s/1.json
  def destroy
    @piece4.destroy
    respond_to do |format|
      format.html { redirect_to piece4s_url, notice: 'Piece4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece4
      @piece4 = Piece4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece4_params
      params.require(:piece4).permit(:name, :user_id)
    end
end
