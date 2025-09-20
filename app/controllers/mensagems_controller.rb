class MensagemsController < ApplicationController
  before_action :set_mensagem, only: [:show, :edit, :update, :destroy]

  def index
    @mensagens = Mensagem.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @mensagem = Mensagem.new
  end

  def create
    @mensagem = Mensagem.new(mensagem_params)

    if @mensagem.save
      redirect_to root_path, notice: 'Mensagem criada com sucesso!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @mensagem.update(mensagem_params)
      redirect_to @mensagem, notice: 'Mensagem atualizada com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @mensagem.destroy
    redirect_to mensagens_url, notice: 'Mensagem excluída com sucesso!'
  end

  private

  def set_mensagem
    @mensagem = Mensagem.find(params[:id])
  end

  def mensagem_params
    params.require(:mensagem).permit(:titulo, :conteudo)
  end
end