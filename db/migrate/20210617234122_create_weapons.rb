class CreateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :weapons do |t|
      t.string :name
      t.text :description
      t.string :damage

      t.timestamps
    end
  end
end
