class CreateCursos < ActiveRecord::Migration
  def self.up
    create_table :cursos do |t|
      t.integer :materia_id
      t.date :fecha_inicio
      t.date :fecha_finalizacion
      t.integer :nivel_id
      t.string :horario
      t.integer :docente_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cursos
  end
end
