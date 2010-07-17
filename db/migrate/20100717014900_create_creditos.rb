class CreateCreditos < ActiveRecord::Migration
  def self.up
    create_table :creditos do |t|
      t.integer :estudiante_id
      t.integer :curso_id

      t.timestamps
    end
  end

  def self.down
    drop_table :creditos
  end
end
