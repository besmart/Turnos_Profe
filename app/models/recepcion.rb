class Recepcion < Turno

	before_save :set_time

	validates :nombres, presence: true
	validates :asunto, presence: true, length: {maximum: 50, minimum: 5}

	def set_time 
		self.hora_ingreso = Time.now
	end

	def to_atencion
		atencion = self.becomes!(Atencion)
		atencion.hora_atencion = Time.now
		atencion.save(validate: false) # atencion.save! devuelve el error, sin el ! devuelve true o false
	end
end