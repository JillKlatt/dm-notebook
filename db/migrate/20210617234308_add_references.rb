class AddReferences < ActiveRecord::Migration[6.1]
  def change
    add_reference :adventures, :character, foreign_key: true
    add_reference :adventures, :campaign, foreign_key: true
    add_reference :campaigns, :user, foreign_key: true
    add_reference :character_weapons, :character, foreign_key: true
    add_reference :character_weapons, :weapon, foreign_key: true
  end
end
