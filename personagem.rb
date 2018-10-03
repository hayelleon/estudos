require 'pry'

class Personagem
	attr_accessor :nome, :energia, :ataque, :status
	
	def estatisticas
		estatisticas = {forca: 20, vigor: 15, inteligencia: 17, destreza: 14}		#Criar Aleatório
	end

	def esta_vivo?
		true if self.energia > 0
	end	
end