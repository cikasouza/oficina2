class OrdemServicosController < ApplicationController
  before_filter :set_veiculo, only: [:create, :show, :edit, :update, :destroy]
  before_action :set_ordem_servico, only: [:show, :edit, :update, :destroy]
 
  # GET /ordem_servicos
  # GET /ordem_servicos.json
  def index
    @ordem_servicos = OrdemServico.all
  end

  # GET /ordem_servicos/1
  # GET /ordem_servicos/1.json
  def show
  end

  # GET /ordem_servicos/new
  def new
    @ordem_servico = OrdemServico.new
  end
  def new
      @ordem_servico = OrdemServico.new(veiculo_id: permitted_params[:veiculo_id])
      @veiculo = Veiculo.find(permitted_params[:veiculo_id])
   end
  # GET /ordem_servicos/1/edit
  def edit
  end

  # POST /ordem_servicos
  # POST /ordem_servicos.json
  def create
    @ordem_servico = @veiculo.ordem_servicos.build(permitted_params[:ordem_servico]) 
    if @ordem_servico.save
        redirect_to veiculo_ordem_servico_path(@veiculo, @ordem_servico), notice: 'Ordem de serviço criada com sucesso.' 
      else
        render :new 
     end
  end

  # PATCH/PUT /ordem_servicos/1
  # PATCH/PUT /ordem_servicos/1.json
  def update
      if @ordem_servico.update(permitted_params[:ordem_servico])
        redirect_to veiculo_ordem_servico_path(@veiculo, @ordem_servico), notice: 'Ordem de serviço alterada com sucesso.'
      else
        render :edit
      end
  end

  # DELETE /ordem_servicos/1
  # DELETE /ordem_servicos/1.json
  def destroy
    @ordem_servico.destroy
    respond_to do |format|
      format.html { redirect_to ordem_servicos_url, notice: 'Ordem servico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem_servico
      @ordem_servico = OrdemServico.find(params[:id])
    end

    def set_veiculo
      @veiculo = Veiculo.find(params[:veiculo_id])
    end
    
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def permitted_params
      params.permit(:cliente_id, :veiculo_id, :id, :ordem_servico => [:numero_os, :orcamento, :pedido, :data_inicio, :data_conclusao, :descricao, :valor])
    end
end
