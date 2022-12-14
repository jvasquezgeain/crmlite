class RolsController < ApplicationController
  before_action :set_rol, only: %i[ show edit update destroy ]

  # GET /rols or /rols.json
  def index
    @rols = Rol.all
  end

  # GET /rols/1 or /rols/1.json
  def show
  end

  # GET /rols/new
  def new
    @rol = Rol.new
  end

  # GET /rols/1/edit
  def edit
  end

  # POST /rols or /rols.json
  def create
    @rol = Rol.new(rol_params)

    respond_to do |format|
      if @rol.save
        format.html { redirect_to rol_url(@rol), notice: "Rol was successfully created." }
        format.json { render :show, status: :created, location: @rol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rols/1 or /rols/1.json
  def update
    respond_to do |format|
      if @rol.update(rol_params)
        format.html { redirect_to rol_url(@rol), notice: "Rol was successfully updated." }
        format.json { render :show, status: :ok, location: @rol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rols/1 or /rols/1.json
  def destroy
    @rol.destroy

    respond_to do |format|
      format.html { redirect_to rols_url, notice: "Rol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rol
      @rol = Rol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rol_params
      params.require(:rol).permit(:name_of, :stated_at)
    end
end
