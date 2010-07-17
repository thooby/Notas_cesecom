class CreateNotas < ActiveRecord::Migration
  def self.up
    create_table :notas do |t|
      t.integer :credito_id
      t.integer :tipo_nota_id
      t.date :fecha_nota
      t.integer :calificacion

      t.timestamps
    end
  end

  def self.down
    drop_table :notas
  end
end
