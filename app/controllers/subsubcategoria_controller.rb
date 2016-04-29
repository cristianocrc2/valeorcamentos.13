class SubsubcategoriaController < ApplicationController
  before_action :set_subsubcategorium, only: [:show, :edit, :update, :destroy]

  # GET /subsubcategoria
  # GET /subsubcategoria.json
  def index
    @subsubcategoria = Subsubcategorium.all
  end

  # GET /subsubcategoria/1
  # GET /subsubcategoria/1.json
  def show
  end

  # GET /subsubcategoria/new
  def new
    @subsubcategorium = Subsubcategorium.new
  end

  # GET /subsubcategoria/1/edit
  def edit
  end

  # POST /subsubcategoria
  # POST /subsubcategoria.json
  def create
    @subsubcategorium = Subsubcategorium.new(subsubcategorium_params)

    respond_to do |format|
      if @subsubcategorium.save
        format.html { redirect_to @subsubcategorium, notice: 'Subsubcategorium was successfully created.' }
        format.json { render :show, status: :created, location: @subsubcategorium }
      else
        format.html { render :new }
        format.json { render json: @subsubcategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subsubcategoria/1
  # PATCH/PUT /subsubcategoria/1.json
  def update
    respond_to do |format|
      if @subsubcategorium.update(subsubcategorium_params)
        format.html { redirect_to @subsubcategorium, notice: 'Subsubcategorium was successfully updated.' }
        format.json { render :show, status: :ok, location: @subsubcategorium }
      else
        format.html { render :edit }
        format.json { render json: @subsubcategorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsubcategoria/1
  # DELETE /subsubcategoria/1.json
  def destroy
    @subsubcategorium.destroy
    respond_to do |format|
      format.html { redirect_to subsubcategoria_url, notice: 'Subsubcategorium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subsubcategorium
      @subsubcategorium = Subsubcategorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subsubcategorium_params
      params.require(:subsubcategorium).permit(:frequencia, :ativo, :subcategoria_id)
    end
end
