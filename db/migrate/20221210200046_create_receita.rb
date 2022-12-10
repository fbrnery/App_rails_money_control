class CreateReceita < ActiveRecord::Migration[6.1]
  def change
    create_table :receita do |t|
      t.string :nome
      t.string :descricao
      t.string :valor

      t.timestamps
    end
  end
end
