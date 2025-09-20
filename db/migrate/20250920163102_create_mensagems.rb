class CreateMensagems < ActiveRecord::Migration[8.0]
  def change
    create_table :mensagems do |t|
      t.string :titulo
      t.string :conteudo

      t.timestamps
    end
  end
end
