class Turno < ActiveRecord::Base
	enum estado: [:ingreso, :atendido, :finalizado]

	feha_ingreso = Time.now
end
		