class CreateCharacterWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :character_weapons do |t|
      t.string :notes

      t.timestamps
    end
  end
end
