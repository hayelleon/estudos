require 'pry'

class Estatisticas
	attr_accessor :forca, :vigor, :inteligencia, :destreza, :att_rating, :defesa

	def initialize
		self.forca = rand(1..20)
		self.vigor = rand(1..20)
		self.inteligencia = rand(1..20)
		self.destreza = rand(1..20)
		self.att_rating = rand (1..20)
		self.defesa = rand(1..20)
	end

	def to_s
		"Força: #{self.forca}\nVigor: #{vigor}\n"+
		"Inteligência: #{inteligencia}\nDestreza: #{destreza}\n"+
		"Attack Rating: #{att_rating}\nDefesa: #{defesa}\n"
	end
end


estatisticas = Estatisticas.new

	@estatisticas = {
						forca: estatisticas.forca,
						vigor: estatisticas.vigor,
						inteligencia: estatisticas.inteligencia,
						destreza: estatisticas.destreza,
						att_rating: estatisticas.att_rating,
						defesa: estatisticas.defesa
					}


puts estatisticas

#binding.pry