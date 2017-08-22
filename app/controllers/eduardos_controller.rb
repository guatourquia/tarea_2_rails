class EduardosController < ApplicationController
  before_action :set_eduardo, only: [:show, :edit, :update, :destroy]

  # GET /eduardos
  # GET /eduardos.json
  def index
    @eduardos = Eduardo.all
  end

  # GET /eduardos/1
  # GET /eduardos/1.json
  def show
  end

  # GET /eduardos/new
  def new
    @eduardo = Eduardo.new
  end

  # GET /eduardos/1/edit
  def edit
  end

  # POST /eduardos
  # POST /eduardos.json
  def create
    @eduardo = Eduardo.new(eduardo_params)

    respond_to do |format|
      if @eduardo.save
        format.html { redirect_to @eduardo, notice: 'Eduardo was successfully created.' }
        format.json { render :show, status: :created, location: @eduardo }
      else
        format.html { render :new }
        format.json { render json: @eduardo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eduardos/1
  # PATCH/PUT /eduardos/1.json
  def update
    respond_to do |format|
      if @eduardo.update(eduardo_params)
        format.html { redirect_to @eduardo, notice: 'Eduardo was successfully updated.' }
        format.json { render :show, status: :ok, location: @eduardo }
      else
        format.html { render :edit }
        format.json { render json: @eduardo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eduardos/1
  # DELETE /eduardos/1.json
  def destroy
    @eduardo.destroy
    respond_to do |format|
      format.html { redirect_to eduardos_url, notice: 'Eduardo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eduardo
      @eduardo = Eduardo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eduardo_params
      params.require(:eduardo).permit(:nombre, :descripcion)
    end
end
