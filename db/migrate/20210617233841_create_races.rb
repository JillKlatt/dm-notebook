class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.string :name
      t.string :trait
      t.string :jills_opinion

      t.timestamps
    end
  end
end
