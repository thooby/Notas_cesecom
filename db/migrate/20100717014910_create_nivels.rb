class CreateNivels < ActiveRecord::Migration
  def self.up
    create_table :nivels do |t|
      t.string :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :nivels
  end
end
