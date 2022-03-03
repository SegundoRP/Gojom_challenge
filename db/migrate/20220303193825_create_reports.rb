class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :asunto
      t.text :descripcion
      t.date :fecha_del_incidente

      t.timestamps
    end
  end
end
