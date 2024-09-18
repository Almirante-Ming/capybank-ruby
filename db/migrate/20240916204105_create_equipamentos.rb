class CreateEquipamentos < ActiveRecord::Migration[7.2]
  def change
    create_table :equipamentos do |t|
      t.string :nome
      t.string :modelo
      t.string :numero_serie
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
