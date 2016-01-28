class AtendidosController < ApplicationController
  before_action :authenticate_usuario!	
  def index
  	@atendidos = Atendido.all
  end

  def show
  	@atendidos = Atendido.find(params[:id])
  end
end
