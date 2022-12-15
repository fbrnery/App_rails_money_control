class CreateFaturamentos < ActiveRecord::Migration[6.1]
  def change
    create_table :faturamentos do |t|
      t.string :nome
      t.string :descricao
      t.float :valor

      t.timestamps
    end
  end
end
