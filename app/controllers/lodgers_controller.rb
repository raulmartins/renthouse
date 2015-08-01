class LodgersController < ApplicationController
  before_action :set_lodger, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /lodgers
  # GET /lodgers.json
  def index
    if (params[:search])
    #@lodgers = Lodger.search(params[:search])
    @lodgers = Lodger.search(params[:search])
    else
      @lodgers = Lodger.all
    end
  end
 
  # GET /lodgers/1
  # GET /lodgers/1.json
  def show
  end

  # GET /lodgers/new
  def new
    @lodger = Lodger.new
    @lodger.build_address
    
  end

  # GET /lodgers/1/edit
  def edit

  end

  # POST /lodgers
  # POST /lodgers.json
  def create
    @lodger = Lodger.new(lodger_params)

    respond_to do |format|
      if @lodger.save
        format.html { redirect_to @lodger, notice: 'Lodger was successfully created.' }
        format.json { render :show, status: :created, location: @lodger }
      else
        format.html { render :new }
        format.json { render json: @lodger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lodgers/1
  # PATCH/PUT /lodgers/1.json
  def update
    respond_to do |format|
      if @lodger.update(lodger_params)
        format.html { redirect_to @lodger, notice: 'Lodger was successfully updated.' }
        format.json { render :show, status: :ok, location: @lodger }
      else
        format.html { render :edit }
        format.json { render json: @lodger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lodgers/1
  # DELETE /lodgers/1.json
  def destroy
    @lodger.destroy
    respond_to do |format|
      format.html { redirect_to lodgers_url, notice: 'Lodger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lodger
      @lodger = Lodger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lodger_params
      params.require(:lodger).permit(:name, :phone, :sex, :cpf, :rg, :maritalstatus, :occupation, :address_attributes => [:street, :zip, :number])
    end
end
