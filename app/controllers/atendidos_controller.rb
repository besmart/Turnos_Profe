class AtendidosController < ApplicationController
  before_action :authenticate_usuario!	
  def index
  	@atendidos = Atendido.all
    respond_to do |format|
      format.html
      format.pdf do 
        render pdf: 'Listado de Atenciones'
      end   
    end
  end

  def show
  	@atendidos = Atendido.find(params[:id])
  end
end
