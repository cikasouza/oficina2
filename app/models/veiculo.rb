class Veiculo < ActiveRecord::Base
  validates_presence_of :modelo, message: "O model deve ser preenchido"
  validates_presence_of :marca, message: "A marca deve ser preenchida"
  validates_presence_of :placa, message: "A placa deve ser preenchida"
  belongs_to :cliente
  has_many :ordem_servicos
end
