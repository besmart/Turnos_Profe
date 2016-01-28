class AtendidosController < ApplicationController
  def index
  	@atendidos = Atendido.all
  end

  def show
  	@atendidos = Atendido.find(params[:id])
  end
end
