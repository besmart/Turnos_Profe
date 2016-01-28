class Usuario < ActiveRecord::Base
	enum estado: [:inactivo, :activo]
	enum rol: [:admin, :operativo, :gerente]

	has_secure_password

	belongs_to :agencia
end
