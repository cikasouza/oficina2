class Cliente < ActiveRecord::Base
  validates_presence_of :nome, message: "O Nome deve ser preenchido"
  validates_presence_of :cpf, message: "O CPF deve ser preenchido"
  validates_presence_of :rg, message: "O RG deve ser preenchido"
  validates_presence_of :endereco, message: "O Endereço deve ser preenchido"
  validates_presence_of :telefone, message: "O Telefone deve ser preenchido"
  validates_uniqueness_of :nome, message: "Cliente já cadastrado"
  validates_size_of :nome, :minimum => 3, :maximun=>50, message: "Muito pequeno ou muito grande, mínimo de 3 e máximo de 50 caracteres"
  

  has_many :veiculos
  has_many :ordem_servicos
  mount_uploader :foto, FotoClienteUploader
end
