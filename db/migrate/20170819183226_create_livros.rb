class CreateLivros < ActiveRecord::Migration[5.0]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :autor
      t.integer :edicao
      t.string :condicao
      t.text :descricao
      t.string :imagem

      t.timestamps
    end
  end
end
