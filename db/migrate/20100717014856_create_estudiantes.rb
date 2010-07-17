class CreateEstudiantes < ActiveRecord::Migration
  def self.up
    create_table :estudiantes do |t|
      t.string :nombre1
      t.string :nombre2
      t.string :apellido1
      t.string :apellido2
      t.string :email
      t.integer :sexo_id
      t.string :cedula
      t.date :fecha_nac
      t.string :lugar_nac

      t.timestamps
    end
  end

  def self.down
    drop_table :estudiantes
  end
end
