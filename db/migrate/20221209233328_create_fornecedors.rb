class CreateFornecedors < ActiveRecord::Migration[6.1]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :telefone
      t.string :email
      t.string :site

      t.timestamps
    end
  end
end
