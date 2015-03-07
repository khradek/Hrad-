class Piece2sController < ApplicationController
  before_action :set_piece2, only: [:show, :edit, :update, :destroy]

  # GET /piece2s
  # GET /piece2s.json
  def index
    @piece2s = Piece2.all
  end

  # GET /piece2s/1
  # GET /piece2s/1.json
  def show
  end

  # GET /piece2s/new
  def new
    @piece2 = Piece2.new
  end

  # GET /piece2s/1/edit
  def edit
  end

  # POST /piece2s
  # POST /piece2s.json
  def create
    @piece2 = Piece2.new(piece2_params)

    respond_to do |format|
      if @piece2.save
        format.html { redirect_to @piece2, notice: 'Piece2 was successfully created.' }
        format.json { render :show, status: :created, location: @piece2 }
      else
        format.html { render :new }
        format.json { render json: @piece2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece2s/1
  # PATCH/PUT /piece2s/1.json
  def update
    respond_to do |format|
      if @piece2.update(piece2_params)
        format.html { redirect_to @piece2, notice: 'Piece2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece2 }
      else
        format.html { render :edit }
        format.json { render json: @piece2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece2s/1
  # DELETE /piece2s/1.json
  def destroy
    @piece2.destroy
    respond_to do |format|
      format.html { redirect_to piece2s_url, notice: 'Piece2 was successfully destroyed.' }
      format.json { head :no_content }
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
