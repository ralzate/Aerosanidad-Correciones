class CreateDiagnosticos < ActiveRecord::Migration
  def change
    create_table :diagnosticos do |t|
      t.string :familia
      t.string :codigo
      t.string :simbolo
      t.text :descripcion
      t.string :codigo
      t.references :historia_clinica, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
