class CreateTestes < ActiveRecord::Migration
  def change
    create_table :testes do |t|
      t.string :nome
      t.string :pagina
      t.string :erro
      t.string :defeito

      t.timestamps
    end
  end
end
