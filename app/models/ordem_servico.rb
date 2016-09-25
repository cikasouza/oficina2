class OrdemServico < ActiveRecord::Base
 validates_presence_of :valor, message: "O valor deve ser preenchido"
validates_numericality_of :valor, message: "Deve ser numérico"
  belongs_to :cliente
  belongs_to :veiculo
end
