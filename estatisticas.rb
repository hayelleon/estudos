require 'pry'

class Estatisticas
	attr_accessor 	:forca, :vigor, :inteligencia, :destreza, :att_rating, :defesa,
					:damage, :toughness, :recovery
	def initialize
		self.forca = rand(1..20)
		self.vigor = rand(1..20)
		self.inteligencia = rand(1..20)
		self.destreza = rand(1..20)
		self.att_rating = rand (1..20)
		self.defesa = rand(1..20)
		self.damage = rand(1..20)
		self.toughness = rand(1..20)
		self.recovery = rand(1..20)
	end

	def to_s
		"Força: #{self.forca}\nVigor: #{vigor}\n"+
		"Inteligência: #{inteligencia}\nDestreza: #{destreza}\n"+
		"\n"+
		"Attack Rating: #{att_rating}\nDefesa: #{defesa}\n"+
		"Damage: #{damage}\nToughness: #{toughness}\nRecovery: #{recovery}"

	end
end

@stats = []



estatisticas = Estatisticas.new

@stats_atributos = {#dps = damage per second / dph = damage per hit }
					forca: estatisticas.forca,
					destreza: estatisticas.destreza,
					inteligencia: estatisticas.inteligencia,
					vigor: estatisticas.vigor,
					}

@stats_mods_pri_comb = {	
						att_rating: estatisticas.att_rating,
						defesa: estatisticas.defesa,
						damage: estatisticas.damage,# (dano arma * str/10 )
						toughness: estatisticas.toughness,
						recovey: estatisticas.recovery
 						}

# #@stats_mod_offensive = {
# 						damage_increased: damage_increased,#(%)
# 						attacks_per_second: attacks_per_second,
# 						attack_speed_increased: attack_speed_increased,#(%)
# 						critical_hit_chance: critical_hit_chance,#(%)
# 						critical_hit_damage: critical_hit_damage#(%)							
# 						}

@stats << @stats_atributos
@stats << @stats_mods_pri_comb

puts estatisticas

binding.pry 