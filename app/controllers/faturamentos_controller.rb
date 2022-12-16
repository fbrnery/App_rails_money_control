class FaturamentosController < ApplicationController
  before_action :set_faturamento, only: %i[ show edit update destroy ]

  # GET /faturamentos or /faturamentos.json
  def index
    @faturamentos = Faturamento.all
    @faturamentos = @faturamentos.where("lower(nome) ilike '%#{params[:nome]}%' ")
  end

  # GET /faturamentos/1 or /faturamentos/1.json
  def show
  end

  # GET /faturamentos/new
  def new
    @faturamento = Faturamento.new
  end

  # GET /faturamentos/1/edit
  def edit
  end

  # POST /faturamentos or /faturamentos.json
  def create
    @faturamento = Faturamento.new(faturamento_params)

    respond_to do |format|
      if @faturamento.save
        format.html { redirect_to faturamento_url(@faturamento), notice: "Faturamento was successfully created." }
        format.json { render :show, status: :created, location: @faturamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @faturamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faturamentos/1 or /faturamentos/1.json
  def update
    respond_to do |format|
      if @faturamento.update(faturamento_params)
        format.html { redirect_to faturamento_url(@faturamento), notice: "Faturamento was successfully updated." }
        format.json { render :show, status: :ok, location: @faturamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @faturamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faturamentos/1 or /faturamentos/1.json
  def destroy
    @faturamento.destroy

    respond_to do |format|
      format.html { redirect_to faturamentos_url, notice: "Faturamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faturamento
      @faturamento = Faturamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def faturamento_params
      params.require(:faturamento).permit(:nome, :descricao, :valor)
    end
end
