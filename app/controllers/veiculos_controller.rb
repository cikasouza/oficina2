class VeiculosController < ApplicationController
  before_filter :set_cliente, only: [:show,:edit, :update, :create]
  before_action :set_veiculo, only: [:show, :edit, :update, :destroy]

  # GET /veiculos
  # GET /veiculos.json
  def index
    @veiculos = Veiculo.all
  end

  # GET /veiculos/1
  # GET /veiculos/1.json
  def show
  end

  # GET /veiculos/new
  
  def new
      @veiculo = Veiculo.new(cliente_id: permitted_params[:cliente_id])
      @cliente = Cliente.find(permitted_params[:cliente_id])
    end

  # GET /veiculos/1/edit
  def edit
  end

  # POST /veiculos
  # POST /veiculos.json
  def create
    @veiculo = @cliente.veiculos.build(permitted_params[:veiculo])    
      if @veiculo.save
        redirect_to cliente_veiculo_path(@cliente, @veiculo) , notice: 'Veículo criado com sucesso.'         
      else
        render :new 
      end   
  end

  # PATCH/PUT /veiculos/1
  # PATCH/PUT /veiculos/1.json
  def update
    if @veiculo.update_attributes(permitted_params[:veiculo])
	    redirect_to cliente_veiculo_path(@cliente, @veiculo) , notice: 'Veículo atualizado com sucesso.'
	  else
	    render :edit
	  end
   end

  # DELETE /veiculos/1
  # DELETE /veiculos/1.json
  def destroy
    @veiculo.destroy
    respond_to do |format|
      format.html { redirect_to veiculos_url, notice: 'Veiculo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:cliente_id])
    end
    def set_veiculo
      @veiculo = Veiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def permitted_params
      params.permit(:cliente_id, :id, :veiculo => [:placa, :marca, :modelo])
    end
end
