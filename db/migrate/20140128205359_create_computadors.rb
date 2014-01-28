class CreateComputadors < ActiveRecord::Migration
  def change
    create_table :computadors do |t|
      t.string :serial
      t.string :marca
      t.string :modelo
      t.string :cor
      t.string :placa

      t.timestamps
    end
  end
end
