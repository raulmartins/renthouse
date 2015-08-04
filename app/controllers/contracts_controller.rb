class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.all
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show

  end

  # GET /contracts/new
  def new
    @users = User.all
    authorize @users
    @contract = Contract.new
    @contract.build_house
    @contract.build_lodger
  end

  # GET /contracts/1/edit
  def edit
    @users = User.all
    authorize @users
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @users = User.all
    authorize @users
    @contract = Contract.new(contract_params)

    respond_to do |format|
      if @contract.save
        format.html { redirect_to @contract, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    @users = User.all
    authorize @users
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, notice: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @users = User.all
    authorize @users
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to contracts_url, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_params
      params.require(:contract).permit(:monthlyPayment, :bail, :startDate, :finalDate, :house_id, :lodger_id, :obs, :house_attributes => [:typehouse, :compartment, :obs, :status], :lodger_attributes => [:name, :phone, :sex, :cpf, :rg, :maritalstatus, :occupation])
    end
end
