class CreateAdventures < ActiveRecord::Migration[6.1]
  def change
    create_table :adventures do |t|
      t.string "name"
      t.integer "character_id"
      t.integer "campaign_id"
      t.boolean "role"

      t.timestamps
    end
  end
end
