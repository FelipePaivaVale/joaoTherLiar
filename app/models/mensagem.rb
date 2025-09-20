class Mensagem < ApplicationRecord
    validates :conteudo, presence: true
    validates :titulo, presence: true
end
