class CreateTarefas < ActiveRecord::Migration[7.2]
  def change
    create_table :tarefas do |t|
      t.string :descricao
      t.date :data_recebe
      t.float :valor
      t.date :data_entrega
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
