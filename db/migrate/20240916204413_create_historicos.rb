class CreateHistoricos < ActiveRecord::Migration[7.2]
  def change
    create_table :historicos do |t|
      t.date :data_recebe
      t.string :descricao
      t.references :tarefa, foreign_key: true
      t.references :equipamento, foreign_key: true

      t.timestamps
    end
  end
end
